# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.27.5/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.27.5/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/mauricioapaza/Desktop/EDA/octree

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/mauricioapaza/Desktop/EDA/octree/build

# Include any dependencies generated for this target.
include CMakeFiles/MyVTKApp.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/MyVTKApp.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/MyVTKApp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MyVTKApp.dir/flags.make

CMakeFiles/MyVTKApp.dir/octree2.cpp.o: CMakeFiles/MyVTKApp.dir/flags.make
CMakeFiles/MyVTKApp.dir/octree2.cpp.o: /Users/mauricioapaza/Desktop/EDA/octree/octree2.cpp
CMakeFiles/MyVTKApp.dir/octree2.cpp.o: CMakeFiles/MyVTKApp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/mauricioapaza/Desktop/EDA/octree/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/MyVTKApp.dir/octree2.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MyVTKApp.dir/octree2.cpp.o -MF CMakeFiles/MyVTKApp.dir/octree2.cpp.o.d -o CMakeFiles/MyVTKApp.dir/octree2.cpp.o -c /Users/mauricioapaza/Desktop/EDA/octree/octree2.cpp

CMakeFiles/MyVTKApp.dir/octree2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/MyVTKApp.dir/octree2.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mauricioapaza/Desktop/EDA/octree/octree2.cpp > CMakeFiles/MyVTKApp.dir/octree2.cpp.i

CMakeFiles/MyVTKApp.dir/octree2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/MyVTKApp.dir/octree2.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mauricioapaza/Desktop/EDA/octree/octree2.cpp -o CMakeFiles/MyVTKApp.dir/octree2.cpp.s

# Object files for target MyVTKApp
MyVTKApp_OBJECTS = \
"CMakeFiles/MyVTKApp.dir/octree2.cpp.o"

# External object files for target MyVTKApp
MyVTKApp_EXTERNAL_OBJECTS =

