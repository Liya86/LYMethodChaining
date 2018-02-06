//
//  NSMutableDictionary+MethodChaining.m
//  LYMethodChaining
//
//  Created by Liya on 2018/1/11.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import "LYMethodChainingMacros.h"
#import "NSMutableDictionary+MethodChaining.h"

@implementation NSMutableDictionary (MethodChaining)
- (NSMutableDictionary * (^)(id<NSCopying>))mc_removeObject {
    MC_Weakify(self) return ^NSMutableDictionary *(id<NSCopying> aKey) {
        MC_Strongify(self) if (aKey) {
            [self removeObjectForKey:aKey];
        }
        return self;
    };
}

- (NSMutableDictionary * (^)(id, id<NSCopying>))mc_setObject {
    MC_Weakify(self) return ^NSMutableDictionary *(id anObject, id<NSCopying> aKey) {
        MC_Strongify(self) if (aKey) {
            if (anObject) {
                [self setObject:anObject forKey:aKey];
            } else {
                [self removeObjectForKey:aKey];
            }
        }
        return self;
    };
}

- (NSMutableDictionary * (^)(NSDictionary *))mc_addEntriesFromDictionary {
    MC_Weakify(self) return ^NSMutableDictionary *(NSDictionary *otherDictionary) {
        MC_Strongify(self) if (otherDictionary.allValues.count) {
            [self addEntriesFromDictionary:otherDictionary];
        }
        return self;
    };
}

- (NSMutableDictionary * (^)(void))mc_removeAllObjects {
    MC_Weakify(self) return ^NSMutableDictionary *(void) {
        MC_Strongify(self)
            [self removeAllObjects];
        return self;
    };
}

- (NSMutableDictionary * (^)(NSArray *))mc_removeObjectsForKeys {
    MC_Weakify(self) return ^NSMutableDictionary *(NSArray *keyArray) {
        MC_Strongify(self) if (keyArray.count) {
            [self removeObjectsForKeys:keyArray];
        }
        return self;
    };
}

- (NSMutableDictionary * (^)(NSDictionary *))mc_setDictionary {
    MC_Weakify(self) return ^NSMutableDictionary *(NSDictionary *otherDictionary) {
        MC_Strongify(self) if (otherDictionary) {
            [self setDictionary:otherDictionary];
        }
        else {
            [self removeAllObjects];
        }
        return self;
    };
}
@end
