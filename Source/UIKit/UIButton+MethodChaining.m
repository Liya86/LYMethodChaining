//
//  UIButton+MethodChaining.m
//  LYMethodChaining
//
//  Created by Liya on 2018/1/10.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import "LYMethodChainingMacros.h"
#import "UIButton+MethodChaining.h"

@implementation UIButton (MethodChaining)
- (UIButton * (^)(UIEdgeInsets))mc_contentEdgeInsets {
    MC_Weakify(self) return ^UIButton *(UIEdgeInsets contentEdgeInsets) {
        MC_Strongify(self)
            self.contentEdgeInsets = contentEdgeInsets;
        return self;
    };
}

- (UIButton * (^)(UIEdgeInsets))mc_titleEdgeInsets {
    MC_Weakify(self) return ^UIButton *(UIEdgeInsets titleEdgeInsets) {
        MC_Strongify(self)
            self.titleEdgeInsets = titleEdgeInsets;
        return self;
    };
}

- (UIButton * (^)(UIEdgeInsets))mc_imageEdgeInsets {
    MC_Weakify(self) return ^UIButton *(UIEdgeInsets imageEdgeInsets) {
        MC_Strongify(self)
            self.imageEdgeInsets = imageEdgeInsets;
        return self;
    };
}

- (UIButton * (^)(BOOL))mc_adjustsImageWhenHighlighted {
    MC_Weakify(self) return ^UIButton *(BOOL adjustsImageWhenHighlighted) {
        MC_Strongify(self)
            self.adjustsImageWhenHighlighted = adjustsImageWhenHighlighted;
        return self;
    };
}

- (UIButton * (^)(BOOL))mc_adjustsImageWhenDisabled {
    MC_Weakify(self) return ^UIButton *(BOOL adjustsImageWhenDisabled) {
        MC_Strongify(self)
            self.adjustsImageWhenDisabled = adjustsImageWhenDisabled;
        return self;
    };
}

- (UIButton * (^)(BOOL))mc_showsTouchWhenHighlighted {
    MC_Weakify(self) return ^UIButton *(BOOL showsTouchWhenHighlighted) {
        MC_Strongify(self)
            self.showsTouchWhenHighlighted = showsTouchWhenHighlighted;
        return self;
    };
}

- (UIButton * (^)(UIColor *))mc_tintColor {
    MC_Weakify(self) return ^UIButton *(UIColor *tintColor) {
        MC_Strongify(self)
            self.tintColor = tintColor;
        return self;
    };
}

- (UIButton * (^)(NSString *))mc_title {
    MC_Weakify(self) return ^UIButton *(NSString *title) {
        MC_Strongify(self)
            [self setTitle:title
                  forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton * (^)(NSString *, UIControlState))mc_titleForState {
    MC_Weakify(self) return ^UIButton *(NSString *title, UIControlState state) {
        MC_Strongify(self)
            [self setTitle:title
                  forState:state];
        return self;
    };
}

- (UIButton * (^)(UIColor *))mc_titleColor {
    MC_Weakify(self) return ^UIButton *(UIColor *color) {
        MC_Strongify(self)
            [self setTitleColor:color
                       forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton * (^)(UIColor *, UIControlState))mc_titleColorForState {
    MC_Weakify(self) return ^UIButton *(UIColor *color, UIControlState state) {
        MC_Strongify(self)
            [self setTitleColor:color
                       forState:state];
        return self;
    };
}

- (UIButton * (^)(UIColor *))mc_titleShadowColor {
    MC_Weakify(self) return ^UIButton *(UIColor *color) {
        MC_Strongify(self)
            [self setTitleShadowColor:color
                             forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton * (^)(UIColor *, UIControlState))mc_titleShadowColorForState {
    MC_Weakify(self) return ^UIButton *(UIColor *color, UIControlState state) {
        MC_Strongify(self)
            [self setTitleShadowColor:color
                             forState:state];
        return self;
    };
}

- (UIButton * (^)(UIImage *))mc_image {
    MC_Weakify(self) return ^UIButton *(UIImage *image) {
        MC_Strongify(self)
            [self setImage:image
                  forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton * (^)(UIImage *, UIControlState))mc_imageForState {
    MC_Weakify(self) return ^UIButton *(UIImage *image, UIControlState state) {
        MC_Strongify(self)
            [self setImage:image
                  forState:state];
        return self;
    };
}

- (UIButton * (^)(UIImage *))mc_backgroundImage {
    MC_Weakify(self) return ^UIButton *(UIImage *image) {
        MC_Strongify(self)
            [self setBackgroundImage:image
                            forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton * (^)(UIImage *, UIControlState))mc_backgroundImageForState {
    MC_Weakify(self) return ^UIButton *(UIImage *image, UIControlState state) {
        MC_Strongify(self)
            [self setBackgroundImage:image
                            forState:state];
        return self;
    };
}

- (UIButton * (^)(NSAttributedString *))mc_attributedTitle {
    MC_Weakify(self) return ^UIButton *(NSAttributedString *title) {
        MC_Strongify(self)
            [self setAttributedTitle:title
                            forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton * (^)(NSAttributedString *, UIControlState))mc_attributedTitleForState {
    MC_Weakify(self) return ^UIButton *(NSAttributedString *title, UIControlState state) {
        MC_Strongify(self)
            [self setAttributedTitle:title
                            forState:state];
        return self;
    };
}

- (UIButton * (^)(UIFont *))mc_font {
    MC_Weakify(self) return ^UIButton *(UIFont *font) {
        MC_Strongify(self)
            self.titleLabel.font = font;
        return self;
    };
}
@end