MyVTKApp: CMakeFiles/MyVTKApp.dir/octree2.cpp.o
MyVTKApp: CMakeFiles/MyVTKApp.dir/build.make
MyVTKApp: /usr/local/lib/libvtkWrappingTools-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkViewsQt-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkViewsInfovis-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkViewsContext2D-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkTestingRendering-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkRenderingQt-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkPythonContext2D-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkRenderingVolumeOpenGL2-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkPythonInterpreter-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkRenderingLabel-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkRenderingLOD-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkRenderingLICOpenGL2-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkRenderingImage-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkRenderingFreeTypeFontConfig-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkRenderingContextOpenGL2-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkIOVeraOut-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkIOTecplotTable-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkIOSegY-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkIOParallelXML-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkIOPLY-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkIOOggTheora-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkIONetCDF-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkIOMotionFX-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkIOParallel-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkIOMINC-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkIOLSDyna-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkIOInfovis-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkIOImport-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkIOIOSS-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkioss-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkIOVideo-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkIOMovie-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkIOExportPDF-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkIOExportGL2PS-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkRenderingGL2PSOpenGL2-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkIOExport-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkRenderingVtkJS-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkRenderingSceneGraph-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkIOExodus-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkIOEnSight-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkIOCityGML-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkIOChemistry-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkIOCesium3DTiles-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkIOGeometry-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkIOCONVERGECFD-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkIOHDF-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkIOCGNSReader-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkIOAsynchronous-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkIOAMR-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkInteractionImage-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkImagingStencil-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkImagingStatistics-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkImagingMorphological-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkImagingMath-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkImagingFourier-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkGUISupportQtSQL-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkIOSQL-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkGUISupportQtQuick-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkGUISupportQt-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkGeovisCore-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkInfovisLayout-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkViewsCore-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkInteractionWidgets-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkRenderingVolume-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkRenderingAnnotation-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkImagingHybrid-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkImagingColor-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkInteractionStyle-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkFiltersTopology-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkFiltersSelection-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkFiltersSMP-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkFiltersPython-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkFiltersProgrammable-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkFiltersPoints-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkFiltersVerdict-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkverdict-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkFiltersParallelImaging-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkFiltersImaging-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkImagingGeneral-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkFiltersGeneric-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkFiltersFlowPaths-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkFiltersAMR-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkFiltersParallel-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkFiltersTexture-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkFiltersModeling-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkDomainsChemistryOpenGL2-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkRenderingOpenGL2-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkRenderingHyperTreeGrid-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkRenderingUI-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkFiltersHyperTree-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkFiltersHybrid-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkDomainsChemistry-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkCommonPython-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkWrappingPythonCore3.11-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkChartsCore-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkRenderingContext2D-9.2.9.2.6.dylib
MyVTKApp: /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX13.3.sdk/System/Library/Frameworks/OpenGL.framework/OpenGL.tbd
MyVTKApp: /usr/local/lib/libtheora.dylib
MyVTKApp: /usr/local/lib/libtheoradec.dylib
MyVTKApp: /usr/local/lib/libtheoraenc.dylib
MyVTKApp: /usr/local/lib/libogg.dylib
MyVTKApp: /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX13.3.sdk/usr/lib/libxml2.tbd
MyVTKApp: /usr/local/lib/libvtklibharu-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libjsoncpp.dylib
MyVTKApp: /usr/local/lib/libgl2ps.dylib
MyVTKApp: /usr/local/lib/libpng.dylib
MyVTKApp: /usr/local/lib/libvtkexodusII-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libnetcdf.19.dylib
MyVTKApp: /usr/local/lib/libhdf5_hl.dylib
MyVTKApp: /usr/local/lib/libhdf5.dylib
MyVTKApp: /usr/local/lib/libsz.dylib
MyVTKApp: /Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/lib/libz.tbd
MyVTKApp: /Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/lib/libdl.tbd
MyVTKApp: /Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/lib/libm.tbd
MyVTKApp: /usr/local/lib/libzstd.dylib
MyVTKApp: /Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/lib/libbz2.tbd
MyVTKApp: /Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/lib/libcurl.tbd
MyVTKApp: /Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/lib/libxml2.tbd
MyVTKApp: /usr/local/lib/libpugixml.1.13.dylib
MyVTKApp: /usr/local/lib/libvtkcgns-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libhdf5.dylib
MyVTKApp: /usr/local/lib/libhdf5_hl.dylib
MyVTKApp: /usr/local/lib/libboost_serialization-mt.dylib
MyVTKApp: /usr/local/lib/QtSql.framework/Versions/A/QtSql
MyVTKApp: /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX13.3.sdk/usr/lib/libsqlite3.tbd
MyVTKApp: /usr/local/lib/QtOpenGLWidgets.framework/Versions/A/QtOpenGLWidgets
MyVTKApp: /usr/local/lib/QtWidgets.framework/Versions/A/QtWidgets
MyVTKApp: /usr/local/lib/QtQuick.framework/Versions/A/QtQuick
MyVTKApp: /usr/local/lib/QtOpenGL.framework/Versions/A/QtOpenGL
MyVTKApp: /usr/local/lib/QtGui.framework/Versions/A/QtGui
MyVTKApp: /usr/local/lib/QtQmlModels.framework/Versions/A/QtQmlModels
MyVTKApp: /usr/local/lib/QtQml.framework/Versions/A/QtQml
MyVTKApp: /usr/local/lib/QtNetwork.framework/Versions/A/QtNetwork
MyVTKApp: /usr/local/lib/QtCore.framework/Versions/A/QtCore
MyVTKApp: /usr/local/lib/libvtklibproj-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkInfovisBoostGraphAlgorithms-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkInfovisCore-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkRenderingFreeType-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkfreetype-9.2.9.2.6.dylib
MyVTKApp: /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX13.3.sdk/usr/lib/libz.tbd
MyVTKApp: /usr/local/lib/libvtkIOImage-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkDICOMParser-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkmetaio-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkFiltersExtraction-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkParallelDIY-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkIOXML-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkParallelCore-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkFiltersStatistics-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libGLEW.dylib
MyVTKApp: /usr/local/lib/libvtkImagingSources-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkImagingCore-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkIOXMLParser-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkIOLegacy-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkIOCore-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkRenderingCore-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkCommonColor-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkFiltersSources-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkFiltersGeometry-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkFiltersGeneral-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkfmt-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkCommonComputationalGeometry-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkFiltersCore-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkCommonExecutionModel-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkCommonDataModel-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkCommonSystem-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkCommonMisc-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkCommonTransforms-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkCommonMath-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkkissfft-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkCommonCore-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtkloguru-9.2.9.2.6.dylib
MyVTKApp: /usr/local/lib/libvtksys-9.2.9.2.6.dylib
MyVTKApp: /usr/local/opt/python@3.11/Frameworks/Python.framework/Versions/3.11/lib/libpython3.11.dylib
MyVTKApp: /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX13.3.sdk/usr/lib/libexpat.tbd
MyVTKApp: /usr/local/lib/libdouble-conversion.dylib
MyVTKApp: /usr/local/lib/liblz4.dylib
MyVTKApp: /usr/local/lib/liblzma.dylib
MyVTKApp: /usr/local/lib/libjpeg.dylib
MyVTKApp: /usr/local/lib/libtiff.dylib
MyVTKApp: CMakeFiles/MyVTKApp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/mauricioapaza/Desktop/EDA/octree/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable MyVTKApp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MyVTKApp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MyVTKApp.dir/build: MyVTKApp
.PHONY : CMakeFiles/MyVTKApp.dir/build

CMakeFiles/MyVTKApp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MyVTKApp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MyVTKApp.dir/clean

CMakeFiles/MyVTKApp.dir/depend:
	cd /Users/mauricioapaza/Desktop/EDA/octree/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/mauricioapaza/Desktop/EDA/octree /Users/mauricioapaza/Desktop/EDA/octree /Users/mauricioapaza/Desktop/EDA/octree/build /Users/mauricioapaza/Desktop/EDA/octree/build /Users/mauricioapaza/Desktop/EDA/octree/build/CMakeFiles/MyVTKApp.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/MyVTKApp.dir/depend

