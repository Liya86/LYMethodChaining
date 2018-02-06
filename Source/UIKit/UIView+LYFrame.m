//
//  UIView+LYFrame.m
//  LYMethodChaining
//
//  Created by Liya on 2018/1/31.
//  Copyright © 2018年 Liya. All rights reserved.
//
#import "LYBasicTypeCompare.h"
#import "UIView+LYFrame.h"

@implementation UIView (LYFrame)

- (CGFloat)ly_left {
    return self.frame.origin.x;
}

- (void)setLy_left:(CGFloat)ly_left {
    CGRect rect = self.frame;
    rect.origin.x = ly_left;
    self.frame = rect;
}

- (CGFloat)ly_top {
    return self.frame.origin.y;
}

- (void)setLy_top:(CGFloat)ly_top {
    CGRect rect = self.frame;
    rect.origin.y = ly_top;
    self.frame = rect;
}

- (CGFloat)ly_right {
    return CGRectGetMaxX(self.frame);
}

- (void)setLy_right:(CGFloat)ly_right {
    CGRect rect = self.frame;
    rect.origin.x = ly_right - rect.size.width;
    self.frame = rect;
}

- (CGFloat)ly_bottom {
    return CGRectGetMaxY(self.frame);
}

- (void)setLy_bottom:(CGFloat)ly_bottom {
    CGRect rect = self.frame;
    rect.origin.y = ly_bottom - rect.size.height;
    self.frame = rect;
}

- (CGFloat)ly_width {
    return CGRectGetWidth(self.frame);
}

- (void)setLy_width:(CGFloat)ly_width {
    CGRect rect = self.frame;
    rect.size.width = ly_width;
    self.frame = rect;
}

- (CGFloat)ly_height {
    return CGRectGetHeight(self.frame);
}

- (void)setLy_height:(CGFloat)ly_height {
    CGRect rect = self.frame;
    rect.size.height = ly_height;
    self.frame = rect;
}

- (CGSize)ly_size {
    return self.frame.size;
}

- (void)setLy_size:(CGSize)ly_size {
    CGRect rect = self.frame;
    rect.size = ly_size;
    self.frame = rect;
}

- (CGFloat)ly_centerX {
    return self.center.x;
}

- (void)setLy_centerX:(CGFloat)ly_centerX {
    CGPoint center = self.center;
    center.x = ly_centerX;
    self.center = center;
}

- (CGFloat)ly_centerY {
    return self.center.y;
}

- (void)setLy_centerY:(CGFloat)ly_centerY {
    CGPoint center = self.center;
    center.y = ly_centerY;
    self.center = center;
}

- (CGFloat)ly_maxRight {
    return CGRectGetMaxX(self.frame);
}

- (void)setLy_maxRight:(CGFloat)ly_maxRight {
    if (ly_floatLarger(self.ly_right, ly_maxRight)) {
        self.ly_right = ly_maxRight;
    }
}

- (CGFloat)ly_maxBottom {
    return CGRectGetMaxY(self.frame);
}

- (void)setLy_maxBottom:(CGFloat)ly_maxBottom {
    if (ly_floatLarger(self.ly_bottom, ly_maxBottom)) {
        self.ly_bottom = ly_maxBottom;
    }
}

- (CGFloat)ly_maxWidth {
    return CGRectGetWidth(self.frame);
}

- (void)setLy_maxWidth:(CGFloat)ly_maxWidth {
    if (ly_floatLarger(self.ly_width, ly_maxWidth)) {
        self.ly_width = ly_maxWidth;
    }
}

- (CGFloat)ly_maxHeight {
    return CGRectGetHeight(self.frame);
}

- (void)setLy_maxHeight:(CGFloat)ly_maxHeight {
    if (ly_floatLarger(self.ly_height, ly_maxHeight)) {
        self.ly_height = ly_maxHeight;
    }
}

- (CGFloat)ly_extendLeft {
    return CGRectGetMinX(self.frame);
}

- (void)setLy_extendLeft:(CGFloat)ly_extendLeft {
    CGRect rect = self.frame;
    if (ly_floatLarger(ly_extendLeft, rect.origin.x + rect.size.width)) {
        rect.origin.x = rect.origin.x + rect.size.width;
        rect.size.width = ly_extendLeft - rect.origin.x;
    } else {
        rect.size.width = rect.origin.x + rect.size.width - ly_extendLeft;
        rect.origin.x = ly_extendLeft;
    }
    self.frame = rect;
}

- (CGFloat)ly_extendRight {
    return CGRectGetMaxX(self.frame);
}

- (void)setLy_extendRight:(CGFloat)ly_extendRight {
    CGRect rect = self.frame;
    rect.size.width = ABS(ly_extendRight - rect.origin.x);
    if (ly_floatLess(ly_extendRight, rect.origin.x)) {
        rect.origin.x = ly_extendRight;
    }
    self.frame = rect;
}

