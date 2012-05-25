##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Release
ProjectName            :=Tetris
ConfigurationName      :=Release
IntermediateDirectory  :=./Release
OutDir                 := $(IntermediateDirectory)
WorkspacePath          := "H:\codelite\CodeLite\workspace"
ProjectPath            := "H:\codelite\CodeLite\workspace\Tetris"
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=MrFloip
Date                   :=2012-05-25
CodeLitePath           :="H:\codelite\CodeLite"
LinkerName             :=g++
ArchiveTool            :=ar rcus
SharedObjectLinkerName :=g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.o.i
DebugSwitch            :=-gstab
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
CompilerName           :=g++
C_CompilerName         :=gcc
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E 
ObjectsFileList        :="H:\codelite\CodeLite\workspace\Tetris\Tetris.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
CmpOptions             := -O2 -Wall $(Preprocessors)
C_CmpOptions           := -O2 -Wall $(Preprocessors)
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)sfml-system $(LibrarySwitch)sfml-graphics $(LibrarySwitch)sfml-window 
LibPath                := $(LibraryPathSwitch). 


##
## User defined environment variables
##
CodeLiteDir:=H:\codelite\CodeLite
Objects=$(IntermediateDirectory)/main$(ObjectSuffix) $(IntermediateDirectory)/tetris_scene$(ObjectSuffix) $(IntermediateDirectory)/framerate_object$(ObjectSuffix) $(IntermediateDirectory)/framerate_regulator$(ObjectSuffix) $(IntermediateDirectory)/image_cache$(ObjectSuffix) $(IntermediateDirectory)/logger$(ObjectSuffix) $(IntermediateDirectory)/f_exception$(ObjectSuffix) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects) > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "./Release"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/main$(ObjectSuffix): main.cpp $(IntermediateDirectory)/main$(DependSuffix)
	$(CompilerName) $(IncludePCH) $(SourceSwitch) "H:/codelite/CodeLite/workspace/Tetris/main.cpp" $(CmpOptions) $(ObjectSwitch)$(IntermediateDirectory)/main$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main$(DependSuffix): main.cpp
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main$(ObjectSuffix) -MF$(IntermediateDirectory)/main$(DependSuffix) -MM "H:/codelite/CodeLite/workspace/Tetris/main.cpp"

$(IntermediateDirectory)/main$(PreprocessSuffix): main.cpp
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main$(PreprocessSuffix) "H:/codelite/CodeLite/workspace/Tetris/main.cpp"

$(IntermediateDirectory)/tetris_scene$(ObjectSuffix): tetris_scene.cpp $(IntermediateDirectory)/tetris_scene$(DependSuffix)
	$(CompilerName) $(IncludePCH) $(SourceSwitch) "H:/codelite/CodeLite/workspace/Tetris/tetris_scene.cpp" $(CmpOptions) $(ObjectSwitch)$(IntermediateDirectory)/tetris_scene$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/tetris_scene$(DependSuffix): tetris_scene.cpp
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/tetris_scene$(ObjectSuffix) -MF$(IntermediateDirectory)/tetris_scene$(DependSuffix) -MM "H:/codelite/CodeLite/workspace/Tetris/tetris_scene.cpp"

$(IntermediateDirectory)/tetris_scene$(PreprocessSuffix): tetris_scene.cpp
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/tetris_scene$(PreprocessSuffix) "H:/codelite/CodeLite/workspace/Tetris/tetris_scene.cpp"

$(IntermediateDirectory)/framerate_object$(ObjectSuffix): framerate_object.cpp $(IntermediateDirectory)/framerate_object$(DependSuffix)
	$(CompilerName) $(IncludePCH) $(SourceSwitch) "H:/codelite/CodeLite/workspace/Tetris/framerate_object.cpp" $(CmpOptions) $(ObjectSwitch)$(IntermediateDirectory)/framerate_object$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/framerate_object$(DependSuffix): framerate_object.cpp
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/framerate_object$(ObjectSuffix) -MF$(IntermediateDirectory)/framerate_object$(DependSuffix) -MM "H:/codelite/CodeLite/workspace/Tetris/framerate_object.cpp"

$(IntermediateDirectory)/framerate_object$(PreprocessSuffix): framerate_object.cpp
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/framerate_object$(PreprocessSuffix) "H:/codelite/CodeLite/workspace/Tetris/framerate_object.cpp"

