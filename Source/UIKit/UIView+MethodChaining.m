//
//  UIView+MethodChaining.m
//  LYMethodChaining
//
//  Created by Liya on 2018/1/10.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import "LYMethodChainingMacros.h"
#import "NSArray+MethodChaining.h"
#import "UIView+LYFrame.h"
#import "UIView+MethodChaining.h"

@implementation UIView (MethodChaining)
- (UIView * (^)(NSInteger))mc_tag {
    MC_Weakify(self) return ^id(NSInteger tag) {
        MC_Strongify(self)
            self.tag = tag;
        return self;
    };
}

- (UIView * (^)(CGRect))mc_frame {
    MC_Weakify(self) return ^id(CGRect frame) {
        MC_Strongify(self)
            self.frame = frame;
        return self;
    };
}

- (UIView * (^)(CGRect))mc_bounds {
    MC_Weakify(self) return ^id(CGRect bounds) {
        MC_Strongify(self)
            self.bounds = bounds;
        return self;
    };
}

- (UIView * (^)(CGPoint))mc_center {
    MC_Weakify(self) return ^id(CGPoint center) {
        MC_Strongify(self)
            self.center = center;
        return self;
    };
}

- (UIView * (^)(CGSize))mc_size {
    MC_Weakify(self) return ^id(CGSize size) {
        MC_Strongify(self)
            self.ly_size = size;
        return self;
    };
}

- (UIView * (^)(CGFloat))mc_left {
    MC_Weakify(self) return ^id(CGFloat left) {
        MC_Strongify(self)
            self.ly_left = left;
        return self;
    };
}

- (UIView * (^)(CGFloat))mc_top {
    MC_Weakify(self) return ^id(CGFloat top) {
        MC_Strongify(self)
            self.ly_top = top;
        return self;
    };
}

- (UIView * (^)(CGFloat))mc_right {
    MC_Weakify(self) return ^id(CGFloat right) {
        MC_Strongify(self)
            self.ly_right = right;
        return self;
    };
}

- (UIView * (^)(CGFloat))mc_bottom {
    MC_Weakify(self) return ^id(CGFloat bottom) {
        MC_Strongify(self)
            self.ly_bottom = bottom;
        return self;
    };
}

- (UIView * (^)(CGFloat))mc_maxRight {
    MC_Weakify(self) return ^id(CGFloat right) {
        MC_Strongify(self)
            self.ly_maxRight = right;
        return self;
    };
}

- (UIView * (^)(CGFloat))mc_maxBottom {
    MC_Weakify(self) return ^id(CGFloat bottom) {
        MC_Strongify(self)
            self.ly_maxBottom = bottom;
        return self;
    };
}

- (UIView * (^)(CGFloat))mc_extendRight {
    MC_Weakify(self) return ^id(CGFloat right) {
        MC_Strongify(self)
            self.ly_extendRight = right;
        return self;
    };
}

- (UIView * (^)(CGFloat))mc_extendBottom {
    MC_Weakify(self) return ^id(CGFloat bottom) {
        MC_Strongify(self)
            self.ly_extendBottom = bottom;
        return self;
    };
}

- (UIView * (^)(CGFloat))mc_extendLeft {
    MC_Weakify(self) return ^id(CGFloat left) {
        MC_Strongify(self)
            self.ly_extendLeft = left;
        return self;
    };
}

- (UIView * (^)(CGFloat))mc_extendTop {
    MC_Weakify(self) return ^id(CGFloat top) {
        MC_Strongify(self)
            self.ly_extendTop = top;
        return self;
    };
}

- (UIView * (^)(CGFloat))mc_width {
    MC_Weakify(self) return ^id(CGFloat width) {
        MC_Strongify(self)
            self.ly_width = width;
        return self;
    };
}

- (UIView * (^)(CGFloat))mc_height {
    MC_Weakify(self) return ^id(CGFloat height) {
        MC_Strongify(self)
            self.ly_height = height;
        return self;
    };
}

- (UIView * (^)(CGFloat))mc_maxWidth {
    MC_Weakify(self) return ^id(CGFloat width) {
        MC_Strongify(self)
            self.ly_maxWidth = width;
        return self;
    };
}

- (UIView * (^)(CGFloat))mc_maxHeight {
    MC_Weakify(self) return ^id(CGFloat height) {
        MC_Strongify(self)
            self.ly_maxHeight = height;
        return self;
    };
}

- (UIView * (^)(CGFloat))mc_widthAlignRight {
    MC_Weakify(self) return ^id(CGFloat width) {
        MC_Strongify(self)
            self.ly_widthAlignRight = width;
        return self;
    };
}

