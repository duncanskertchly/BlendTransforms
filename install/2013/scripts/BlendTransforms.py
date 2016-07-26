import maya.cmds as cmds
import maya.OpenMayaUI as apiUI
from os import getenv

BT_UIInheritanceType = None
BT_MayaVersionNumber = int(cmds.about(v = True).split("-")[0].split(" ")[0])

if BT_MayaVersionNumber < 2014:
    from PyQt4 import QtCore, QtGui, Qt, uic
    from sip import wrapinstance
    BT_UIInheritanceType = type( QtGui.QMainWindow() )
else:
    from PySide import QtCore, QtGui, QtUiTools
    from shiboken import wrapInstance
    BT_UIInheritanceType = type( QtGui.QWidget() )

def BT_GetMayaWindow():
    ptr = apiUI.MQtUtil.mainWindow()
    if ptr is not None:
        if BT_MayaVersionNumber < 2014:
            return wrapinstance(long(ptr), QtCore.QObject)
        else:
            return wrapInstance(long(ptr), QtGui.QWidget)

def BT_SetUnits():
    if cmds.currentUnit(q = True, linear = True) != "cm":
        cmds.currentUnit(linear = "cm")
        return True
    return False

class BT_UIForm(BT_UIInheritanceType):
    def __init__( self, parent = BT_GetMayaWindow() ):
        super(BT_UIForm, self).__init__(parent)

        uicPath = None
        if BT_MayaVersionNumber < 2016:
            uicPath = getenv('HOME') +'/maya/' +str(BT_MayaVersionNumber) +'-x64/scripts/BlendTransforms.ui'
        else:
            uicPath = getenv('HOME') +'/maya/' +str(BT_MayaVersionNumber) +'/scripts/BlendTransforms.ui'

        self.ui = None
        if BT_MayaVersionNumber < 2014:
            self.ui = uic.loadUi(uicPath, self)
        else:
            loader = QtUiTools.QUiLoader()
            self.ui = loader.load(uicPath, self)

        self.ui.loadSelectedButton.clicked.connect(self.loadSelectedSet)
        self.ui.connectButton.clicked.connect(self.connectSetup)
        self.ui.disconnectButton.clicked.connect(self.disconnectSetup)
        self.ui.setToBaseButton.clicked.connect(self.setToBasePose)
        self.ui.setToSelectedButton.clicked.connect(self.setToPose)
        self.ui.addPoseButton.clicked.connect(self.addPose)
        self.ui.deletePoseButton.clicked.connect(self.deletePose)
        self.ui.updateSelectedButton.clicked.connect(self.updatePose)

        unitResult = BT_SetUnits()
        if unitResult:
            QtGui.QMessageBox.warning(self, "Blend Transforms", "Units set to centimetres.", "Okay")

        self.ui.show()

    def updatePose(self):
        uiSet = str(self.ui.setEdit.text())
        ind = self.ui.poseList.currentRow()
        currentItem = self.ui.poseList.currentItem().text()

        if BT_IsSetupConnected(uiSet):
            cmds.warning('Disconnect setup first!')
            return False

        result =    QtGui.QMessageBox.question(self, 'Update Pose', 'Really Update ' +str(currentItem) +' ?',
                    QtGui.QMessageBox.Yes | QtGui.QMessageBox.No)

        if result != QtGui.QMessageBox.Yes:
            return False

        if not uiSet:
            return False
        if ind < 0:
            return False
        BT_AddPose(set = uiSet, index = ind)
        return True

    def deletePose(self):
        uiSet = str(self.ui.setEdit.text())
        currentItem = self.ui.poseList.currentItem().text()
        if not uiSet:
            return False

        if BT_IsSetupConnected(uiSet):
            cmds.warning('Disconnect setup first!')
            return False

        result =    QtGui.QMessageBox.question(self, 'Delete Pose', 'Really Delete ' +str(currentItem) +' ?',
                    QtGui.QMessageBox.Yes | QtGui.QMessageBox.No)

        if result != QtGui.QMessageBox.Yes:
            return False

        poseIndex = self.ui.poseList.currentRow()
        BT_DeletePose(set = uiSet, poseIndex = poseIndex)
        poses = BT_GetPosesFromSet(uiSet)
        self.ui.poseList.clear()
        self.ui.poseList.addItems(poses)
        return True

    def setToBasePose(self):
        uiSet = str(self.ui.setEdit.text())
        if not uiSet:
            return False
        BT_SetPose(set = uiSet, index = None)
        return True

    def setToPose(self):
        uiSet = str(self.ui.setEdit.text())
        if not uiSet:
            return False
        ind = self.ui.poseList.currentRow()
        if ind < 0:
            return False
        BT_SetPose(set = uiSet, index = ind)
        return True

    def loadSelectedSet(self):
        selection = BT_GetSelectedSet()
        if not selection:
            return False

        if not cmds.attributeQuery('Blend_Node', ex = True, n = selection):
            cmds.warning('Blend_Node attribute not found! This set might not be connected to a BlendTransforms node yet.')
            return False
        
        self.ui.poseList.clear()
        self.ui.setEdit.setText(selection)

        poses = BT_GetPosesFromSet(selection)
        if not poses:
            return False

        self.ui.poseList.addItems(poses)
        return True

    def addPose(self):
        uiSet = str(self.ui.setEdit.text())
        if not uiSet:
            return False
        poseName = str(self.ui.poseEdit.text())
        if not poseName:
            return False
        res = BT_AddPose(set = uiSet, poseName = poseName)
        if not res:
            return False

        poses = BT_GetPosesFromSet(uiSet)
        self.ui.poseList.clear()
        self.ui.poseEdit.clear()
        self.ui.poseList.addItems(poses)
        return True

    def connectSetup(self):
        uiSet = str(self.ui.setEdit.text())

        if not uiSet:
            return False

        if not cmds.objExists(uiSet):
            return False

        BT_ConnectSetup(set = uiSet)
        return True

    def disconnectSetup(self):
        uiSet = str(self.ui.setEdit.text())
        
        if not uiSet:
            return False

        if not cmds.objExists(uiSet):
            return False

        BT_DisconnectSetup(set = uiSet)
        return True 