$(IntermediateDirectory)/framerate_regulator$(ObjectSuffix): framerate_regulator.cpp $(IntermediateDirectory)/framerate_regulator$(DependSuffix)
	$(CompilerName) $(IncludePCH) $(SourceSwitch) "H:/codelite/CodeLite/workspace/Tetris/framerate_regulator.cpp" $(CmpOptions) $(ObjectSwitch)$(IntermediateDirectory)/framerate_regulator$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/framerate_regulator$(DependSuffix): framerate_regulator.cpp
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/framerate_regulator$(ObjectSuffix) -MF$(IntermediateDirectory)/framerate_regulator$(DependSuffix) -MM "H:/codelite/CodeLite/workspace/Tetris/framerate_regulator.cpp"

$(IntermediateDirectory)/framerate_regulator$(PreprocessSuffix): framerate_regulator.cpp
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/framerate_regulator$(PreprocessSuffix) "H:/codelite/CodeLite/workspace/Tetris/framerate_regulator.cpp"

$(IntermediateDirectory)/image_cache$(ObjectSuffix): image_cache.cpp $(IntermediateDirectory)/image_cache$(DependSuffix)
	$(CompilerName) $(IncludePCH) $(SourceSwitch) "H:/codelite/CodeLite/workspace/Tetris/image_cache.cpp" $(CmpOptions) $(ObjectSwitch)$(IntermediateDirectory)/image_cache$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/image_cache$(DependSuffix): image_cache.cpp
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/image_cache$(ObjectSuffix) -MF$(IntermediateDirectory)/image_cache$(DependSuffix) -MM "H:/codelite/CodeLite/workspace/Tetris/image_cache.cpp"

$(IntermediateDirectory)/image_cache$(PreprocessSuffix): image_cache.cpp
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/image_cache$(PreprocessSuffix) "H:/codelite/CodeLite/workspace/Tetris/image_cache.cpp"

$(IntermediateDirectory)/logger$(ObjectSuffix): logger.cpp $(IntermediateDirectory)/logger$(DependSuffix)
	$(CompilerName) $(IncludePCH) $(SourceSwitch) "H:/codelite/CodeLite/workspace/Tetris/logger.cpp" $(CmpOptions) $(ObjectSwitch)$(IntermediateDirectory)/logger$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/logger$(DependSuffix): logger.cpp
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/logger$(ObjectSuffix) -MF$(IntermediateDirectory)/logger$(DependSuffix) -MM "H:/codelite/CodeLite/workspace/Tetris/logger.cpp"

$(IntermediateDirectory)/logger$(PreprocessSuffix): logger.cpp
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/logger$(PreprocessSuffix) "H:/codelite/CodeLite/workspace/Tetris/logger.cpp"

$(IntermediateDirectory)/f_exception$(ObjectSuffix): f_exception.cpp $(IntermediateDirectory)/f_exception$(DependSuffix)
	$(CompilerName) $(IncludePCH) $(SourceSwitch) "H:/codelite/CodeLite/workspace/Tetris/f_exception.cpp" $(CmpOptions) $(ObjectSwitch)$(IntermediateDirectory)/f_exception$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/f_exception$(DependSuffix): f_exception.cpp
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/f_exception$(ObjectSuffix) -MF$(IntermediateDirectory)/f_exception$(DependSuffix) -MM "H:/codelite/CodeLite/workspace/Tetris/f_exception.cpp"

$(IntermediateDirectory)/f_exception$(PreprocessSuffix): f_exception.cpp
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/f_exception$(PreprocessSuffix) "H:/codelite/CodeLite/workspace/Tetris/f_exception.cpp"


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) $(IntermediateDirectory)/main$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/main$(DependSuffix)
	$(RM) $(IntermediateDirectory)/main$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/tetris_scene$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/tetris_scene$(DependSuffix)
	$(RM) $(IntermediateDirectory)/tetris_scene$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/framerate_object$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/framerate_object$(DependSuffix)
	$(RM) $(IntermediateDirectory)/framerate_object$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/framerate_regulator$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/framerate_regulator$(DependSuffix)
	$(RM) $(IntermediateDirectory)/framerate_regulator$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/image_cache$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/image_cache$(DependSuffix)
	$(RM) $(IntermediateDirectory)/image_cache$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/logger$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/logger$(DependSuffix)
	$(RM) $(IntermediateDirectory)/logger$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/f_exception$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/f_exception$(DependSuffix)
	$(RM) $(IntermediateDirectory)/f_exception$(PreprocessSuffix)
	$(RM) $(OutputFile)
	$(RM) $(OutputFile).exe
	$(RM) "H:\codelite\CodeLite\workspace\.build-release\Tetris"