- (UIView * (^)(CGFloat))mc_heightAlignBottom {
    MC_Weakify(self) return ^id(CGFloat height) {
        MC_Strongify(self)
            self.ly_heightAlignBottom = height;
        return self;
    };
}

- (UIView * (^)(CGFloat))mc_widthAlignCenter {
    MC_Weakify(self) return ^id(CGFloat width) {
        MC_Strongify(self)
            self.ly_widthAlignCenter = width;
        return self;
    };
}

- (UIView * (^)(CGFloat))mc_heightAlignCenter {
    MC_Weakify(self) return ^id(CGFloat height) {
        MC_Strongify(self)
            self.ly_heightAlignCenter = height;
        return self;
    };
}

- (UIView * (^)(CGSize))mc_sizeThatFits {
    MC_Weakify(self) return ^id(CGSize size) {
        MC_Strongify(self)
            [self sizeThatFits:size];
        return self;
    };
}

- (UIView * (^)(void))mc_sizeToFit {
    MC_Weakify(self) return ^id(void) {
        MC_Strongify(self)
            [self sizeToFit];
        return self;
    };
}

- (UIView * (^)(BOOL))mc_clipsToBounds {
    MC_Weakify(self) return ^id(BOOL clipsToBounds) {
        MC_Strongify(self)
            self.clipsToBounds = clipsToBounds;
        return self;
    };
}

- (UIView * (^)(UIColor *))mc_backgroundColor {
    MC_Weakify(self) return ^id(UIColor *backgroundColor) {
        MC_Strongify(self)
            self.backgroundColor = backgroundColor;
        return self;
    };
}

- (UIView * (^)(CGFloat))mc_alpha {
    MC_Weakify(self) return ^id(CGFloat alpha) {
        MC_Strongify(self)
            self.alpha = alpha;
        return self;
    };
}

- (UIView * (^)(BOOL))mc_opaque {
    MC_Weakify(self) return ^id(BOOL opaque) {
        MC_Strongify(self)
            self.opaque = opaque;
        return self;
    };
}

- (UIView * (^)(BOOL))mc_hidden {
    MC_Weakify(self) return ^id(BOOL hidden) {
        MC_Strongify(self)
            self.hidden = hidden;
        return self;
    };
}

- (UIView * (^)(UIViewContentMode))mc_contentMode {
    MC_Weakify(self) return ^id(UIViewContentMode contentMode) {
        MC_Strongify(self)
            self.contentMode = contentMode;
        return self;
    };
}

- (UIView * (^)(UIGestureRecognizer *))mc_addGestureRecognizer {
    MC_Weakify(self) return ^id(UIGestureRecognizer *gestureRecognizer) {
        MC_Strongify(self) if (gestureRecognizer) {
            [self addGestureRecognizer:gestureRecognizer];
            self.userInteractionEnabled = YES;
        }
        return self;
    };
}

- (UIView * (^)(UIGestureRecognizer *))mc_removeGestureRecognizer {
    MC_Weakify(self) return ^id(UIGestureRecognizer *gestureRecognizer) {
        MC_Strongify(self) if (gestureRecognizer) {
            [self removeGestureRecognizer:gestureRecognizer];
        }
        return self;
    };
}

- (UIView * (^)(void))mc_removeAllGestureRecognizers {
    MC_Weakify(self) return ^id(void) {
        MC_Strongify(self)
            self.gestureRecognizers.mc_enumerateObjectsUsingBlock(^(UIGestureRecognizer *gestureRecognizer, NSUInteger idx, BOOL *stop) {
                MC_Strongify(self)
                    [self removeGestureRecognizer:gestureRecognizer];
            });
        return self;
    };
}

- (UIView * (^)(UIColor *))mc_tintColor {
    MC_Weakify(self) return ^UIView *(UIColor *tintColor) {
        MC_Strongify(self);
        self.tintColor = tintColor;
        return self;
    };
}

- (UIView * (^)(UIViewTintAdjustmentMode))mc_tintAdjustmentMode {
    MC_Weakify(self) return ^UIView *(UIViewTintAdjustmentMode tintAdjustmentMode) {
        MC_Strongify(self);
        self.tintAdjustmentMode = tintAdjustmentMode;
        return self;
    };
}

- (UIView * (^)(void))mc_tintColorDidChange {
    MC_Weakify(self) return ^UIView *(void) {
        MC_Strongify(self);
        [self tintColorDidChange];
        return self;
    };
}

- (UIView * (^)(UIView *))mc_addSubView {
    MC_Weakify(self) return ^UIView *(UIView *subView) {
        MC_Strongify(self);
        if (subView) {
            [self addSubview:subView];
        }
        return self;
    };
}

