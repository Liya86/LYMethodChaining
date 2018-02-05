//
//  NSString+LYFoundation.m
//  LYMethodChaining
//
//  Created by Liya on 2018/1/11.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import "NSString+LYFoundation.h"

#pragma mark - C function
inline BOOL ly_isString(NSString *string) {
    return [string isKindOfClass:[NSString class]];
}

inline BOOL ly_isEmptyString(NSString *string) {
    if (![string isKindOfClass:[NSString class]]) {
        YES;
    }
    if (string == nil) {
        return YES;
    }
    return NO;
}

inline BOOL ly_isNotEmptyString(NSString *string) {
    return !ly_isEmptyString(string);
}

@implementation NSString (LYFoundation)
#pragma mark - Objective_C
- (BOOL)ly_rangeIsOutof:(NSRange)range {
    return ![self ly_rangeIsWithin:range];
}

- (BOOL)ly_rangeIsWithin:(NSRange)range {
    NSRange allRange = NSMakeRange(0, self.length);
    return range.location >= allRange.location && range.location <= NSMaxRange(allRange) && NSMaxRange(range) < NSMaxRange(allRange);
}

- (BOOL)ly_loctionIsWithin:(NSUInteger)loc {
    NSRange allRange = NSMakeRange(0, self.length);
    return loc >= allRange.location && loc <= NSMaxRange(allRange);
}

- (NSUInteger)ly_loctionWithin:(NSUInteger)loc {
    NSUInteger tmpLoc = loc;
    if (![self ly_loctionIsWithin:loc]) {
        if (tmpLoc > self.length) {
            tmpLoc = self.length;
        }
    }
    return tmpLoc;
}

- (NSRange)ly_rangeWithin:(NSRange)range {
    NSRange tmpRange = range;
    if ([self ly_rangeIsOutof:range]) {
        if (tmpRange.location > self.length) {
            tmpRange.location = self.length;
        }
        if (tmpRange.length + tmpRange.location > self.length) {
            tmpRange.length = self.length - tmpRange.location;
        }
    }
    return tmpRange;
}

- (NSString *)ly_trimmingString:(NSString *)aString {
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:aString]];
}

- (NSString *)ly_trimmingString {
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

- (NSString *)ly_trimmingWithNewlineString {
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet newlineCharacterSet]];
}

- (NSString *)ly_trimmingWithSpaceString {
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
}

- (NSArray<NSString *> *)ly_componentsSeparatedByCharactersInSet:(NSString *)aString {
    return [[self componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:aString]] filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"self <> ''"]];
}

- (NSArray<NSString *> *)ly_componentsSeparatedByString:(NSString *)separator {
    return [[self componentsSeparatedByString:separator] filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"self <> ''"]];
}

- (NSString *)ly_trimmingCharactersInSet:(NSString *)aString {
    return [[self ly_componentsSeparatedByCharactersInSet:aString] componentsJoinedByString:@""];
}

- (NSString *)ly_removeAllSpace {
    return [self stringByReplacingOccurrencesOfString:@" " withString:@""];
}

- (NSString *)ly_removeAllNewline {
    return [self ly_trimmingCharactersInSet:@"\r\n"];
}


@end
