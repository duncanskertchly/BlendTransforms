#include <stdio.h>
#include <math.h>

#include <maya/MPxNode.h>
#include <maya/MString.h>
#include <maya/MFnNumericAttribute.h>
#include <maya/MFnEnumAttribute.h>
#include <maya/MFnMatrixAttribute.h>
#include <maya/MFnNumericData.h>
#include <maya/MPlugArray.h>
#include <maya/MGlobal.h>
#include <maya/MFnCompoundAttribute.h>
#include <maya/MFnUnitAttribute.h>
#include <maya/MDataHandle.h>
#include <maya/MFnDagNode.h>
#include <maya/MFnTransform.h>
#include <maya/MTransformationMatrix.h>
#include <maya/MTime.h>
#include <maya/MAnimControl.h>
#include <maya/MArrayDataHandle.h>
#include <maya/MMatrix.h>
#include <maya/MVector.h>
#include <maya/MArrayDataBuilder.h>
#include <maya/MStringArray.h>
#include <maya/MFnCompoundAttribute.h>
#include <maya/MAngle.h>

#include "BlendTransforms.h"

// #define _DEBUG

using namespace std;

BlendTransforms::BlendTransforms(){}
BlendTransforms::~BlendTransforms(){}

MTypeId BlendTransforms::id(209403);

// MObject BlendTransforms::active;
MObject BlendTransforms::transforms;
MObject BlendTransforms::poseItems;
MObject BlendTransforms::poses;
MObject BlendTransforms::baseMatrix;
MObject BlendTransforms::poseWeight;
MObject BlendTransforms::poseMatrix;

MObject BlendTransforms::baseScale;
MObject BlendTransforms::baseScaleX;
MObject BlendTransforms::baseScaleY;
MObject BlendTransforms::baseScaleZ;

MObject BlendTransforms::baseRotOffset;
MObject BlendTransforms::baseRotOffsetX;
MObject BlendTransforms::baseRotOffsetY;
MObject BlendTransforms::baseRotOffsetZ;

MObject BlendTransforms::poseScale;
MObject BlendTransforms::poseScaleX;
MObject BlendTransforms::poseScaleY;
MObject BlendTransforms::poseScaleZ;

MObject BlendTransforms::output;

MObject BlendTransforms::outputT;
MObject BlendTransforms::outputTX;
MObject BlendTransforms::outputTY;
MObject BlendTransforms::outputTZ;
    
MObject BlendTransforms::outputR;
MObject BlendTransforms::outputRX;
MObject BlendTransforms::outputRY;
MObject BlendTransforms::outputRZ;

MObject BlendTransforms::outputS;
MObject BlendTransforms::outputSX;
MObject BlendTransforms::outputSY;
MObject BlendTransforms::outputSZ;

// standard stuff
void* BlendTransforms::creator()
{
    return new BlendTransforms();
}

