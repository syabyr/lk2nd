# SPDX-License-Identifier: BSD-3-Clause
# lk2nd for CMCC W1A (MSM8909W)
#
# Display: cont-splash. lk2nd reuses the framebuffer set up by the stock
# aboot (detected at 0x83200000, 400x400 RGB888) and draws the fastboot
# menu on top of it. The panel-init path (rm67162_wqvga_cmd) crashes on
# this MDP3/MSM8909W device, so cont-splash is used instead.
#
# Entry: the menu is always shown on boot with a 4-second timeout before
# auto-continuing to Android. Press Volume-Up to interact with the menu.
# Stock aboot intercepts Volume-Up during early boot, so holding the key
# doesn't work. FORCE_FASTBOOT + auto-continue timeout avoids this.
TARGET := msm8909
LK2ND_DISPLAY := cont-splash
LK2ND_FORCE_FASTBOOT := 1
LK2ND_DTBS := msm8909-cmcc-w1a.dtb
include lk2nd/project/lk2nd.mk
