#include <maya/MObject.h>
#include <maya/MVector.h>
#include <maya/MTypeId.h>
#include <maya/MMatrix.h>
#include <maya/MStatus.h>
#include <maya/MPlug.h>
#include <maya/MDataBlock.h>

class BlendTransforms : public MPxNode
{
public:
                     
            BlendTransforms();
    virtual ~BlendTransforms();
    virtual MStatus compute(const MPlug& plug, MDataBlock& data);

    static MTypeId id;

    // static MObject active;
    static MObject transforms;
    static MObject poses;
    static MObject poseItems;
    static MObject baseMatrix;
    
    static MObject baseScale;

    static MObject baseScaleX;
    static MObject baseScaleY;
    static MObject baseScaleZ;

    static MObject baseRotOffset;

    static MObject baseRotOffsetX;
    static MObject baseRotOffsetY;
    static MObject baseRotOffsetZ;

    static MObject poseWeight;
    static MObject poseMatrix;

    static MObject poseScale;
    static MObject poseScaleX;
    static MObject poseScaleY;
    static MObject poseScaleZ;

    static MObject output;
    
    static MObject outputT;
    static MObject outputTX;
    static MObject outputTY;
    static MObject outputTZ;
    
    static MObject outputR;
    static MObject outputRX;
    static MObject outputRY;
    static MObject outputRZ;

    static MObject outputS;
    static MObject outputSX;
    static MObject outputSY;
    static MObject outputSZ;


    static void* creator();
    static MStatus initialize();

};