MStatus BlendTransforms::initialize()
{
    MFnNumericAttribute numAttr;
    MFnMatrixAttribute matAttr;
    MFnCompoundAttribute compAttr;
    MFnUnitAttribute unitAttr;

    //the base matrix
    baseMatrix = matAttr.create("baseMatrix", "bm");
    matAttr.setConnectable(false);
    matAttr.setKeyable(false);
    matAttr.setWritable(true);

    baseScale = compAttr.create("baseScale", "bs");
    compAttr.setConnectable(false);
    compAttr.setWritable(true);
    compAttr.setReadable(false);
    baseScaleX = numAttr.create("baseScaleX", "bsx", MFnNumericData::kDouble);
    numAttr.setConnectable(false);
    numAttr.setWritable(true);
    numAttr.setReadable(false);
    baseScaleY = numAttr.create("baseScaleY", "bsy", MFnNumericData::kDouble);
    numAttr.setConnectable(false);
    numAttr.setWritable(true);
    numAttr.setReadable(false);
    baseScaleZ = numAttr.create("baseScaleZ", "bsz", MFnNumericData::kDouble);
    numAttr.setConnectable(false);
    numAttr.setWritable(true);
    numAttr.setReadable(false);

    compAttr.addChild(baseScaleX);
    compAttr.addChild(baseScaleY);
    compAttr.addChild(baseScaleZ);

    //baseRotOffset - for dealing with joint orients
    baseRotOffset = compAttr.create("baseRotOffset", "bro");
    compAttr.setConnectable(false);
    compAttr.setWritable(true);
    compAttr.setReadable(false);
    baseRotOffsetX = numAttr.create("baseRotOffsetX", "broX", MFnNumericData::kDouble);
    numAttr.setConnectable(false);
    numAttr.setWritable(true);
    numAttr.setReadable(false);
    baseRotOffsetY = numAttr.create("baseRotOffsetY", "broY", MFnNumericData::kDouble);
    numAttr.setConnectable(false);
    numAttr.setWritable(true);
    numAttr.setReadable(false);
    baseRotOffsetZ = numAttr.create("baseRotOffsetZ", "broZ", MFnNumericData::kDouble);
    numAttr.setConnectable(false);
    numAttr.setWritable(true);
    numAttr.setReadable(false);

    compAttr.addChild(baseRotOffsetX);
    compAttr.addChild(baseRotOffsetY);
    compAttr.addChild(baseRotOffsetZ);
    
    // set up the outputs
    outputT = compAttr.create("outputT", "ot");
    compAttr.setWritable(false);
    compAttr.setReadable(true);
    compAttr.setDisconnectBehavior(MFnAttribute::kDelete);
    outputTX = unitAttr.create("outputTX", "otx", MFnUnitAttribute::kDistance);
    unitAttr.setWritable(false);
    unitAttr.setReadable(true);
    unitAttr.setDisconnectBehavior(MFnAttribute::kDelete);
    outputTY = unitAttr.create("outputTY", "oty", MFnUnitAttribute::kDistance);
    unitAttr.setWritable(false);
    unitAttr.setReadable(true);
    unitAttr.setDisconnectBehavior(MFnAttribute::kDelete);
    outputTZ = unitAttr.create("outputTZ", "otz", MFnUnitAttribute::kDistance);
    unitAttr.setWritable(false);
    unitAttr.setReadable(true);
    unitAttr.setDisconnectBehavior(MFnAttribute::kDelete);

    compAttr.addChild(outputTX);
    compAttr.addChild(outputTY);
    compAttr.addChild(outputTZ);

    outputR = compAttr.create("outputR", "or");
    compAttr.setWritable(false);
    compAttr.setReadable(true);
    compAttr.setDisconnectBehavior(MFnAttribute::kDelete);
    outputRX = unitAttr.create("outputRX", "orx", MFnUnitAttribute::kAngle);
    unitAttr.setWritable(false);
    unitAttr.setReadable(true);
    unitAttr.setDisconnectBehavior(MFnAttribute::kDelete);
    outputRY = unitAttr.create("outputRY", "ory", MFnUnitAttribute::kAngle);
    unitAttr.setWritable(false);
    unitAttr.setReadable(true);
    unitAttr.setDisconnectBehavior(MFnAttribute::kDelete);
    outputRZ = unitAttr.create("outputRZ", "orz", MFnUnitAttribute::kAngle);
    unitAttr.setWritable(false);
    unitAttr.setReadable(true);
    unitAttr.setDisconnectBehavior(MFnAttribute::kDelete);

    compAttr.addChild(outputRX);
    compAttr.addChild(outputRY);
    compAttr.addChild(outputRZ);

    outputS = compAttr.create("outputS", "os");
    compAttr.setWritable(false);
    compAttr.setReadable(true);
    compAttr.setDisconnectBehavior(MFnAttribute::kDelete);
    outputSX = unitAttr.create("outputSX", "osx", MFnUnitAttribute::kDistance);
    unitAttr.setWritable(false);
    unitAttr.setReadable(true);
    unitAttr.setDisconnectBehavior(MFnAttribute::kDelete);
    outputSY = unitAttr.create("outputSY", "osy", MFnUnitAttribute::kDistance);
    unitAttr.setWritable(false);
    unitAttr.setReadable(true);
    unitAttr.setDisconnectBehavior(MFnAttribute::kDelete);
    outputSZ = unitAttr.create("outputSZ", "osz", MFnUnitAttribute::kDistance);
    unitAttr.setWritable(false);
    unitAttr.setReadable(true);
    unitAttr.setDisconnectBehavior(MFnAttribute::kDelete);

    compAttr.addChild(outputSX);
    compAttr.addChild(outputSY);
    compAttr.addChild(outputSZ);

    poseWeight = numAttr.create("weight", "w", MFnNumericData::kDouble);
    numAttr.setHidden(false);
    numAttr.setReadable(false);
    numAttr.setWritable(true);
    numAttr.setDisconnectBehavior(MFnAttribute::kDelete);

    poseMatrix = matAttr.create("matrix", "m");
    matAttr.setReadable(false);
    matAttr.setWritable(true);

    poseScale = compAttr.create("scale", "s");
    compAttr.setWritable(true);
    compAttr.setReadable(false);
    poseScaleX = numAttr.create("scaleX", "sx", MFnNumericData::kDouble);
    numAttr.setWritable(true);
    numAttr.setReadable(false);
    poseScaleY = numAttr.create("scaleY", "sy", MFnNumericData::kDouble);
    numAttr.setWritable(true);
    numAttr.setReadable(false);
    poseScaleZ = numAttr.create("scaleZ", "sz", MFnNumericData::kDouble);
    numAttr.setWritable(true);
    numAttr.setReadable(false);
    
    compAttr.addChild(poseScaleX);
    compAttr.addChild(poseScaleY);
    compAttr.addChild(poseScaleZ);

    //create the "pose item" which is a matrix and an accompanying float
    poseItems = compAttr.create("poses", "p");
    compAttr.addChild(poseWeight);
    compAttr.addChild(poseMatrix);
    compAttr.addChild(poseScale);
    compAttr.setArray(true);
    compAttr.setReadable(false);
    compAttr.setWritable(true);
    compAttr.setDisconnectBehavior(MFnAttribute::kDelete);
    addAttribute(poseItems);

    transforms = compAttr.create("transforms", "t");
    compAttr.setArray(true);
    compAttr.setReadable(false);
    compAttr.setWritable(true);
    compAttr.addChild(baseMatrix);
    compAttr.addChild(baseScale);
    compAttr.addChild(baseRotOffset);
    compAttr.addChild(poseItems);
    addAttribute(transforms);
    
    output = compAttr.create("output", "o");
    compAttr.setArray(true);
    compAttr.setReadable(true);
    compAttr.setWritable(false);
    compAttr.setDisconnectBehavior(MFnAttribute::kDelete);
    compAttr.addChild(outputT);
    compAttr.addChild(outputR);
    compAttr.addChild(outputS);
    addAttribute(output);

    // set up the relationships between the attrs
    // attributeAffects(active, output);
    attributeAffects(transforms, output);
    
    return (MStatus::kSuccess);
}

