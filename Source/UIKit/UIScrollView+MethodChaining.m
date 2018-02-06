//
//  UIScrollView+MethodChaining.m
//  LYMethodChaining
//
//  Created by Liya on 2018/1/10.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import "LYMethodChainingMacros.h"
#import "UIScrollView+MethodChaining.h"

@implementation UIScrollView (MethodChaining)
- (UIScrollView * (^)(CGRect, BOOL))mc_scrollRectToVisible {
    MC_Weakify(self) return ^UIScrollView *(CGRect rect, BOOL animated) {
        MC_Strongify(self)
            [self scrollRectToVisible:rect
                             animated:animated];
        return self;
    };
}

- (UIScrollView * (^)(CGFloat, BOOL))mc_scrollToVisibleY {
    MC_Weakify(self) return ^UIScrollView *(CGFloat visibleY, BOOL animated) {
        MC_Strongify(self)
            CGRect rect = self.frame;
        rect.origin.y = visibleY;
        [self scrollRectToVisible:rect animated:animated];
        return self;
    };
}

- (UIScrollView * (^)(CGPoint))mc_contentOffset {
    MC_Weakify(self) return ^UIScrollView *(CGPoint contentOffset) {
        MC_Strongify(self)
            self.contentOffset = contentOffset;
        return self;
    };
}

- (UIScrollView * (^)(CGFloat))mc_contentOffsetY {
    MC_Weakify(self) return ^UIScrollView *(CGFloat contentOffsetY) {
        MC_Strongify(self)
            self.ly_contentOffsetY = contentOffsetY;
        return self;
    };
}

- (UIScrollView * (^)(CGPoint, BOOL))mc_contentOffsetWithAnimated {
    MC_Weakify(self) return ^UIScrollView *(CGPoint contentOffset, BOOL animated) {
        MC_Strongify(self)
            [self setContentOffset:contentOffset
                          animated:animated];
        return self;
    };
}

- (UIScrollView * (^)(CGFloat, BOOL))mc_contentOffsetYWithAnimated {
    MC_Weakify(self) return ^UIScrollView *(CGFloat contentOffsetY, BOOL animated) {
        MC_Strongify(self)
            CGPoint contentOffset = self.contentOffset;
        contentOffset.y = contentOffsetY;
        [self setContentOffset:contentOffset animated:animated];
        return self;
    };
}

- (UIScrollView * (^)(CGSize))mc_contentSize {
    MC_Weakify(self) return ^UIScrollView *(CGSize contentSize) {
        MC_Strongify(self)
            self.contentSize = contentSize;
        return self;
    };
}

- (UIScrollView * (^)(CGFloat))mc_contentSizeW {
    MC_Weakify(self) return ^UIScrollView *(CGFloat width) {
        MC_Strongify(self)
            self.ly_contentSizeW = width;
        return self;
    };
}

- (UIScrollView * (^)(CGFloat))mc_contentSizeH {
    MC_Weakify(self) return ^UIScrollView *(CGFloat height) {
        MC_Strongify(self)
            self.ly_contentSizeH = height;
        return self;
    };
}

- (UIScrollView * (^)(UIEdgeInsets))mc_contentInset {
    MC_Weakify(self) return ^UIScrollView *(UIEdgeInsets contentInset) {
        MC_Strongify(self)
            self.contentInset = contentInset;
        return self;
    };
}

- (UIScrollView * (^)(CGFloat))mc_contentInsetTop {
    MC_Weakify(self) return ^UIScrollView *(CGFloat top) {
        MC_Strongify(self)
            self.ly_contentInsetTop = top;
        return self;
    };
}

- (UIScrollView * (^)(CGFloat))mc_contentInsetBottom {
    MC_Weakify(self) return ^UIScrollView *(CGFloat bottom) {
        MC_Strongify(self)
            self.ly_contentInsetBottom = bottom;
        return self;
    };
}

- (UIScrollView * (^)(CGFloat))mc_contentInsetLeft {
    MC_Weakify(self) return ^UIScrollView *(CGFloat left) {
        MC_Strongify(self)
            self.ly_contentInsetLeft = left;
        return self;
    };
}

