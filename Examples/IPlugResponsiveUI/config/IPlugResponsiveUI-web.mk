# IPLUG2_ROOT should point to the top level IPLUG2 folder from the project folder
# By default, that is three directories up from /Examples/IPlugResponsiveUI/config
IPLUG2_ROOT = ../../..

include ../../../common-web.mk

SRC += $(PROJECT_ROOT)/IPlugResponsiveUI.cpp 

WEB_SRC += $(IGRAPHICS_PATH)/Extras/IGraphicsImGui.cpp

# WAM_SRC +=

#WAM_CFLAGS +=
WEB_CFLAGS += -DIGRAPHICS_CANVAS -DIGRAPHICS_IMGUI #-DNDEBUG=1

WAM_LDFLAGS += -O3 -s EXPORT_NAME="'AudioWorkletGlobalScope.WAM.IPlugResponsiveUI'" -s ASSERTIONS=0

WEB_LDFLAGS += -O3 -s ASSERTIONS=0

WEB_LDFLAGS += $(NANOVG_LDFLAGS)