def BT_SetPose(set = None, index = None):
    if not set:
        return False

    if BT_IsSetupConnected(set = set):
        cmds.warning('Disconnect setup first!')
        return False

    if not cmds.attributeQuery('Blend_Node', ex = True, n = set):
        return False

    node = cmds.getAttr(set +'.Blend_Node')
    transforms = cmds.listConnections(set +'.dagSetMembers')
    if not transforms:
        return False

    unitResult = BT_SetUnits()
    if unitResult:
        QtGui.QMessageBox.warning(BT_GetMayaWindow(), "Blend Transforms", "Units set to centimetres.", "Okay")

    for i in range(0, len(transforms)):
        baseM = cmds.getAttr(node +'.transforms[' +str(i) +'].baseMatrix')
        baseS = cmds.getAttr(node +'.transforms[' +str(i) +'].baseScale')[0]
        baseRO = cmds.getAttr(node +'.transforms[' +str(i) +'].baseRotOffset')[0]

        poseM = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
        poseS = [0,0,0]

        if index is not None:
            numPoses = cmds.getAttr(node +'.transforms[0].poses', size = True)
            if not index < numPoses:
                return False 
            poseM = cmds.getAttr(node +'.transforms[' +str(i) +'].poses[' +str(index) +'].matrix')
            poseS = cmds.getAttr(node +'.transforms[' +str(i) +'].poses[' +str(index) +'].scale')[0]

        finalM = [x+y for x, y in zip(poseM, baseM)]
        finalS = [x+y for x, y in zip(poseS, baseS)]

        cmds.xform(transforms[i], m = finalM)
        cmds.setAttr(transforms[i] +'.scale', finalS[0], finalS[1], finalS[2], type = 'double3')
        #hack to fix joint orient stuff
        if cmds.objectType(transforms[i], isType = 'joint'):
            cmds.setAttr(transforms[i] +'.jointOrient', baseRO[0], baseRO[1], baseRO[2], type = 'double3')
            currentRot = cmds.getAttr(transforms[i] +'.rotate')[0]
            cmds.setAttr(transforms[i] +'.rotate', currentRot[0] - baseRO[0], currentRot[1] - baseRO[1], currentRot[2] - baseRO[2], type = 'double3')


    return True

