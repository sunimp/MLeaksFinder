/**
 * Tencent is pleased to support the open source community by making MLeaksFinder available.
 *
 * Copyright (C) 2017 THL A29 Limited, a Tencent company. All rights reserved.
 *
 * Licensed under the BSD 3-Clause License (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at
 *
 * https://opensource.org/licenses/BSD-3-Clause
 *
 * Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
 */

#import "MLeaksMessenger.h"

@implementation MLeaksMessenger

+ (void)alertWithTitle:(NSString *)title message:(NSString *)message {
    [self alertWithTitle:title message:message additionalButtonTitle:nil additionalButtonAction:nil];
}

+ (void)alertWithTitle:(NSString *)title
               message:(NSString *)message
 additionalButtonTitle:(NSString *)additionalButtonTitle
additionalButtonAction:(void (^)(void))additionalButtonAction {
    UIAlertController *alert = [UIAlertController
                                         alertControllerWithTitle:title
                                         message:message
                                         preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        //do something when click button
    }];
    [alert addAction:okAction];
    if (additionalButtonTitle) {
        UIAlertAction *additionalAction = [UIAlertAction actionWithTitle:additionalButtonTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
            if (additionalButtonAction) {
                additionalButtonAction();
            }
        }];
        [alert addAction:additionalAction];
    }
    
    UIWindow *keyWindow = nil;
    NSSet *connectedScenes = [UIApplication sharedApplication].connectedScenes;
    for (UIScene *scene in connectedScenes) {
        if ([scene isKindOfClass:[UIWindowScene class]]) {
            UIWindowScene *windowScene = (UIWindowScene *)scene;
            for (UIWindow *window in windowScene.windows) {
                if (window.isKeyWindow) {
                    keyWindow = window;
                    break;
                }
            }
            if (keyWindow) {
                break;
            }
        }
    }
    [keyWindow.rootViewController presentViewController:alert animated:YES completion:nil];
    NSLog(@"%@: %@", title, message);
}

@end
