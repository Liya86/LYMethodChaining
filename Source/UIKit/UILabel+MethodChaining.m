//
//  UILabel+MethodChaining.m
//  LYMethodChaining
//
//  Created by Liya on 2018/1/10.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import "LYMethodChainingMacros.h"
#import "UILabel+MethodChaining.h"

@implementation UILabel (MethodChaining)
- (UILabel * (^)(NSString *))mc_text {
    MC_Weakify(self) return ^UILabel *(NSString *text) {
        MC_Strongify(self)
            self.text = text;
        return self;
    };
}

- (UILabel * (^)(UIFont *))mc_font {
    MC_Weakify(self) return ^UILabel *(UIFont *font) {
        MC_Strongify(self)
            self.font = font;
        return self;
    };
}

- (UILabel * (^)(UIColor *))mc_textColor {
    MC_Weakify(self) return ^UILabel *(UIColor *textColor) {
        MC_Strongify(self)
            self.textColor = textColor;
        return self;
    };
}

- (UILabel * (^)(UIColor *))mc_shadowColor {
    MC_Weakify(self) return ^UILabel *(UIColor *shadowColor) {
        MC_Strongify(self)
            self.shadowColor = shadowColor;
        return self;
    };
}

- (UILabel * (^)(CGSize))mc_shadowOffset {
    MC_Weakify(self) return ^UILabel *(CGSize shadowOffset) {
        MC_Strongify(self)
            self.shadowOffset = shadowOffset;
        return self;
    };
}

- (UILabel * (^)(NSTextAlignment))mc_textAlignment {
    MC_Weakify(self) return ^UILabel *(NSTextAlignment textAlignment) {
        MC_Strongify(self)
            self.textAlignment = textAlignment;
        return self;
    };
}

- (UILabel * (^)(void))mc_textAlignmentLeft {
    MC_Weakify(self) return ^UILabel *(void) {
        MC_Strongify(self)
            self.textAlignment = NSTextAlignmentLeft;
        return self;
    };
}

- (UILabel * (^)(void))mc_textAlignmentRight {
    MC_Weakify(self) return ^UILabel *(void) {
        MC_Strongify(self)
            self.textAlignment = NSTextAlignmentRight;
        return self;
    };
}

- (UILabel * (^)(void))mc_textAlignmentCenter {
    MC_Weakify(self) return ^UILabel *(void) {
        MC_Strongify(self)
            self.textAlignment = NSTextAlignmentCenter;
        return self;
    };
}

- (UILabel * (^)(NSLineBreakMode))mc_lineBreakMode {
    MC_Weakify(self) return ^UILabel *(NSLineBreakMode lineBreakMode) {
        MC_Strongify(self)
            self.lineBreakMode = lineBreakMode;
        return self;
    };
}

- (UILabel * (^)(NSAttributedString *))mc_attributedText {
    MC_Weakify(self) return ^UILabel *(NSAttributedString *attributedText) {
        MC_Strongify(self)
            self.attributedText = attributedText;
        return self;
    };
}

- (UILabel * (^)(UIColor *))mc_highlightedTextColor {
    MC_Weakify(self) return ^UILabel *(UIColor *highlightedTextColor) {
        MC_Strongify(self)
            self.highlightedTextColor = highlightedTextColor;
        return self;
    };
}

- (UILabel * (^)(BOOL))mc_highlighted {
    MC_Weakify(self) return ^UILabel *(BOOL highlighted) {
        MC_Strongify(self)
            self.highlighted = highlighted;
        return self;
    };
}

- (UILabel * (^)(BOOL))mc_userInteractionEnabled {
    MC_Weakify(self) return ^UILabel *(BOOL userInteractionEnabled) {
        MC_Strongify(self)
            self.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}

- (UILabel * (^)(BOOL))mc_enabled {
    MC_Weakify(self) return ^UILabel *(BOOL enabled) {
        MC_Strongify(self)
            self.enabled = enabled;
        return self;
    };
}

- (UILabel * (^)(NSInteger))mc_numberOfLines {
    MC_Weakify(self) return ^UILabel *(NSInteger numberOfLines) {
        MC_Strongify(self)
            self.numberOfLines = numberOfLines;
        return self;
    };
}

- (UILabel * (^)(BOOL))mc_adjustsFontSizeToFitWidth {
    MC_Weakify(self) return ^UILabel *(BOOL adjustsFontSizeToFitWidth) {
        MC_Strongify(self)
            self.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth;
        return self;
    };
}

- (UILabel * (^)(UIBaselineAdjustment))mc_baselineAdjustment {
    MC_Weakify(self) return ^UILabel *(UIBaselineAdjustment baselineAdjustment) {
        MC_Strongify(self)
            self.baselineAdjustment = baselineAdjustment;
        return self;
    };
}

- (UILabel * (^)(CGFloat))mc_minimumScaleFactor {
    MC_Weakify(self) return ^UILabel *(CGFloat minimumScaleFactor) {
        MC_Strongify(self)
            self.minimumScaleFactor = minimumScaleFactor;
        return self;
    };
}

- (UILabel * (^)(BOOL))mc_allowsDefaultTighteningForTruncation {
    MC_Weakify(self) return ^UILabel *(BOOL allowsDefaultTighteningForTruncation) {
        MC_Strongify(self)

            return self;
    };
}

- (UILabel * (^)(CGFloat))mc_preferredMaxLayoutWidth {
    MC_Weakify(self) return ^UILabel *(CGFloat preferredMaxLayoutWidth) {
        MC_Strongify(self)
            self.preferredMaxLayoutWidth = preferredMaxLayoutWidth;
        return self;
    };
}

@end