def BT_UpdatePose(set = None, index = None):
    if not set or index is None:
        return False

def BT_IsSetupConnected(set = None):
    if not set or not cmds.objExists(set):
        return None

    #test the first transform in the set
    setItems = cmds.listConnections(set +'.dagSetMembers')
    if not setItems:
        return None
    
    connections = cmds.listConnections(setItems[0], source = True, type = 'BlendTransforms')
    if connections:
        return True

    return False


def BT_GetPosesFromSet(set = None):
    if not set:
        return False

    allUserDefined = cmds.listAttr(set, ud = True)
    if not allUserDefined:
        return ''

    btUserDefined = [x[3:] for x in allUserDefined if x.startswith('BT_')]

    if not btUserDefined:
        return ''

    return btUserDefined


def BT_GetSelectedSet():
    sel = cmds.ls(sl = True, l = True, type = 'objectSet')
    if not sel:
        return False
    return sel[0]


def BT_DoSetup():
    sets =  cmds.ls(sl = True, type = 'objectSet')

    if len(sets) <= 0:
        cmds.warning("Select a set.")
        return False

    set = sets[0]

    unitResult = BT_SetUnits()
    if unitResult:
        QtGui.QMessageBox.warning(BT_GetMayaWindow(), "Blend Transforms", "Units set to centimetres.", "Okay")

    result = BT_Setup(set = set)
    if not result:
        QtGui.QMessageBox.warning(BT_GetMayaWindow(), "Blend Transforms", "Problem with setup. May already be connected.", "Okay")
        return False

    print('Success!')
    return True


def BT_Setup(set = None):
    
    if not set:
        return False

    transforms = cmds.listConnections(set +'.dagSetMembers')
    if not transforms:
        return False

    if not cmds.attributeQuery('Blend_Node', n = set, ex = True):
        cmds.addAttr(set, ln = 'Blend_Node', k = False, h = True, dt = 'string')
    else:
        return False

    btNode = cmds.createNode("BlendTransforms")
    cmds.setAttr(set +'.Blend_Node', btNode, type = "string")

    for i in range(0, len(transforms)):
        baseMatrix = cmds.xform(transforms[i], q = True, m = True)
        baseScale = cmds.getAttr(transforms[i] +'.scale')[0]
        baseRotOffset = [0.0, 0.0, 0.0]

        if cmds.objectType(transforms[i], isType = 'joint'):
            baseRotOffset = cmds.getAttr(transforms[i] +'.jointOrient')[0]

        btAttr = 'transforms[' +str(i) +'].baseMatrix'
        btScaleAttr = 'transforms[' +str(i) +'].baseScale'
        btRotOffsetAttr = 'transforms[' +str(i) +'].baseRotOffset'

        BT_MatrixValuesToNode(values = baseMatrix, node = btNode, attr = btAttr)
        BT_Double3ValuesToNode(values = baseScale, node = btNode, attr = btScaleAttr)
        BT_Double3ValuesToNode(values = baseRotOffset, node = btNode, attr = btRotOffsetAttr)
        BT_ConnectOutputs(index = i, node = btNode, transform = transforms[i])

    return True

def BT_Double3ValuesToNode(values = None, node = None, attr = None):
    if not values or len(values) != 3:
        return False

    cmds.setAttr(node +'.' +attr, values[0], values[1], values[2], type = 'double3')


