set(MAYA_COMPILE_DEFINITIONS "REQUIRE_IOSTREAM;_BOOL;NT_PLUGIN")
set(MAYA_PLUGIN_EXTENSION ".mll")

if (NOT DEFINED MAYA_VERSION)
	set(MAYA_VERSION 2013 CACHE STRING "Maya version")
endif()

set(MAYA_INSTALL_BASE_DEFAULT "C:/Program Files/Autodesk") 
set(MAYA_INSTALL_BASE_PATH ${MAYA_INSTALL_BASE_DEFAULT} CACHE STRING "Root Maya installation path") 
set(MAYA_LOCATION ${MAYA_INSTALL_BASE_PATH}/Maya${MAYA_VERSION})

find_path(MAYA_LIBRARY_DIR OpenMaya.lib PATHS ${MAYA_LOCATION} PATH_SUFFIXES "lib/" DOC "Maya library path" NO_DEFAULT_PATH)
find_path(MAYA_INCLUDE_DIR maya/Mfn.h PATHS ${MAYA_LOCATION} PATH_SUFFIXES "include/" DOC "Maya include path" NO_DEFAULT_PATH)

# MESSAGE( ${MAYA_LIBRARY_DIR} )
# MESSAGE( ${MAYA_INCLUDE_DIR} )

set(_MAYA_LIBRARIES OpenMaya OpenMayaAnim OpenMayaFX OpenMayaRender OpenMayaUI Foundation)
foreach(MAYA_LIB ${_MAYA_LIBRARIES})
	find_library(MAYA_${MAYA_LIB}_LIBRARY NAMES ${MAYA_LIB} PATHS ${MAYA_LIBRARY_DIR} NO_DEFAULT_PATH NO_SYSTEM_ENVIRONMENT_PATH})
	set(MAYA_LIBRARIES ${MAYA_LIBRARIES} ${MAYA_${MAYA_LIB}_LIBRARY})
endforeach()

# MESSAGE (${MAYA_LIBRARIES})

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(Maya DEFAULT_MSG MAYA_INCLUDE_DIR MAYA_LIBRARIES)

function(MAYA_PLUGIN _target)
	if (WIN32)
		set_target_properties(${_target} PROPERTIES LINK_FLAGS "/export:initializePlugin /export:uninitializePlugin")
	endif()
	set_target_properties(${_target} PROPERTIES
		COMPILE_DEFINITIONS "${MAYA_COMPILE_DEFINITIONS}"
		PREFIX ""
		SUFFIX ${MAYA_PLUGIN_EXTENSION}
	)
endfunction()