- (UIView * (^)(UIView *, NSInteger))mc_insertSubView {
    MC_Weakify(self) return ^UIView *(UIView *subView, NSInteger index) {
        MC_Strongify(self);
        if (subView) {
            [self insertSubview:subView atIndex:index];
        }
        return self;
    };
}

- (UIView * (^)(UIView *, UIView *))mc_insertSubViewAboveSubview {
    MC_Weakify(self) return ^UIView *(UIView *subView, UIView *siblingSubview) {
        MC_Strongify(self);
        if (subView) {
            [self insertSubview:subView aboveSubview:siblingSubview];
        }
        return self;
    };
}

- (UIView * (^)(UIView *, UIView *))mc_insertSubViewBelowSubview {
    MC_Weakify(self) return ^UIView *(UIView *subView, UIView *siblingSubview) {
        MC_Strongify(self);
        if (subView) {
            [self insertSubview:subView belowSubview:siblingSubview];
        }
        return self;
    };
}

- (UIView * (^)(void))mc_removeAllSubViews {
    MC_Weakify(self) return ^UIView *(void) {
        MC_Strongify(self);
        NSArray *subViews = self.subviews;
        subViews.mc_enumerateObjectsUsingBlock(^(UIView *subView, NSUInteger index, BOOL *stop) {
            [subView removeFromSuperview];
        });
        return self;
    };
}

- (UIView * (^)(UIView *))mc_removeSubView {
    MC_Weakify(self) return ^UIView *(UIView *subView) {
        MC_Strongify(self);
        if (subView.superview == self) {
            [subView removeFromSuperview];
        }
        return self;
    };
}

- (UIView * (^)(UIView *))mc_bringSubviewToFront {
    MC_Weakify(self) return ^UIView *(UIView *subView) {
        MC_Strongify(self);
        if (subView) {
            [self bringSubviewToFront:subView];
        }
        return self;
    };
}

- (UIView * (^)(UIView *))mc_sendSubviewToBack {
    MC_Weakify(self) return ^UIView *(UIView *subView) {
        MC_Strongify(self);
        if (subView) {
            [self sendSubviewToBack:subView];
        }
        return self;
    };
}

- (UIView * (^)(void))mc_removeFromSuperview {
    MC_Weakify(self) return ^UIView *(void) {
        MC_Strongify(self);
        [self removeFromSuperview];
        return self;
    };
}

- (UIView * (^)(UIView *))mc_addToSuperView {
    MC_Weakify(self) return ^UIView *(UIView *superView) {
        MC_Strongify(self);
        if (superView) {
            [superView addSubview:self];
        }
        return self;
    };
}

- (UIView * (^)(UIView *, NSInteger))mc_insertToSuperView {
    MC_Weakify(self) return ^UIView *(UIView *superView, NSInteger index) {
        MC_Strongify(self);
        if (superView) {
            [superView insertSubview:self atIndex:index];
        } else {
            [self.superview insertSubview:self atIndex:index];
        }
        return self;
    };
}

- (UIView * (^)(UIView *, UIView *))mc_insertToSuperViewAboveSubview {
    MC_Weakify(self) return ^UIView *(UIView *superView, UIView *siblingSubview) {
        MC_Strongify(self);
        if (superView) {
            [superView insertSubview:self aboveSubview:siblingSubview];
        } else {
            [self.superview insertSubview:self aboveSubview:siblingSubview];
        }
        return self;
    };
}

- (UIView * (^)(UIView *, UIView *))mc_insertToSuperViewBelowSubview {
    MC_Weakify(self) return ^UIView *(UIView *superView, UIView *siblingSubview) {
        MC_Strongify(self);
        if (superView) {
            [superView insertSubview:self belowSubview:siblingSubview];
        } else {
            [self.superview insertSubview:self belowSubview:siblingSubview];
        }
        return self;
    };
}

- (UIView * (^)(UIView *))mc_bringToSuperViewFront {
    MC_Weakify(self) return ^UIView *(UIView *superView) {
        MC_Strongify(self);
        if (superView) {
            [superView bringSubviewToFront:self];
        } else {
            [self.superview bringSubviewToFront:self];
        }
        return self;
    };
}

- (UIView * (^)(UIView *))mc_sendToSuperViewBack {
    MC_Weakify(self) return ^UIView *(UIView *superView) {
        MC_Strongify(self);
        if (superView) {
            [superView sendSubviewToBack:self];
        } else {
            [self.superview bringSubviewToFront:self];
        }
        return self;
    };
}

@end
