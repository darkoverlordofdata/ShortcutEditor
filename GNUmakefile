#
# GNUmakefile - Generated by ProjectCenter
#
ifeq ($(GNUSTEP_MAKEFILES),)
 GNUSTEP_MAKEFILES := $(shell gnustep-config --variable=GNUSTEP_MAKEFILES 2>/dev/null)
endif
ifeq ($(GNUSTEP_MAKEFILES),)
 $(error You need to set GNUSTEP_MAKEFILES before compiling!)
endif

include $(GNUSTEP_MAKEFILES)/common.make

#
# ShortcutEditor
#
VERSION = 1.0.0
PACKAGE_NAME = ShortcutEditor
APP_NAME = ShortcutEditor
ShortcutEditor_APPLICATION_ICON = ShortcutEditor.tiff


#
# Resource files
#
ShortcutEditor_RESOURCE_FILES = \
Resources/ShortcutEditor.tiff 



#
# Class files
#
ShortcutEditor_OBJC_FILES = \
Source/main.m \
Source/AppDelegate.m \
Source/ShortcutEditor.m 


#
# Makefiles
#
-include GNUmakefile.preamble
include $(GNUSTEP_MAKEFILES)/aggregate.make
include $(GNUSTEP_MAKEFILES)/application.make
-include GNUmakefile.postamble