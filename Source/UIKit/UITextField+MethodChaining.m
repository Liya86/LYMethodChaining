//
//  UITextField+MethodChaining.m
//  LYMethodChaining
//
//  Created by Liya on 2018/1/10.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import "LYMethodChainingMacros.h"
#import "UITextField+MethodChaining.h"

@implementation UITextField (MethodChaining)
- (UITextField * (^)(NSString *))mc_text {
    MC_Weakify(self) return ^UITextField *(NSString *text) {
        MC_Strongify(self)
            self.text = text;
        return self;
    };
}

- (UITextField * (^)(NSString *))mc_placeholder {
    MC_Weakify(self) return ^UITextField *(NSString *placeholder) {
        MC_Strongify(self)
            self.placeholder = placeholder;
        return self;
    };
}

- (UITextField * (^)(NSAttributedString *))mc_attributedText {
    MC_Weakify(self) return ^UITextField *(NSAttributedString *attributedText) {
        MC_Strongify(self)
            self.attributedText = attributedText;
        return self;
    };
}

- (UITextField * (^)(NSAttributedString *))mc_attributedPlaceholder {
    MC_Weakify(self) return ^UITextField *(NSAttributedString *attributedPlaceholder) {
        MC_Strongify(self)
            self.attributedPlaceholder = attributedPlaceholder;
        return self;
    };
}

- (UITextField * (^)(UIColor *))mc_textColor {
    MC_Weakify(self) return ^UITextField *(UIColor *textColor) {
        MC_Strongify(self)
            self.textColor = textColor;
        return self;
    };
}

- (UITextField * (^)(UIFont *))mc_font {
    MC_Weakify(self) return ^UITextField *(UIFont *font) {
        MC_Strongify(self)
            self.font = font;
        return self;
    };
}

- (UITextField * (^)(NSTextAlignment))mc_textAlignment {
    MC_Weakify(self) return ^UITextField *(NSTextAlignment textAlignment) {
        MC_Strongify(self)
            self.textAlignment = textAlignment;
        return self;
    };
}

- (UITextField * (^)(UITextBorderStyle))mc_borderStyle {
    MC_Weakify(self) return ^UITextField *(UITextBorderStyle borderStyle) {
        MC_Strongify(self)
            self.borderStyle = borderStyle;
        return self;
    };
}

- (UITextField * (^)(NSDictionary<NSString *, id> *))mc_defaultTextAttributes {
    MC_Weakify(self) return ^UITextField *(NSDictionary<NSString *, id> *defaultTextAttributes) {
        MC_Strongify(self)
            self.defaultTextAttributes = defaultTextAttributes;
        return self;
    };
}

- (UITextField * (^)(BOOL))mc_clearsOnBeginEditing {
    MC_Weakify(self) return ^UITextField *(BOOL clearsOnBeginEditing) {
        MC_Strongify(self)
            self.clearsOnBeginEditing = clearsOnBeginEditing;
        return self;
    };
}

- (UITextField * (^)(BOOL))mc_adjustsFontSizeToFitWidth {
    MC_Weakify(self) return ^UITextField *(BOOL adjustsFontSizeToFitWidth) {
        MC_Strongify(self)
            self.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth;
        return self;
    };
}

- (UITextField * (^)(CGFloat))mc_minimumFontSize {
    MC_Weakify(self) return ^UITextField *(CGFloat minimumFontSize) {
        MC_Strongify(self)
            self.minimumFontSize = minimumFontSize;
        if (minimumFontSize > 0) {
            self.adjustsFontSizeToFitWidth = YES;
        }
        return self;
    };
}

- (UITextField * (^)(id<UITextFieldDelegate>))mc_delegate {
    MC_Weakify(self) return ^UITextField *(id<UITextFieldDelegate> delegate) {
        MC_Strongify(self)
            self.delegate = delegate;
        return self;
    };
}

- (UITextField * (^)(UIImage *))mc_background {
    MC_Weakify(self) return ^UITextField *(UIImage *background) {
        MC_Strongify(self)
            self.background = background;
        return self;
    };
}

- (UITextField * (^)(UIImage *))mc_disabledBackground {
    MC_Weakify(self) return ^UITextField *(UIImage *disabledBackground) {
        MC_Strongify(self)
            self.disabledBackground = disabledBackground;
        return self;
    };
}

- (UITextField * (^)(BOOL))mc_allowsEditingTextAttributes {
    MC_Weakify(self) return ^UITextField *(BOOL allowsEditingTextAttributes) {
        MC_Strongify(self)
            self.allowsEditingTextAttributes = allowsEditingTextAttributes;
        return self;
    };
}

- (UITextField * (^)(NSDictionary<NSString *, id> *))mc_typingAttributes {
    MC_Weakify(self) return ^UITextField *(NSDictionary<NSString *, id> *typingAttributes) {
        MC_Strongify(self)
            self.typingAttributes = typingAttributes;
        return self;
    };
}

- (UITextField * (^)(UITextFieldViewMode))mc_clearButtonMode {
    MC_Weakify(self) return ^UITextField *(UITextFieldViewMode clearButtonMode) {
        MC_Strongify(self)
            self.clearButtonMode = clearButtonMode;
        return self;
    };
}

- (UITextField * (^)(UITextFieldViewMode))mc_leftViewMode {
    MC_Weakify(self) return ^UITextField *(UITextFieldViewMode leftViewMode) {
        MC_Strongify(self)
            self.leftViewMode = leftViewMode;
        return self;
    };
}

- (UITextField * (^)(UIView *))mc_leftView {
    MC_Weakify(self) return ^UITextField *(UIView *leftView) {
        MC_Strongify(self)
            self.leftView = leftView;
        return self;
    };
}

- (UITextField * (^)(UITextFieldViewMode))mc_rightViewMode {
    MC_Weakify(self) return ^UITextField *(UITextFieldViewMode rightViewMode) {
        MC_Strongify(self)
            self.rightViewMode = rightViewMode;
        return self;
    };
}

- (UITextField * (^)(UIView *))mc_rightView {
    MC_Weakify(self) return ^UITextField *(UIView *rightView) {
        MC_Strongify(self)
            self.rightView = rightView;
        return self;
    };
}

@end
