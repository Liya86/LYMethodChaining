//
//  UITextView+MethodChaining.m
//  LYMethodChaining
//
//  Created by Liya on 2018/1/10.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import "LYMethodChainingMacros.h"
#import "UITextView+MethodChaining.h"

@implementation UITextView (MethodChaining)
- (UITextView * (^)(id<UITextViewDelegate>))mc_delegate {
    MC_Weakify(self) return ^UITextView *(id<UITextViewDelegate> delegate) {
        MC_Strongify(self)
            self.delegate = delegate;
        return self;
    };
}

- (UITextView * (^)(NSString *))mc_text {
    MC_Weakify(self) return ^UITextView *(NSString *text) {
        MC_Strongify(self)
            self.text = text;
        return self;
    };
}

- (UITextView * (^)(UIFont *))mc_font {
    MC_Weakify(self) return ^UITextView *(UIFont *font) {
        MC_Strongify(self)
            self.font = font;
        return self;
    };
}

- (UITextView * (^)(UIColor *))mc_textColor {
    MC_Weakify(self) return ^UITextView *(UIColor *textColor) {
        MC_Strongify(self)
            self.textColor = textColor;
        return self;
    };
}

- (UITextView * (^)(NSTextAlignment))mc_textAlignment {
    MC_Weakify(self) return ^UITextView *(NSTextAlignment textAlignment) {
        MC_Strongify(self)
            self.textAlignment = textAlignment;
        return self;
    };
}

- (UITextView * (^)(NSRange))mc_selectedRange {
    MC_Weakify(self) return ^UITextView *(NSRange selectedRange) {
        MC_Strongify(self)
            self.selectedRange = selectedRange;
        return self;
    };
}

- (UITextView * (^)(BOOL))mc_editable {
    MC_Weakify(self) return ^UITextView *(BOOL editable) {
        MC_Strongify(self)
            self.editable = editable;
        return self;
    };
}

- (UITextView * (^)(BOOL))mc_selectable {
    MC_Weakify(self) return ^UITextView *(BOOL selectable) {
        MC_Strongify(self)
            self.selectable = selectable;
        return self;
    };
}

- (UITextView * (^)(UIDataDetectorTypes))mc_dataDetectorTypes {
    MC_Weakify(self) return ^UITextView *(UIDataDetectorTypes dataDetectorTypes) {
        MC_Strongify(self)
            self.dataDetectorTypes = dataDetectorTypes;
        return self;
    };
}

- (UITextView * (^)(BOOL))mc_allowsEditingTextAttributes {
    MC_Weakify(self) return ^UITextView *(BOOL allowsEditingTextAttributes) {
        MC_Strongify(self)
            self.allowsEditingTextAttributes = allowsEditingTextAttributes;
        return self;
    };
}

- (UITextView * (^)(NSAttributedString *))mc_attributedText {
    MC_Weakify(self) return ^UITextView *(NSAttributedString *attributedText) {
        MC_Strongify(self)
            self.attributedText = attributedText;
        return self;
    };
}

- (UITextView * (^)(NSDictionary<NSString *, id> *))mc_typingAttributes {
    MC_Weakify(self) return ^UITextView *(NSDictionary<NSString *, id> *typingAttributes) {
        MC_Strongify(self)
            self.typingAttributes = typingAttributes;
        return self;
    };
}

- (UITextView * (^)(NSRange))mc_scrollRangeToVisible {
    MC_Weakify(self) return ^UITextView *(NSRange range) {
        MC_Strongify(self)
            [self scrollRangeToVisible:range];
        return self;
    };
}

- (UITextView * (^)(UIEdgeInsets))mc_textContainerInset {
    MC_Weakify(self) return ^UITextView *(UIEdgeInsets textContainerInset) {
        MC_Strongify(self)
            self.textContainerInset = textContainerInset;
        return self;
    };
}

- (UITextView * (^)(NSDictionary<NSString *, id> *))mc_linkTextAttributes {
    MC_Weakify(self) return ^UITextView *(NSDictionary<NSString *, id> *linkTextAttributes) {
        MC_Strongify(self)
            self.linkTextAttributes = linkTextAttributes;
        return self;
    };
}
@end
