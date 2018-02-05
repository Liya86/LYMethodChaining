//
//  UIScrollView+MethodChaining.h
//  LYMethodChaining
//
//  Created by Liya on 2018/1/10.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIView+LYFrame.h"
NS_ASSUME_NONNULL_BEGIN
@interface UIScrollView (MethodChaining)
@property (nonatomic, copy, readonly) UIScrollView *(^mc_scrollRectToVisible)(CGRect, BOOL);
@property (nonatomic, copy, readonly) UIScrollView *(^mc_scrollToVisibleY)(CGFloat, BOOL);
@property (nonatomic, copy, readonly) UIScrollView *(^mc_contentOffset)(CGPoint);
@property (nonatomic, copy, readonly) UIScrollView *(^mc_contentOffsetY)(CGFloat);
@property (nonatomic, copy, readonly) UIScrollView *(^mc_contentOffsetWithAnimated)(CGPoint, BOOL);
@property (nonatomic, copy, readonly) UIScrollView *(^mc_contentOffsetYWithAnimated)(CGFloat, BOOL);
@property (nonatomic, copy, readonly) UIScrollView *(^mc_contentSize)(CGSize);
@property (nonatomic, copy, readonly) UIScrollView *(^mc_contentSizeW)(CGFloat);
@property (nonatomic, copy, readonly) UIScrollView *(^mc_contentSizeH)(CGFloat) ;
@property (nonatomic, copy, readonly) UIScrollView *(^mc_contentInset)(UIEdgeInsets);
@property (nonatomic, copy, readonly) UIScrollView *(^mc_contentInsetTop)(CGFloat);
@property (nonatomic, copy, readonly) UIScrollView *(^mc_contentInsetBottom)(CGFloat);
@property (nonatomic, copy, readonly) UIScrollView *(^mc_contentInsetLeft)(CGFloat);
@property (nonatomic, copy, readonly) UIScrollView *(^mc_contentInsetRight)(CGFloat);
@property (nonatomic, copy, readonly) UIScrollView *(^mc_contentInsetAdjustmentBehavior)(UIScrollViewContentInsetAdjustmentBehavior);
@property (nonatomic, copy, readonly) UIScrollView *(^mc_delegate)(id<UIScrollViewDelegate>);
@property (nonatomic, copy, readonly) UIScrollView *(^mc_directionalLockEnabled)(BOOL);
@property (nonatomic, copy, readonly) UIScrollView *(^mc_bounces)(BOOL);
@property (nonatomic, copy, readonly) UIScrollView *(^mc_alwaysBounceVertical)(BOOL);
@property (nonatomic, copy, readonly) UIScrollView *(^mc_alwaysBounceHorizontal)(BOOL);
@property (nonatomic, copy, readonly) UIScrollView *(^mc_pagingEnabled)(BOOL) __TVOS_PROHIBITED;
@property (nonatomic, copy, readonly) UIScrollView *(^mc_scrollEnabled)(BOOL);
@property (nonatomic, copy, readonly) UIScrollView *(^mc_showsHorizontalScrollIndicator)(BOOL);
@property (nonatomic, copy, readonly) UIScrollView *(^mc_showsVerticalScrollIndicator)(BOOL);
@property (nonatomic, copy, readonly) UIScrollView *(^mc_scrollIndicatorInsets)(UIEdgeInsets);
@property (nonatomic, copy, readonly) UIScrollView *(^mc_indicatorStyle)(UIScrollViewIndicatorStyle);
@property (nonatomic, copy, readonly) UIScrollView *(^mc_decelerationRate)(CGFloat);
@property (nonatomic, copy, readonly) UIScrollView *(^mc_indexDisplayMode)(UIScrollViewIndexDisplayMode);
@property (nonatomic, copy, readonly) UIScrollView *(^mc_flashScrollIndicators)(void);
@property (nonatomic, copy, readonly) UIScrollView *(^mc_delaysContentTouches)(BOOL);
@property (nonatomic, copy, readonly) UIScrollView *(^mc_canCancelContentTouches)(BOOL);
@property (nonatomic, copy, readonly) UIScrollView *(^mc_minimumZoomScale)(CGFloat);
@property (nonatomic, copy, readonly) UIScrollView *(^mc_maximumZoomScale)(CGFloat);
@property (nonatomic, copy, readonly) UIScrollView *(^mc_zoomScale)(CGFloat);
@property (nonatomic, copy, readonly) UIScrollView *(^mc_zoomScaleWithAnimated)(CGFloat, BOOL);
@property (nonatomic, copy, readonly) UIScrollView *(^mc_zoomToRect)(CGRect, BOOL);
@property (nonatomic, copy, readonly) UIScrollView *(^mc_bouncesZoom)(BOOL);
@property (nonatomic, copy, readonly) UIScrollView *(^mc_scrollsToTop)(BOOL) __TVOS_PROHIBITED;
@property (nonatomic, copy, readonly) UIScrollView *(^mc_keyboardDismissMode)(UIScrollViewKeyboardDismissMode) __TVOS_PROHIBITED;
@property (nonatomic, copy, readonly) UIScrollView *(^mc_refreshControl)(UIRefreshControl *) __TVOS_PROHIBITED;
@end
NS_ASSUME_NONNULL_END
