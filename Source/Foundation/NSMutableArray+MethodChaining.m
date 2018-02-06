//
//  NSMutableArray+MethodChaining.m
//  LYMethodChaining
//
//  Created by Liya on 2018/1/10.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import "LYMethodChainingMacros.h"
#import "NSMutableArray+MethodChaining.h"

@implementation NSMutableArray (MethodChaining)
- (NSMutableArray * (^)(id))mc_addObject {
    MC_Weakify(self) return ^NSMutableArray *(id anObject) {
        MC_Strongify(self) if (anObject) {
            [self addObject:anObject];
        }
        return self;
    };
}

- (NSMutableArray * (^)(id, NSUInteger))mc_addObjectAtIndex {
    MC_Weakify(self) return ^NSMutableArray *(id anObject, NSUInteger index) {
        MC_Strongify(self) if (anObject) {
            if (index >= self.count) {
                [self addObject:anObject];
            } else {
                [self insertObject:anObject atIndex:index];
            }
        }
        return self;
    };
}

- (NSMutableArray * (^)(void))mc_removeLastObject {
    MC_Weakify(self) return ^NSMutableArray *(void) {
        MC_Strongify(self)
            [self removeLastObject];
        return self;
    };
}

- (NSMutableArray * (^)(void))mc_removeFirstObject {
    MC_Weakify(self) return ^NSMutableArray *(void) {
        MC_Strongify(self) if (self.count) {
            [self removeObjectAtIndex:0];
        }
        return self;
    };
}

- (NSMutableArray * (^)(NSUInteger))mc_removeObjectAtIndex {
    MC_Weakify(self) return ^NSMutableArray *(NSUInteger index) {
        MC_Strongify(self) if (index >= self.count) {
            [self removeLastObject];
        }
        else {
            [self removeObjectAtIndex:index];
        }
        return self;
    };
}

- (NSMutableArray * (^)(NSUInteger, id))mc_replaceObject {
    MC_Weakify(self) return ^NSMutableArray *(NSUInteger index, id anObject) {
        MC_Strongify(self) if (anObject) {
            if (index < self.count) {
                [self addObject:anObject];
            } else {
                [self replaceObjectAtIndex:index withObject:anObject];
            }
        }
        return self;
    };
}

- (NSMutableArray * (^)(id))mc_replaceLastObject {
    MC_Weakify(self) return ^NSMutableArray *(id anObject) {
        MC_Strongify(self) if (anObject) {
            if (self.count) {
                [self replaceObjectAtIndex:self.count - 1 withObject:anObject];
            } else {
                [self addObject:anObject];
            }
        }
        return self;
    };
}

- (NSMutableArray * (^)(id))mc_replaceFirstObject {
    MC_Weakify(self) return ^NSMutableArray *(id anObject) {
        MC_Strongify(self) if (anObject) {
            if (self.count) {
                [self replaceObjectAtIndex:0 withObject:anObject];
            } else {
                [self addObject:anObject];
            }
        }
        return self;
    };
}

- (NSMutableArray * (^)(NSArray *))mc_addObjects {
    MC_Weakify(self) return ^NSMutableArray *(NSArray *otherArray) {
        MC_Strongify(self) if (otherArray.count) {
            [self addObjectsFromArray:otherArray];
        }
        return self;
    };
}

- (NSMutableArray * (^)(NSUInteger, NSUInteger))mc_exchangeObjectAtIndex {
    MC_Weakify(self) return ^NSMutableArray *(NSUInteger idx1, NSUInteger idx2) {
        MC_Strongify(self) if (idx1 >= self.count) {
            idx1 = self.count - 1;
        }
        if (idx2 >= self.count) {
            idx2 = self.count - 1;
        }
        if (idx1 != idx2) {
            [self exchangeObjectAtIndex:idx1 withObjectAtIndex:idx2];
        }
        return self;
    };
}

- (NSMutableArray * (^)(void))mc_removeAllObjects {
    MC_Weakify(self) return ^NSMutableArray *(void) {
        MC_Strongify(self)
            [self removeAllObjects];
        return self;
    };
}

- (NSMutableArray * (^)(id))mc_removeObject {
    MC_Weakify(self) return ^NSMutableArray *(id anObject) {
        MC_Strongify(self) if (anObject) {
            [self removeObject:anObject];
        }
        return self;
    };
}

- (NSMutableArray * (^)(id, NSRange))mc_removeObjectInRange {
    MC_Weakify(self) return ^NSMutableArray *(id anObject, NSRange range) {
        MC_Strongify(self) if (anObject) {
            if (range.location > self.count) {
                range.location = self.count;
            }
            if (range.location + range.length > self.count) {
                range.length = self.count - range.location;
            }
            [self removeObject:anObject inRange:range];
        }
        return self;
    };
}

- (NSMutableArray * (^)(id))mc_removeObjectIdenticalTo {
    MC_Weakify(self) return ^NSMutableArray *(id anObject) {
        MC_Strongify(self) if (anObject) {
            [self removeObjectIdenticalTo:anObject];
        }
        return self;
    };
}

- (NSMutableArray * (^)(id, NSRange))mc_removeObjectIdenticalToInRange {
    MC_Weakify(self) return ^NSMutableArray *(id anObject, NSRange range) {
        MC_Strongify(self) if (anObject) {
            if (range.location > self.count) {
                range.location = self.count;
            }
            if (range.location + range.length > self.count) {
                range.length = self.count - range.location;
            }
            [self removeObjectIdenticalTo:anObject inRange:range];
        }
        return self;
    };
}

- (NSMutableArray * (^)(NSRange))mc_removeObjectsInRange {
    MC_Weakify(self) return ^NSMutableArray *(NSRange range) {
        MC_Strongify(self) if (range.location > self.count) {
            range.location = self.count;
        }
        if (range.location + range.length > self.count) {
            range.length = self.count - range.location;
        }
        [self removeObjectsInRange:range];
        return self;
    };
}

- (NSMutableArray * (^)(NSArray *))mc_removeObjectsInArray {
    MC_Weakify(self) return ^NSMutableArray *(NSArray *otherArray) {
        MC_Strongify(self) if (otherArray.count) {
            [self removeObjectsInArray:otherArray];
        }
        return self;
    };
}

- (NSMutableArray * (^)(NSArray *))mc_setArray {
    MC_Weakify(self) return ^NSMutableArray *(NSArray *otherArray) {
        MC_Strongify(self) if (otherArray) {
            [self setArray:otherArray];
        }
        else {
            [self removeAllObjects];
        }
        return self;
    };
}
@end