- (UIScrollView * (^)(CGFloat))mc_contentInsetRight {
    MC_Weakify(self) return ^UIScrollView *(CGFloat right) {
        MC_Strongify(self)
            self.ly_contentInsetRight = right;
        return self;
    };
}

- (UIScrollView * (^)(UIScrollViewContentInsetAdjustmentBehavior))mc_contentInsetAdjustmentBehavior { //API_AVAILABLE(ios(11.0),tvos(11.0));
    MC_Weakify(self) return ^UIScrollView *(UIScrollViewContentInsetAdjustmentBehavior contentInsetAdjustmentBehavior) {
        MC_Strongify(self)
            self.contentInsetAdjustmentBehavior = contentInsetAdjustmentBehavior;
        return self;
    };
}

- (UIScrollView * (^)(id<UIScrollViewDelegate>))mc_delegate {
    MC_Weakify(self) return ^UIScrollView *(id<UIScrollViewDelegate> delegate) {
        MC_Strongify(self)
            self.delegate = delegate;
        return self;
    };
}

- (UIScrollView * (^)(BOOL))mc_directionalLockEnabled {
    MC_Weakify(self) return ^UIScrollView *(BOOL directionalLockEnabled) {
        MC_Strongify(self)
            self.directionalLockEnabled = directionalLockEnabled;
        return self;
    };
}

- (UIScrollView * (^)(BOOL))mc_bounces {
    MC_Weakify(self) return ^UIScrollView *(BOOL bounces) {
        MC_Strongify(self)
            self.bounces = bounces;
        return self;
    };
}

- (UIScrollView * (^)(BOOL))mc_alwaysBounceVertical {
    MC_Weakify(self) return ^UIScrollView *(BOOL alwaysBounceVertical) {
        MC_Strongify(self)
            self.alwaysBounceVertical = alwaysBounceVertical;
        return self;
    };
}

- (UIScrollView * (^)(BOOL))mc_alwaysBounceHorizontal {
    MC_Weakify(self) return ^UIScrollView *(BOOL alwaysBounceHorizontal) {
        MC_Strongify(self)
            self.alwaysBounceHorizontal = alwaysBounceHorizontal;
        return self;
    };
}

- (UIScrollView * (^)(BOOL))mc_pagingEnabled {
    MC_Weakify(self) return ^UIScrollView *(BOOL pagingEnabled) {
        MC_Strongify(self)
            self.pagingEnabled = pagingEnabled;
        return self;
    };
}

- (UIScrollView * (^)(BOOL))mc_scrollEnabled {
    MC_Weakify(self) return ^UIScrollView *(BOOL scrollEnabled) {
        MC_Strongify(self)
            self.scrollEnabled = scrollEnabled;
        return self;
    };
}

- (UIScrollView * (^)(BOOL))mc_showsHorizontalScrollIndicator {
    MC_Weakify(self) return ^UIScrollView *(BOOL showsHorizontalScrollIndicator) {
        MC_Strongify(self)
            self.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator;
        return self;
    };
}

- (UIScrollView * (^)(BOOL))mc_showsVerticalScrollIndicator {
    MC_Weakify(self) return ^UIScrollView *(BOOL showsVerticalScrollIndicator) {
        MC_Strongify(self)
            self.showsVerticalScrollIndicator = showsVerticalScrollIndicator;
        return self;
    };
}

- (UIScrollView * (^)(UIEdgeInsets))mc_scrollIndicatorInsets {
    MC_Weakify(self) return ^UIScrollView *(UIEdgeInsets scrollIndicatorInsets) {
        MC_Strongify(self)
            self.scrollIndicatorInsets = scrollIndicatorInsets;
        return self;
    };
}

- (UIScrollView * (^)(UIScrollViewIndicatorStyle))mc_indicatorStyle {
    MC_Weakify(self) return ^UIScrollView *(UIScrollViewIndicatorStyle indicatorStyle) {
        MC_Strongify(self)
            self.indicatorStyle = indicatorStyle;
        return self;
    };
}