MStatus BlendTransforms::compute(const MPlug& plug, MDataBlock& data)
{
    MStringArray spl;
    plug.name().split('.', spl);
    MString plugName = spl[spl.length()-1];

    #ifdef _DEBUG
        cout << plugName.substring(0,5) << endl;
    #endif

    if ( plugName.substring(0, 5) == "output" )
    {
        
        MArrayDataHandle hTransformArray = data.inputArrayValue(transforms);
        unsigned int transformArrayLength = hTransformArray.elementCount();

        #ifdef _DEBUG
            cout << "num elements = " << hTransformArray.elementCount() << endl;
        #endif

        unsigned int i = 0;
        for (i = 0; i < transformArrayLength; i++)
        {
            #ifdef _DEBUG
                cout << "In Transform[" << i << "]" << endl;
            #endif

            hTransformArray.jumpToElement(i);
            MDataHandle hTransform = hTransformArray.inputValue();

            // for this transform, create a result matrix / scale. initialise them with
            // the values from this transforms "baseMatrix" and "baseScale"
            MMatrix resultMatrix = hTransform.child(baseMatrix).asMatrix();
            double3 &baseS = hTransform.child(baseScale).asDouble3();
            double3 &tempRotOffset = hTransform.child(baseRotOffset).asDouble3();

            double rotOffset[3] = { MAngle(tempRotOffset[0], MAngle::kDegrees).asRadians(), 
                                    MAngle(tempRotOffset[1], MAngle::kDegrees).asRadians(), 
                                    MAngle(tempRotOffset[2], MAngle::kDegrees).asRadians() };

            double resultScale[3] = {baseS[0], baseS[1], baseS[2]};

            #ifdef _DEBUG
                cout << "Base Matrix[" << i << "] = " << resultMatrix << endl; 
                cout << "Base Scale[" << i << "] = "    << baseS[0] << " " 
                                                        << baseS[1] << " " 
                                                        << baseS[2] << endl; 
            #endif


            MArrayDataHandle hPoseArray = hTransform.child(poseItems);
            unsigned int j = 0;

            for (j = 0; j < hPoseArray.elementCount(); j++)
            {
                hPoseArray.jumpToElement(j);
                MDataHandle hPose = hPoseArray.inputValue();
                double weight = hPose.child(poseWeight).asDouble();
                double3 &scale = hPose.child(poseScale).asDouble3();
                MMatrix matrix = hPose.child(poseMatrix).asMatrix();

                #ifdef _DEBUG
                    cout << "Pose Weight[" << i << "][" << j << "] = " << weight << endl;
                    cout << "Pose Matrix[" << i << "][" << j << "] = " << matrix << endl;
                    cout << "Pose Scale[" << i << "][" << j << "] = "   << scale[0] << " " 
                                                                        << scale[1] << " " 
                                                                        << scale[2] << endl;
                #endif

                resultMatrix += (weight * matrix);
                
                resultScale[0] += (weight * scale[0]);
                resultScale[1] += (weight * scale[1]);
                resultScale[2] += (weight * scale[2]);
            }

            #ifdef _DEBUG
                cout << "Result Matrix[" << i << "] = " << resultMatrix << endl;
            #endif

            MTransformationMatrix transform = MTransformationMatrix(resultMatrix);
            MVector translation = transform.getTranslation(MSpace::kTransform);

            double rotation[3];
            MTransformationMatrix::RotationOrder order = MTransformationMatrix::kXYZ; 
            transform.getRotation(rotation, order);

            rotation[0] = rotation[0] - rotOffset[0];
            rotation[1] = rotation[1] - rotOffset[1];
            rotation[2] = rotation[2] - rotOffset[2];


            #ifdef _DEBUG
                cout << "Result Translation[" << i << "] = ( "  << translation.x << ", " 
                                                                << translation.y << ", " 
                                                                << translation.z << " )" << endl;

                cout << "Result Rotation[" << i << "] = ( " << rotation[0] << ", " 
                                                            << rotation[1] << ", " 
                                                            << rotation[2] << " )" << endl;

                cout << "Result Scale[" << i << "] = ( "    << resultScale[0] << ", " 
                                                            << resultScale[1] << ", " 
                                                            << resultScale[2] << " )" << endl;
            #endif

            MArrayDataHandle hOutputArray = data.outputArrayValue(output);
            unsigned int outputSize = hOutputArray.elementCount();

            #ifdef _DEBUG
                cout << "Output element count = " << outputSize << endl;
            #endif

            if (i < outputSize)
            {
                hOutputArray.jumpToElement(i);
                MDataHandle hOutput = hOutputArray.outputValue();
                hOutput.child(outputT).set3Double(translation.x, translation.y, translation.z);
                hOutput.child(outputR).set3Double(rotation[0], rotation[1], rotation[2]);
                hOutput.child(outputS).set3Double(resultScale[0], resultScale[1], resultScale[2]);
            }

        }
        
    }

    data.setClean(plug);
    return MStatus::kSuccess;
    
}