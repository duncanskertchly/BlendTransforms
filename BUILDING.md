# Building the plug-in

## Note

I learned about using CMake for Maya stuff from Chad Vernon's YouTube videos. Well worth a watch if you're interested.

[Chad Vernon - CMake](https://www.youtube.com/watch?v=2mUOt_F2ywo&list=PL_RMNSHxKvdUFTdl12WumiqnNWLn4LDQj)

## Pre-requisites

You'll need a recent version of CMake installed and also the correct version of Visual Studio to match the Maya version you're interested in building the plug-in for.

## Build

1. Open a command prompt with the __build__ directory as your current working directory. Make sure the __build__ directory is empty. You can run __clean.bat__ in the root directory to do this.
2. Using Maya 2015 as an example run this command.

        cmake -G "Visual Studio 11 2012 Win64" -DMAYA_VERSION=2015 ../

    For other Maya versions you'll need to change the __MAYA_VERSION__ flag and also use the correct Visual Studio argument. You can see a list of the ones available by doing this.

        cmake -G
        
3. Once you've created the Visual Studio projects you can build the plugins by hand by opening the project file located in the build folder in Visual Studio or use the following command (again with the __build__ directory as the cwd).

        cmake --buid . --config Release --target Install
        
4. Once it's done the plugins will be located in the __\install\\\<Maya Version\>__ directory.




