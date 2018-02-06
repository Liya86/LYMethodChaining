//
//  NSMutableDictionary+LYFoundation.m
//  LYMethodChaining
//
//  Created by Liya on 2018/1/16.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import "NSMutableDictionary+LYFoundation.h"

@implementation NSMutableDictionary (LYFoundation)
- (void)ly_setObject:(id)anObject forKey:(id)aKey {
    if (aKey) {
        if (anObject) {
            [self setObject:anObject forKey:aKey];
        } else {
            [self setNilValueForKey:aKey];
        }
    }
}
@end