- (UIScrollView * (^)(CGFloat))mc_decelerationRate {
    MC_Weakify(self) return ^UIScrollView *(CGFloat decelerationRate) {
        MC_Strongify(self)
            self.decelerationRate = decelerationRate;
        return self;
    };
}

- (UIScrollView * (^)(UIScrollViewIndexDisplayMode))mc_indexDisplayMode {
    MC_Weakify(self) return ^UIScrollView *(UIScrollViewIndexDisplayMode indexDisplayMode) {
        MC_Strongify(self)
            self.indexDisplayMode = indexDisplayMode;
        return self;
    };
}

- (UIScrollView * (^)(void))mc_flashScrollIndicators {
    MC_Weakify(self) return ^UIScrollView *(void) {
        MC_Strongify(self)
            [self flashScrollIndicators];
        return self;
    };
}

- (UIScrollView * (^)(BOOL))mc_delaysContentTouches {
    MC_Weakify(self) return ^UIScrollView *(BOOL delaysContentTouches) {
        MC_Strongify(self)
            self.delaysContentTouches = delaysContentTouches;
        return self;
    };
}

- (UIScrollView * (^)(BOOL))mc_canCancelContentTouches {
    MC_Weakify(self) return ^UIScrollView *(BOOL canCancelContentTouches) {
        MC_Strongify(self)
            self.canCancelContentTouches = canCancelContentTouches;
        return self;
    };
}

- (UIScrollView * (^)(CGFloat))mc_minimumZoomScale {
    MC_Weakify(self) return ^UIScrollView *(CGFloat minimumZoomScale) {
        MC_Strongify(self)
            self.minimumZoomScale = minimumZoomScale;
        return self;
    };
}

- (UIScrollView * (^)(CGFloat))mc_maximumZoomScale {
    MC_Weakify(self) return ^UIScrollView *(CGFloat maximumZoomScale) {
        MC_Strongify(self)
            self.maximumZoomScale = maximumZoomScale;
        return self;
    };
}

- (UIScrollView * (^)(CGFloat))mc_zoomScale {
    MC_Weakify(self) return ^UIScrollView *(CGFloat zoomScale) {
        MC_Strongify(self)
            self.zoomScale = zoomScale;
        return self;
    };
}

- (UIScrollView * (^)(CGFloat, BOOL))mc_zoomScaleWithAnimated {
    MC_Weakify(self) return ^UIScrollView *(CGFloat zoomScale, BOOL animated) {
        MC_Strongify(self)
            [self setZoomScale:zoomScale
                      animated:animated];
        return self;
    };
}

- (UIScrollView * (^)(CGRect, BOOL))mc_zoomToRect {
    MC_Weakify(self) return ^UIScrollView *(CGRect rect, BOOL animated) {
        MC_Strongify(self)
            [self zoomToRect:rect
                    animated:animated];
        return self;
    };
}

- (UIScrollView * (^)(BOOL))mc_bouncesZoom {
    MC_Weakify(self) return ^UIScrollView *(BOOL bouncesZoom) {
        MC_Strongify(self)
            self.bouncesZoom = bouncesZoom;
        return self;
    };
}

- (UIScrollView * (^)(BOOL))mc_scrollsToTop {
    MC_Weakify(self) return ^UIScrollView *(BOOL scrollsToTop) {
        MC_Strongify(self)
            self.scrollsToTop = scrollsToTop;
        return self;
    };
}

- (UIScrollView * (^)(UIScrollViewKeyboardDismissMode))mc_keyboardDismissMode {
    MC_Weakify(self) return ^UIScrollView *(UIScrollViewKeyboardDismissMode keyboardDismissMode) {
        MC_Strongify(self)
            self.keyboardDismissMode = keyboardDismissMode;
        return self;
    };
}

- (UIScrollView * (^)(UIRefreshControl *))mc_refreshControl {
    MC_Weakify(self) return ^UIScrollView *(UIRefreshControl *refreshControl) {
        MC_Strongify(self)
            self.refreshControl = refreshControl;
        return self;
    };
}

@end
