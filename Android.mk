#
# Copyright (C) 2020-2022 SHIFT GmbH
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
#

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_PACKAGE_NAME := SHIFT-PartnerCustomization
LOCAL_MODULE_OWNER := shift
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(call all-java-files-under, src)
LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res
LOCAL_SYSTEM_EXT_MODULE := true
LOCAL_CERTIFICATE := platform
LOCAL_SDK_VERSION := current

# Override GMS sample integration packages
LOCAL_OVERRIDES_PACKAGES := \
    GmsSampleIntegration \
    GmsEEAType4cIntegration \

# Override Lineage wallpapers
LOCAL_OVERRIDES_PACKAGES += \
    Backgrounds \

include $(BUILD_PACKAGE)
