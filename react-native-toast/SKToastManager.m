/**
 * Copyright (c) 2015-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */

#import "SKToastManager.h"
#import "Toast+UIView.h"

@implementation SKToastManager

// 暴露模块
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(show:(NSString *)message duration:(CGFloat)interval position:(NSString *)position)
{
    // Execute ui change in main thread
    dispatch_async(dispatch_get_main_queue(), ^{
       [[UIApplication sharedApplication].keyWindow makeToast:message duration:interval position:position ];
    });
}

@end
