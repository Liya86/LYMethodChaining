//
//  UIImageView+MethodChaining.m
//  LYMethodChaining
//
//  Created by Liya on 2018/1/10.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import "LYMethodChainingMacros.h"
#import "UIImageView+MethodChaining.h"

@implementation UIImageView (MethodChaining)
- (UIImageView * (^)(UIImage *))mc_image {
    MC_Weakify(self) return ^UIImageView *(UIImage *image) {
        MC_Strongify(self)
            self.image = image;
        return self;
    };
}

- (UIImageView * (^)(UIImage *))mc_highlightedImage {
    MC_Weakify(self) return ^UIImageView *(UIImage *highlightedImage) {
        MC_Strongify(self)
            self.highlightedImage = highlightedImage;
        return self;
    };
}

- (UIImageView * (^)(BOOL))mc_userInteractionEnabled {
    MC_Weakify(self) return ^UIImageView *(BOOL userInteractionEnabled) {
        MC_Strongify(self)
            self.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}

- (UIImageView * (^)(BOOL))mc_highlighted {
    MC_Weakify(self) return ^UIImageView *(BOOL highlighted) {
        MC_Strongify(self)
            self.highlighted = highlighted;
        return self;
    };
}

- (UIImageView * (^)(NSArray<UIImage *> *))mc_animationImages {
    MC_Weakify(self) return ^UIImageView *(NSArray<UIImage *> *animationImages) {
        MC_Strongify(self)
            self.animationImages = animationImages;
        return self;
    };
}

- (UIImageView * (^)(NSArray<UIImage *> *))mc_highlightedAnimationImages {
    MC_Weakify(self) return ^UIImageView *(NSArray<UIImage *> *highlightedAnimationImages) {
        MC_Strongify(self)
            self.highlightedAnimationImages = highlightedAnimationImages;
        return self;
    };
}

- (UIImageView * (^)(NSTimeInterval))mc_animationDuration {
    MC_Weakify(self) return ^UIImageView *(NSTimeInterval animationDuration) {
        MC_Strongify(self)
            self.animationDuration = animationDuration;
        return self;
    };
}

- (UIImageView * (^)(NSInteger))mc_animationRepeatCount {
    MC_Weakify(self) return ^UIImageView *(NSInteger animationRepeatCount) {
        MC_Strongify(self)
            self.animationRepeatCount = animationRepeatCount;
        return self;
    };
}

- (UIImageView * (^)(UIColor *))mc_tintColor {
    MC_Weakify(self) return ^UIImageView *(UIColor *tintColor) {
        MC_Strongify(self)
            self.tintColor = tintColor;
        return self;
    };
}

- (UIImageView * (^)(void))mc_startAnimating {
    MC_Weakify(self) return ^UIImageView *(void) {
        MC_Strongify(self)
            [self startAnimating];
        return self;
    };
}

- (UIImageView * (^)(void))mc_stopAnimating {
    MC_Weakify(self) return ^UIImageView *(void) {
        MC_Strongify(self)
            [self stopAnimating];
        return self;
    };
}

@end
