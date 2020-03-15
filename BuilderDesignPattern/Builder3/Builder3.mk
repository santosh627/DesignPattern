##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=Builder3
ConfigurationName      :=Debug
WorkspaceConfiguration := $(ConfigurationName)
WorkspacePath          :=C:/Users/santo/Documents/CPPWorkspace
ProjectPath            :=C:/Users/santo/Documents/CPPWorkspace/Builder3
IntermediateDirectory  :=../build-$(ConfigurationName)/Builder3
OutDir                 :=../build-$(ConfigurationName)/Builder3
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=santo
Date                   :=15/03/2020
CodeLitePath           :="C:/Program Files/CodeLite"
LinkerName             :=C:/MinGW/bin/g++.exe
SharedObjectLinkerName :=C:/MinGW/bin/g++.exe -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=..\build-$(ConfigurationName)\bin\$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :=$(IntermediateDirectory)/ObjectsList.txt
PCHCompileFlags        :=
RcCmpOptions           := 
RcCompilerName         :=C:/MinGW/bin/windres.exe
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := C:/MinGW/bin/ar.exe rcu
CXX      := C:/MinGW/bin/g++.exe
CC       := C:/MinGW/bin/gcc.exe
CXXFLAGS := -std=c++17 -Wall -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := C:/MinGW/bin/as.exe


##
## User defined environment variables
##
CodeLiteDir:=C:\Program Files\CodeLite
Objects0=../build-$(ConfigurationName)/Builder3/Person.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/Builder3/main.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/Builder3/PersonBuilder.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: MakeIntermediateDirs $(OutputFile)

$(OutputFile): ../build-$(ConfigurationName)/Builder3/.d $(Objects) 
	@if not exist "..\build-$(ConfigurationName)\Builder3" mkdir "..\build-$(ConfigurationName)\Builder3"
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@if not exist "..\build-$(ConfigurationName)\Builder3" mkdir "..\build-$(ConfigurationName)\Builder3"
	@if not exist ""..\build-$(ConfigurationName)\bin"" mkdir ""..\build-$(ConfigurationName)\bin""

../build-$(ConfigurationName)/Builder3/.d:
	@if not exist "..\build-$(ConfigurationName)\Builder3" mkdir "..\build-$(ConfigurationName)\Builder3"

PreBuild:


##
## Objects
##
../build-$(ConfigurationName)/Builder3/Person.cpp$(ObjectSuffix): Person.cpp ../build-$(ConfigurationName)/Builder3/Person.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/santo/Documents/CPPWorkspace/Builder3/Person.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Person.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Builder3/Person.cpp$(DependSuffix): Person.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Builder3/Person.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Builder3/Person.cpp$(DependSuffix) -MM Person.cpp

../build-$(ConfigurationName)/Builder3/Person.cpp$(PreprocessSuffix): Person.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Builder3/Person.cpp$(PreprocessSuffix) Person.cpp

../build-$(ConfigurationName)/Builder3/main.cpp$(ObjectSuffix): main.cpp ../build-$(ConfigurationName)/Builder3/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/santo/Documents/CPPWorkspace/Builder3/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Builder3/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Builder3/main.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Builder3/main.cpp$(DependSuffix) -MM main.cpp

../build-$(ConfigurationName)/Builder3/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Builder3/main.cpp$(PreprocessSuffix) main.cpp

../build-$(ConfigurationName)/Builder3/PersonBuilder.cpp$(ObjectSuffix): PersonBuilder.cpp ../build-$(ConfigurationName)/Builder3/PersonBuilder.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/santo/Documents/CPPWorkspace/Builder3/PersonBuilder.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/PersonBuilder.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Builder3/PersonBuilder.cpp$(DependSuffix): PersonBuilder.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Builder3/PersonBuilder.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Builder3/PersonBuilder.cpp$(DependSuffix) -MM PersonBuilder.cpp

../build-$(ConfigurationName)/Builder3/PersonBuilder.cpp$(PreprocessSuffix): PersonBuilder.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Builder3/PersonBuilder.cpp$(PreprocessSuffix) PersonBuilder.cpp


-include ../build-$(ConfigurationName)/Builder3//*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(IntermediateDirectory)