def BT_ConnectOutputs(index = 0, node = None, transform = None):
    if not transform:
        return False
    
    cmds.connectAttr(node +'.output[' +str(index) +'].outputT', transform +'.translate')
    cmds.connectAttr(node +'.output[' +str(index) +'].outputR', transform +'.rotate')
    cmds.connectAttr(node +'.output[' +str(index) +'].outputS', transform +'.scale')

    return True

def BT_DeletePose(set = None, poseIndex = None):

    if not set or poseIndex is None:
        return False
    
    if not cmds.attributeQuery('Blend_Node', ex = True, n = set):
        return False

    if BT_IsSetupConnected(set):
        cmds.warning('Disconnect setup first!')
        return False

    blendNode = cmds.getAttr(set +'.Blend_Node')

    if not cmds.objExists(blendNode) or not cmds.objExists(set):
        return False

    numTransforms = cmds.getAttr(blendNode +'.transforms', size = True)

    if not numTransforms:
        return False

    numPoses = cmds.getAttr(blendNode +'.transforms[0].poses', size = True) 
    allUserDefined = cmds.listAttr(set, ud = True)
    btUserDefined = [x for x in allUserDefined if x.startswith('BT_')]

    if poseIndex >= numPoses:
        return False

    connectionsToBreak = cmds.listConnections(set +'.' +btUserDefined[poseIndex], d = True, s = False, p = True)
    for ctb in connectionsToBreak:
        cmds.disconnectAttr(set +'.' +btUserDefined[poseIndex], ctb)
    cmds.deleteAttr(set +'.' +btUserDefined[poseIndex])

    for i in range(0, numTransforms):
        for p in range(poseIndex, numPoses-1):
            #get the next items vales
            matrix = cmds.getAttr(blendNode +'.transforms[' +str(i) +'].poses[' +str(p+1) +'].matrix')
            scale = cmds.getAttr(blendNode +'.transforms[' +str(i) +'].poses[' +str(p+1) +'].scale')[0]
            conn = cmds.listConnections(blendNode +'.transforms[' +str(i) +'].poses[' +str(p+1) +'].weight', s = True, d = False, p = True)[0]

            cmds.setAttr(blendNode +'.transforms[' +str(i) +'].poses[' +str(p) +'].matrix', matrix, type = 'matrix')
            cmds.setAttr(blendNode +'.transforms[' +str(i) +'].poses[' +str(p) +'].scale', scale[0], scale[1], scale[2], type = 'double3')
            cmds.connectAttr(conn, blendNode +'.transforms[' +str(i) +'].poses[' +str(p) +'].weight', force = True)
            cmds.disconnectAttr(conn, blendNode +'.transforms[' +str(i) +'].poses[' +str(p+1) +'].weight')

    return True


def BT_AddPose(set = None, poseName = '', index = None):

    prefixedPoseName = 'BT_' +poseName

    if not set:
        return False
    
    if not cmds.attributeQuery('Blend_Node', ex = True, n = set):
        return False

    if BT_IsSetupConnected(set = set):
        cmds.warning('Disconnect setup first!')
        return False
    
    blendNode = cmds.getAttr(set +'.Blend_Node')
    
    if not cmds.objExists(blendNode) or not cmds.objExists(set):
        return False

    if cmds.attributeQuery(prefixedPoseName, ex = True, n = set):
        return False

    transforms = cmds.listConnections(set +'.dagSetMembers')

    numTransforms = len(transforms)
    poseIndex = cmds.getAttr(blendNode +'.transforms[0].poses', size = True) 

    if index is not None:
        poseIndex = index
    
    if index is None:
        cmds.addAttr(set, ln = prefixedPoseName, nn = poseName,  k = True, min = 0, max = 1.0, at = 'double')

    # print ('Num poses = ' +str(numPoses))
    for i in range(0, numTransforms):
        #get the base matrix
        baseScale = cmds.getAttr(blendNode +'.transforms[' +str(i) +'].baseScale')[0]
        baseMatrix = cmds.getAttr(blendNode +'.transforms[' +str(i) +'].baseMatrix')

        #store the scale and set it 
        transformScale = cmds.getAttr(transforms[i] +'.scale')[0]

        #set the scale back to 1.0
        cmds.setAttr(transforms[i] +'.scale', 1.0, 1.0, 1.0, type = 'double3')
        transformMatrix = cmds.xform(transforms[i], q = True, m = True)

        poseMatrix = [x-y for x, y in zip(transformMatrix, baseMatrix)]
        poseScale = [x-y for x, y in zip(transformScale, baseScale)]

        #set the scale back to what the user had it at
        cmds.setAttr(transforms[i] +'.scale', transformScale[0], transformScale[1], transformScale[2], type = 'double3')
        cmds.setAttr(blendNode +'.transforms[' +str(i) +'].poses[' +str(poseIndex) +'].matrix', poseMatrix, type = 'matrix')
        BT_Double3ValuesToNode(values = poseScale, node = blendNode, attr = 'transforms[' +str(i) +'].poses[' +str(poseIndex) +'].scale' )

        if index is None:
            cmds.connectAttr(set +'.' +prefixedPoseName, blendNode +'.transforms[' +str(i) +'].poses[' +str(poseIndex) +'].weight')

    return True

