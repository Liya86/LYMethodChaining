//
//  NSAttributedString+MethodChaining.m
//  LYMethodChaining
//
//  Created by Liya on 2018/1/11.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import "LYMethodChainingMacros.h"
#import "NSAttributedString+MethodChaining.h"
#import "NSString+LYFoundation.h"
#import <UIKit/UIKit.h>

@implementation NSAttributedString (MethodChaining)
- (NSAttributedString * (^)(NSRange))mc_attributedSubstringFromRange {
    MC_Weakify(self) return ^NSAttributedString *(NSRange range) {
        MC_Strongify(self)
            NSRange tmpRange = [self.string ly_rangeWithin:range];
        return [self attributedSubstringFromRange:tmpRange];
    };
}

- (NSAttributedString * (^)(NSUInteger))mc_attributedSubstringFromIndex {
    MC_Weakify(self) return ^NSAttributedString *(NSUInteger from) {
        MC_Strongify(self)
            from = [self.string ly_loctionWithin:from];
        NSRange range = NSMakeRange(from, self.length - from);
        return [self attributedSubstringFromRange:range];
    };
}

- (NSAttributedString * (^)(NSUInteger))mc_attributedSubstringToIndex {
    MC_Weakify(self) return ^NSAttributedString *(NSUInteger to) {
        MC_Strongify(self) if (to + 1 <= self.length) {
            NSRange range = NSMakeRange(0, to + 1);
            return [self attributedSubstringFromRange:range];
        }
        return self;
    };
}

- (NSAttributedString * (^)(NSRange))mc_attributedSubstringFromRangeAvoidBreakingUpEmoji {
    MC_Weakify(self) return ^NSAttributedString *(NSRange range) {
        MC_Strongify(self) return [self attributedSubstringFromRange:[self.string rangeOfComposedCharacterSequencesForRange:[self.string ly_rangeWithin:range]]];
    };
}

- (NSAttributedString * (^)(NSUInteger))mc_attributedSubstringFromIndexAvoidBreakingUpEmoji {
    MC_Weakify(self) return ^NSAttributedString *(NSUInteger from) {
        MC_Strongify(self) if (from < self.length) {
            NSRange range = NSMakeRange(from, self.length - from);
            return self.mc_attributedSubstringFromRangeAvoidBreakingUpEmoji(range);
        }
        return self;
    };
}

- (NSAttributedString * (^)(NSUInteger))mc_attributedSubstringToIndexAvoidBreakingUpEmoji {
    MC_Weakify(self) return ^NSAttributedString *(NSUInteger to) {
        MC_Strongify(self) if (to + 1 <= self.length) {
            NSRange range = NSMakeRange(0, to + 1);
            return self.mc_attributedSubstringFromRangeAvoidBreakingUpEmoji(range);
        }
        return self;
    };
}

- (NSAttributedString * (^)(NSAttributedStringKey, id, NSRange))mc_setAttribute {
    MC_Weakify(self) return ^NSAttributedString *(NSAttributedStringKey name, id value, NSRange range) {
        MC_Strongify(self) if (name) {
            range = [self.string ly_rangeWithin:range];
            NSMutableAttributedString *mutableAttributedString = self.mutableCopy;
            [mutableAttributedString removeAttribute:name range:range];
            if (value) {
                [mutableAttributedString addAttribute:name value:value range:range];
            }
            return mutableAttributedString.copy;
        }
        return self;
    };
}

- (NSAttributedString * (^)(UIFont *, NSRange))mc_fontForRange {
    MC_Weakify(self) return ^NSAttributedString *(UIFont *font, NSRange range) {
        MC_Strongify(self) return self.mc_setAttribute(NSFontAttributeName, font, range);
    };
}

- (NSAttributedString * (^)(UIFont *))mc_font {
    MC_Weakify(self) return ^NSAttributedString *(UIFont *font) {
        MC_Strongify(self) return self.mc_setAttribute(NSFontAttributeName, font, NSMakeRange(0, self.length));
    };
}

- (NSAttributedString * (^)(UIColor *, NSRange))mc_textColorForRange {
    MC_Weakify(self) return ^NSAttributedString *(UIColor *color, NSRange range) {
        MC_Strongify(self) return self.mc_setAttribute(NSForegroundColorAttributeName, color, range);
    };
}

- (NSAttributedString * (^)(UIColor *))mc_textColor {
    MC_Weakify(self) return ^NSAttributedString *(UIColor *color) {
        MC_Strongify(self) return self.mc_setAttribute(NSForegroundColorAttributeName, color, NSMakeRange(0, self.length));
    };
}

@end
