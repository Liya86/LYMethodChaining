//
//  LYAssertHandler.h
//  LYMethodChaining
//
//  Created by Liya on 2018/2/13.
//  Copyright © 2018年 Liya. All rights reserved.
//  使用
//  LYAssertHandler *assertHandler = [[LYAssertHandler alloc] init];
//  给当前的线程
//  [[[NSThread currentThread] threadDictionary] setValue:assertHandler
//                                               forKey:NSAssertionHandlerKey];
//  只打印错误

#import <Foundation/Foundation.h>

@interface LYAssertHandler : NSAssertionHandler

@end
