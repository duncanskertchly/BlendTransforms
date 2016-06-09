#include <maya/MStatus.h>
#include <maya/MGlobal.h>
#include <maya/MFnPlugin.h>
#include <maya/MObject.h>

#include "BlendTransforms.h"

MStatus initializePlugin(MObject obj)
{
	MStatus stat;
	MFnPlugin plugin(obj, "duncanskertchly@tt-fusion.com", "0.1", "");
	
	stat = plugin.registerNode("BlendTransforms", BlendTransforms::id, BlendTransforms::creator, BlendTransforms::initialize );
	if (stat != MStatus::kSuccess){
		MGlobal::displayInfo("Problem registering BlendTransforms node!");
	}
	

	return MS::kSuccess;
}

MStatus uninitializePlugin(MObject obj)
{
	MStatus stat;
	MFnPlugin plugin(obj);

	stat = plugin.deregisterNode(BlendTransforms::id);
	if (stat != MStatus::kSuccess){
		MGlobal::displayInfo("Problem de-registering BlendTransforms node!");
	}

	return MS::kSuccess;
}