- (CGFloat)ly_extendTop {
    return CGRectGetMinY(self.frame);
}

- (void)setLy_extendTop:(CGFloat)ly_extendTop {
    CGRect rect = self.frame;
    if (ly_floatLarger(ly_extendTop, rect.origin.y + rect.size.height)) {
        rect.origin.y = rect.origin.y + rect.size.height;
        rect.size.height = ly_extendTop - rect.origin.y;
    } else {
        rect.size.height = rect.origin.y + rect.size.height - ly_extendTop;
        rect.origin.y = ly_extendTop;
    }
    self.frame = rect;
}

- (CGFloat)ly_extendBottom {
    return CGRectGetMaxY(self.frame);
}

- (void)setLy_extendBottom:(CGFloat)ly_extendBottom {
    CGRect rect = self.frame;
    rect.size.height = ABS(ly_extendBottom - rect.origin.y);
    if (ly_floatLess(ly_extendBottom, rect.origin.y)) {
        rect.origin.y = ly_extendBottom;
    }
    self.frame = rect;
}

- (CGFloat)ly_widthAlignRight {
    return CGRectGetWidth(self.frame);
}

- (void)setLy_widthAlignRight:(CGFloat)ly_widthAlignRight {
    CGRect rect = self.frame;
    CGFloat oriRight = CGRectGetMaxX(rect);
    rect.size.width = ly_widthAlignRight;
    rect.origin.x = oriRight - rect.size.width;
    self.frame = rect;
}

- (CGFloat)ly_heightAlignBottom {
    return CGRectGetHeight(self.frame);
}

- (void)setLy_heightAlignBottom:(CGFloat)ly_heightAlignBottom {
    CGRect rect = self.frame;
    CGFloat oriBottom = CGRectGetMaxY(rect);
    rect.size.height = ly_heightAlignBottom;
    rect.origin.y = oriBottom - rect.size.height;
    self.frame = rect;
}

- (CGFloat)ly_widthAlignCenter {
    return CGRectGetWidth(self.frame);
}

- (void)setLy_widthAlignCenter:(CGFloat)ly_widthAlignCenter {
    CGPoint center = self.center;
    self.ly_width = ly_widthAlignCenter;
    self.center = center;
}

- (CGFloat)ly_heightAlignCenter {
    return CGRectGetHeight(self.frame);
}

- (void)setLy_heightAlignCenter:(CGFloat)ly_heightAlignCenter {
    CGPoint center = self.center;
    self.ly_height = ly_heightAlignCenter;
    self.center = center;
}
@end

@implementation UIScrollView (LYFrame)
- (CGFloat)ly_contentOffsetY {
    return self.contentOffset.y;
}

- (void)setLy_contentOffsetY:(CGFloat)ly_contentOffsetY {
    CGPoint contentOffset = self.contentOffset;
    contentOffset.y = ly_contentOffsetY;
    self.contentOffset = contentOffset;
}

- (void)setLy_contentOffsetY:(CGFloat)contentOffsetY animated:(BOOL)animated {
    CGPoint contentOffset = self.contentOffset;
    contentOffset.y = contentOffsetY;
    [self setContentOffset:contentOffset animated:animated];
}

- (CGFloat)ly_contentInsetTop {
    return self.contentInset.top;
}

- (void)setLy_contentInsetTop:(CGFloat)Top {
    UIEdgeInsets insets = self.contentInset;
    insets.top = Top;
    [self setContentInset:insets];
}

- (CGFloat)ly_contentInsetBottom {
    return self.contentInset.bottom;
}

- (void)setLy_contentInsetBottom:(CGFloat)bottom {
    UIEdgeInsets insets = self.contentInset;
    insets.bottom = bottom;
    [self setContentInset:insets];
}

- (CGFloat)ly_contentInsetLeft {
    return self.contentInset.left;
}

- (void)setLy_contentInsetLeft:(CGFloat)left {
    UIEdgeInsets insets = self.contentInset;
    insets.left = left;
    [self setContentInset:insets];
}

- (CGFloat)ly_contentInsetRight {
    return self.contentInset.right;
}

- (void)setLy_contentInsetRight:(CGFloat)right {
    UIEdgeInsets insets = self.contentInset;
    insets.right = right;
    [self setContentInset:insets];
}

- (CGFloat)ly_contentSizeW {
    return self.contentSize.width;
}

- (void)setLy_contentSizeW:(CGFloat)width {
    CGSize contentSize = self.contentSize;
    contentSize.width = width;
    [self setContentSize:contentSize];
}

- (CGFloat)ly_contentSizeH {
    return self.contentSize.height;
}

- (void)setLy_contentSizeH:(CGFloat)height {
    CGSize contentSize = self.contentSize;
    contentSize.height = height;
    [self setContentSize:contentSize];
}
@end
