//
//  NSString+MethodChaining.m
//  LYMethodChaining
//
//  Created by Liya on 2018/1/11.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import "LYMethodChainingMacros.h"
#import "NSString+LYFoundation.h"
#import "NSString+MethodChaining.h"

@implementation NSString (MethodChaining)
#pragma mark - trimming
/**
 * 截断相关
 */
- (NSString * (^)(void))mc_trimming {
    MC_Weakify(self) return ^NSString *(void) {
        MC_Strongify(self) return [self ly_trimmingString];
    };
}

- (NSString * (^)(void))mc_trimmingNewline {
    MC_Weakify(self) return ^NSString *(void) {
        MC_Strongify(self) return [self ly_trimmingWithNewlineString];
    };
}

- (NSString * (^)(void))mc_trimmingSpace {
    MC_Weakify(self) return ^NSString *(void) {
        MC_Strongify(self) return [self ly_trimmingWithSpaceString];
    };
}

- (NSString * (^)(void))mc_removeAllSpace {
    MC_Weakify(self) return ^NSString *(void) {
        MC_Strongify(self) return [self ly_removeAllSpace];
    };
}

- (NSString * (^)(void))mc_removeAllNewline {
    MC_Weakify(self) return ^NSString *(void) {
        MC_Strongify(self) return [self ly_removeAllNewline];
    };
}

- (NSArray<NSString *> * (^)(NSString *))mc_componentsSeparatedByCharacters {
    MC_Weakify(self) return ^NSArray<NSString *> *(NSString *aString) {
        MC_Strongify(self) return [self ly_componentsSeparatedByCharactersInSet:aString];
    };
}

- (NSArray<NSString *> * (^)(NSString *))mc_componentsSeparatedByString {
    MC_Weakify(self) return ^NSArray<NSString *> *(NSString *aString) {
        MC_Strongify(self) if (ly_isNotEmptyString(aString)) {
            return [self componentsSeparatedByString:aString];
        }
        return @[self];
    };
}

- (NSString * (^)(NSString *))mc_trimmingCharactersInSet {
    MC_Weakify(self) return ^NSString *(NSString *aString) {
        MC_Strongify(self) return [self ly_trimmingCharactersInSet:aString];
    };
}

#pragma mark - 系统常规功能
- (NSString * (^)(NSUInteger))mc_substringFromIndex {
    MC_Weakify(self) return ^NSString *(NSUInteger from) {
        MC_Strongify(self) return [self substringFromIndex:[self ly_loctionWithin:from]];
    };
}

- (NSString * (^)(NSUInteger))mc_substringToIndex {
    MC_Weakify(self) return ^NSString *(NSUInteger to) {
        MC_Strongify(self) return [self substringToIndex:[self ly_loctionWithin:to]];
    };
}

- (NSString * (^)(NSRange))mc_substringWithRange {
    MC_Weakify(self) return ^NSString *(NSRange range) {
        MC_Strongify(self) return [self substringWithRange:[self ly_rangeWithin:range]];
    };
}

- (NSString * (^)(NSUInteger))mc_substringFromIndexAvoidBreakingUpEmoji {
    MC_Weakify(self) return ^NSString *(NSUInteger from) {
        MC_Strongify(self) return self.mc_substringFromIndex([self rangeOfComposedCharacterSequenceAtIndex:[self ly_loctionWithin:from]].location);
    };
}

- (NSString * (^)(NSUInteger))mc_substringToIndexAvoidBreakingUpEmoji {
    MC_Weakify(self) return ^NSString *(NSUInteger to) {
        MC_Strongify(self) return self.mc_substringToIndex(NSMaxRange([self rangeOfComposedCharacterSequenceAtIndex:[self ly_loctionWithin:to]]));
    };
}

- (NSString * (^)(NSRange))mc_substringWithRangeAvoidBreakingUpEmoji {
    MC_Weakify(self) return ^NSString *(NSRange range) {
        MC_Strongify(self) return [self substringWithRange:[self rangeOfComposedCharacterSequencesForRange:[self ly_rangeWithin:range]]];
    };
}

- (NSString * (^)(NSString *))mc_appendingString {
    MC_Weakify(self) return ^NSString *(NSString *aString) {
        MC_Strongify(self) if (ly_isNotEmptyString(aString)) {
            return [self stringByAppendingString:aString];
        }
        return self.copy;
    };
}

- (NSString * (^)(NSString *, ...))mc_appendingFormat {
    MC_Weakify(self) return ^id(NSString *format, ...) {
        MC_Strongify(self)
            va_list args;
        va_start(args, format);
        NSString *str = [[NSString alloc] initWithFormat:format arguments:args];
        str = self.mc_appendingString(str);
        va_end(args);
        return str;
    };
}

@end
