//
//  NSArray+MethodChaining.m
//  LYMethodChaining
//
//  Created by Liya on 2018/1/11.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import "LYMethodChainingMacros.h"
#import "NSArray+MethodChaining.h"

@implementation NSArray (MethodChaining)
- (NSArray * (^)(id))mc_addingObject {
    MC_Weakify(self) return ^NSArray *(id anObject) {
        MC_Strongify(self) if (anObject) {
            NSMutableArray *mutableArray = self.mutableCopy;
            [mutableArray addObject:anObject];
            return mutableArray.copy;
        }
        return self;
    };
}

- (NSArray * (^)(NSArray *))mc_addingObjects {
    MC_Weakify(self) return ^NSArray *(NSArray *otherArray) {
        MC_Strongify(self) if (otherArray.count) {
            NSMutableArray *mutableArray = self.mutableCopy;
            [mutableArray addObjectsFromArray:otherArray];
            return mutableArray.copy;
        }
        return self;
    };
}

- (id (^)(NSArray *))mc_firstObjectCommonWithArray {
    MC_Weakify(self) return ^id(NSArray *otherArray) {
        if (otherArray.count) {
            MC_Strongify(self) return [self firstObjectCommonWithArray:otherArray];
        }
        return nil;
    };
}

- (NSArray * (^)(NSComparator NS_NOESCAPE))mc_sortedArrayUsingComparator {
    MC_Weakify(self) return ^NSArray *(NSComparator NS_NOESCAPE cmptr) {
        MC_Strongify(self) return [self sortedArrayUsingComparator:cmptr];
    };
}

- (NSArray * (^)(NSComparator NS_NOESCAPE))mc_sortedArrayConcurrent {
    MC_Weakify(self) return ^NSArray *(NSComparator NS_NOESCAPE cmptr) {
        MC_Strongify(self) return [self sortedArrayWithOptions:NSSortConcurrent usingComparator:cmptr];
    };
}

- (NSArray * (^)(SEL))mc_sortedArrayUsingSelector {
    MC_Weakify(self) return ^NSArray *(SEL comparator) {
        MC_Strongify(self) if (comparator) {
            return [self sortedArrayUsingSelector:comparator];
        }
        return self;
    };
}

- (NSArray * (^)(NSString *, BOOL))mc_sortedArrayByKeyPath {
    MC_Weakify(self) return ^NSArray *(NSString *keyPath, BOOL ascending) {
        MC_Strongify(self) if (keyPath) {
            NSSortDescriptor *descriptor = [[NSSortDescriptor alloc] initWithKey:keyPath ascending:ascending];
            return [self sortedArrayUsingDescriptors:@[descriptor]];
        }
        return self;
    };
}

- (NSArray * (^)(NSRange))mc_subarray {
    MC_Weakify(self) return ^NSArray *(NSRange range) {
        MC_Strongify(self) if (range.location > self.count) {
            range.location = self.count;
        }
        if (range.location + range.length > self.count) {
            range.length = self.count - range.location;
        }
        return [self subarrayWithRange:range];
    };
}

- (NSArray * (^)(NSUInteger))mc_subarrayFromIndex {
    MC_Weakify(self) return ^NSArray *(NSUInteger from) {
        MC_Strongify(self) if (from < self.count) {
            return [self subarrayWithRange:NSMakeRange(from, self.count - from)];
        }
        return @[];
    };
}

- (NSArray * (^)(NSUInteger))mc_subarrayToIndex {
    MC_Weakify(self) return ^NSArray *(NSUInteger to) {
        MC_Strongify(self) if (to >= self.count) {
            to = self.count - 1;
        }
        return [self subarrayWithRange:NSMakeRange(0, to)];
        ;
    };
}

- (NSArray * (^)(SEL))mc_makeObjectsPerformSelector {
    MC_Weakify(self) return ^NSArray *(SEL aSelector) {
        MC_Strongify(self) if (aSelector) {
            [self makeObjectsPerformSelector:aSelector];
        }
        return self;
    };
}

- (NSArray * (^)(SEL, id))mc_makeObjectsPerformSelectorWithObject {
    MC_Weakify(self) return ^NSArray *(SEL aSelector, id argument) {
        MC_Strongify(self) if (aSelector) {
            [self makeObjectsPerformSelector:aSelector withObject:argument];
        }
        return self;
    };
}

- (NSArray * (^)(NSIndexSet *))mc_objectsAtIndexes {
    MC_Weakify(self) return ^NSArray *(NSIndexSet *indexes) {
        if (indexes.count) {
            MC_Strongify(self) return [self objectsAtIndexes:indexes];
        }
        return @[];
    };
}

- (NSArray * (^)(void(NS_NOESCAPE ^)(id, NSUInteger, BOOL *)))mc_enumerateObjectsUsingBlock {
    MC_Weakify(self) return ^NSArray *(void (^block)(id, NSUInteger, BOOL *)) {
        MC_Strongify(self) if (block) {
            [self enumerateObjectsUsingBlock:block];
        }
        return self;
    };
}

- (NSArray * (^)(void(NS_NOESCAPE ^)(id, NSUInteger, BOOL *)))mc_enumerateObjectsUsingBlockConcurrent {
    MC_Weakify(self) return ^NSArray *(void (^block)(id, NSUInteger, BOOL *)) {
        MC_Strongify(self) if (block) {
            [self enumerateObjectsWithOptions:NSEnumerationConcurrent usingBlock:block];
        }
        return self;
    };
}

- (id (^)(NSUInteger))mc_objectAtIndexedSubscript {
    MC_Weakify(self) return ^id(NSUInteger idx) {
        MC_Strongify(self) if (idx >= self.count) {
            idx = self.count - 1;
        }
        return [self objectAtIndexedSubscript:idx];
    };
}


@end
