//
//  NSObject+MethodChaining.m
//  LYMethodChaining
//
//  Created by Liya on 2018/1/10.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import "LYMethodChainingMacros.h"
#import "NSObject+MethodChaining.h"
#import <objc/NSObjCRuntime.h>
#import <objc/runtime.h>

@implementation NSObject (MethodChaining)
- (mc_chainingBlock)mc_chaining {
    MC_Weakify(self);
    return ^id(NSString *keypath, id value) {
        MC_Strongify(self) if (keypath) {
            NSArray *keys = [keypath componentsSeparatedByString:@"."];
            NSString *lastKey = nil;
            Class lastClass = [self class];
            NSString *lastType = nil;
            for (NSString *key in keys) {
                NSString *key_ = key;
                Ivar ivar = class_getInstanceVariable(lastClass, [key_ UTF8String]);
                if (ivar == NULL && ![key_ hasSuffix:@"_"]) {
                    key_ = [NSString stringWithFormat:@"_%@", key_];
                    ivar = class_getInstanceVariable([self class], [key_ UTF8String]);
                }
                if (ivar) {
                    lastKey = key_;
                    lastClass = NSClassFromString([NSString stringWithUTF8String:ivar_getName(ivar)]);
                    lastType = [NSString stringWithUTF8String:ivar_getTypeEncoding(ivar)];
                } else {
                    lastKey = nil;
                    lastType = nil;
                    break;
                }
            }
            if (lastKey) {
                if (value) {
                    [self setValue:value forKeyPath:keypath];
                } else if (lastClass) {
                    [self setNilValueForKey:keypath];
                }
            }
        }
        return self;
    };
}

@end
