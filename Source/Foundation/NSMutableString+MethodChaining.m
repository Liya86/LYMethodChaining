//
//  NSMutableString+MethodChaining.m
//  LYMethodChaining
//
//  Created by Liya on 2018/1/10.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import "LYMethodChainingMacros.h"
#import "NSMutableString+MethodChaining.h"
#import "NSString+LYFoundation.h"

@implementation NSMutableString (MethodChaining)
- (NSMutableString * (^)(NSRange, NSString *))mc_replaceCharacters {
    MC_Weakify(self) return ^id(NSRange range, NSString *aString) {
        MC_Strongify(self)
            NSRange tmpRange = [self ly_rangeWithin:range];
        if (ly_isNotEmptyString(aString)) {
            [self replaceCharactersInRange:tmpRange withString:aString];
        } else {
            [self deleteCharactersInRange:tmpRange];
        }
        return self;
    };
}

- (NSMutableString * (^)(NSString *, NSUInteger))mc_insertString {
    MC_Weakify(self) return ^id(NSString *aString, NSUInteger loc) {
        MC_Strongify(self) if (ly_isNotEmptyString(aString)) {
            NSUInteger tmpLoc = [self ly_loctionWithin:loc];
            [self insertString:aString atIndex:tmpLoc];
        }
        return self;
    };
}

- (NSMutableString * (^)(NSRange))mc_deleteCharacters {
    MC_Weakify(self) return ^id(NSRange range) {
        MC_Strongify(self)
            NSRange tmpRange = [self ly_rangeWithin:range];
        [self deleteCharactersInRange:tmpRange];
        return self;
    };
}

- (NSMutableString * (^)(NSString *))mc_appendingString {
    MC_Weakify(self) return ^id(NSString *aString) {
        MC_Strongify(self) if (ly_isNotEmptyString(aString)) {
            [self appendString:aString];
        }
        return self;
    };
}

- (NSMutableString * (^)(NSString *, ...))mc_appendingFormat {
    MC_Weakify(self) return ^id(NSString *format, ...) {
        MC_Strongify(self)
            va_list args;
        va_start(args, format);
        NSString *str = [[NSString alloc] initWithFormat:format arguments:args];
        [self appendString:str];
        va_end(args);
        return self;
    };
}

- (NSMutableString * (^)(NSString *))mc_setString {
    MC_Weakify(self) return ^id(NSString *aString) {
        MC_Strongify(self) if (ly_isString(aString)) {
            [self setString:aString];
        }
        return @"".mutableCopy;
    };
}

- (NSMutableString * (^)(NSString *))mc_clear {
    return ^id(NSString *aString) {
        return @"".mutableCopy;
    };
}

@end
