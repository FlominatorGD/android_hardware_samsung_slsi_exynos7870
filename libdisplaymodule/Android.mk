# Copyright (C) 2015 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_SRC_FILES += \
	./../../$(TARGET_SOC)/libdisplaymodule/ExynosPrimaryDisplay.cpp \
	./../../$(TARGET_SOC)/libdisplaymodule/ExynosDisplayResourceManagerModule.cpp

#
LOCAL_HEADER_LIBRARIES := libhardware_headers libcutils_headers libhardware_legacy_headers

LOCAL_C_INCLUDES += system/core/include \
                    system/core/libcutils/include \
										frameworks/native/opengl/include

ifeq ($(BOARD_USES_DUAL_DISPLAY), true)
LOCAL_SRC_FILES += ./../../$(TARGET_SOC)/libdisplaymodule/ExynosSecondaryDisplayModule.cpp
endif
