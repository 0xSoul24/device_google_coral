#
# Copyright (C) 2018 The Android Open-Source Project
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

ifdef AUTOMOTIVE_PRODUCT_PATH
  #RBC# include_top device/google/auto_tcu
  #RBC# include_top device/google/pixel_tcu
  #RBC# include_top device/google_car
  include device/$(AUTOMOTIVE_PRODUCT_PATH)/BoardConfig.mk
else
  TARGET_BOOTLOADER_BOARD_NAME := coral
  TARGET_SCREEN_DENSITY := 560
  TARGET_RECOVERY_UI_MARGIN_HEIGHT := 165

  include device/google/coral/BoardConfig-common.mk
  include device/google/coral/coral/BoardConfigEvolution.mk
endif

include vendor/google/coral/BoardConfigVendor.mk