def BT_DisconnectSetup(set = None):
    
    if not set:
        return False

    if not BT_IsSetupConnected(set = set):
        cmds.warning('Setup already disconnected!')
        return False

    btNode = cmds.getAttr(set +'.Blend_Node')
    if not btNode or not cmds.objExists(btNode):
        return False

    numOutputs = cmds.getAttr(btNode +'.output', size = True)
    print numOutputs
    tempMult = None
    for i in range(0, numOutputs):

        conns = cmds.listConnections(btNode +'.output[' +str(i) +'].outputT', s = False, d = True)
        if conns:
            tempMult = cmds.createNode('multiplyDivide')
            cmds.disconnectAttr(btNode +'.output[' +str(i) +'].outputT', conns[0] +'.translate')
            cmds.connectAttr(btNode +'.output[' +str(i) +'].outputT', tempMult +'.input1')

        conns = cmds.listConnections(btNode +'.output[' +str(i) +'].outputR', s = False, d = True)
        if conns:
            tempMult = cmds.createNode('multiplyDivide')
            cmds.disconnectAttr(btNode +'.output[' +str(i) +'].outputR', conns[0] +'.rotate')
            cmds.connectAttr(btNode +'.output[' +str(i) +'].outputR', tempMult +'.input1')
        
        conns = cmds.listConnections(btNode +'.output[' +str(i) +'].outputS', s = False, d = True)
        if conns:
            tempMult = cmds.createNode('multiplyDivide')
            cmds.disconnectAttr(btNode +'.output[' +str(i) +'].outputS', conns[0] +'.scale')
            cmds.connectAttr(btNode +'.output[' +str(i) +'].outputS', tempMult +'.input1')

    cmds.select(cl = True)

    return True

def BT_ConnectSetup(set = None):

    if not set or not cmds.objExists(set):
        return False

    if BT_IsSetupConnected(set = set):
        cmds.warning('Setup already connected!')
        return False
    
    btNode = cmds.getAttr(set +'.Blend_Node')
    if not btNode or not cmds.objExists(btNode):
        return False

    transforms = cmds.listConnections(set +'.dagSetMembers')
    for i in range(0, len(transforms)):
        try:
            BT_ConnectOutputs(index = i, node = btNode, transform = transforms[i])
        except:
            pass

    mults = cmds.listConnections(btNode, d = True, type = 'multiplyDivide')
    if mults:
        cmds.delete(mults)

    return True

def BT_MatrixValuesToNode(values = None, node = None, attr = None):
    if not values or not node or not attr:
        return False

    cmds.setAttr(node +'.' +attr,   values[0], 
                                    values[1],
                                    values[2],
                                    values[3],
                                    values[4],
                                    values[5],
                                    values[6],
                                    values[7],
                                    values[8],
                                    values[9],
                                    values[10],
                                    values[11],
                                    values[12],
                                    values[13],
                                    values[14],
                                    values[15], type = 'matrix')
    return True