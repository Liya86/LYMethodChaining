//
//  UIView+MethodChaining.h
//  LYMethodChaining
//
//  Created by Liya on 2018/1/10.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN
@interface UIView (MethodChaining)
@property (nonatomic, copy, readonly) UIView *(^mc_tag)(NSInteger);
@property (nonatomic, copy, readonly) UIView *(^mc_frame)(CGRect);
@property (nonatomic, copy, readonly) UIView *(^mc_bounds)(CGRect);
@property (nonatomic, copy, readonly) UIView *(^mc_center)(CGPoint);
@property (nonatomic, copy, readonly) UIView *(^mc_size)(CGSize);
@property (nonatomic, copy, readonly) UIView *(^mc_left)(CGFloat);
@property (nonatomic, copy, readonly) UIView *(^mc_top)(CGFloat);
@property (nonatomic, copy, readonly) UIView *(^mc_right)(CGFloat);
@property (nonatomic, copy, readonly) UIView *(^mc_bottom)(CGFloat);
@property (nonatomic, copy, readonly) UIView *(^mc_maxRight)(CGFloat);
@property (nonatomic, copy, readonly) UIView *(^mc_maxBottom)(CGFloat);
@property (nonatomic, copy, readonly) UIView *(^mc_extendRight)(CGFloat);
@property (nonatomic, copy, readonly) UIView *(^mc_extendBottom)(CGFloat);
@property (nonatomic, copy, readonly) UIView *(^mc_extendLeft)(CGFloat);
@property (nonatomic, copy, readonly) UIView *(^mc_extendTop)(CGFloat);
@property (nonatomic, copy, readonly) UIView *(^mc_width)(CGFloat);
@property (nonatomic, copy, readonly) UIView *(^mc_height)(CGFloat);
@property (nonatomic, copy, readonly) UIView *(^mc_maxWidth)(CGFloat);
@property (nonatomic, copy, readonly) UIView *(^mc_maxHeight)(CGFloat);
@property (nonatomic, copy, readonly) UIView *(^mc_widthAlignRight)(CGFloat);
@property (nonatomic, copy, readonly) UIView *(^mc_heightAlignBottom)(CGFloat);
@property (nonatomic, copy, readonly) UIView *(^mc_widthAlignCenter)(CGFloat);
@property (nonatomic, copy, readonly) UIView *(^mc_heightAlignCenter)(CGFloat);
@property (nonatomic, copy, readonly) UIView *(^mc_sizeThatFits)(CGSize);
@property (nonatomic, copy, readonly) UIView *(^mc_sizeToFit)(void);
@property (nonatomic, copy, readonly) UIView *(^mc_clipsToBounds)(BOOL);
@property (nonatomic, copy, readonly) UIView *(^mc_backgroundColor)(UIColor *) UI_APPEARANCE_SELECTOR;
@property (nonatomic, copy, readonly) UIView *(^mc_alpha)(CGFloat);
@property (nonatomic, copy, readonly) UIView *(^mc_opaque)(BOOL);
@property (nonatomic, copy, readonly) UIView *(^mc_hidden)(BOOL);
@property (nonatomic, copy, readonly) UIView *(^mc_contentMode)(UIViewContentMode);
@property (nonatomic, copy, readonly) UIView *(^mc_addGestureRecognizer)(UIGestureRecognizer *);
@property (nonatomic, copy, readonly) UIView *(^mc_removeGestureRecognizer)(UIGestureRecognizer *);
@property (nonatomic, copy, readonly) UIView *(^mc_removeAllGestureRecognizers)(void);
@end
NS_ASSUME_NONNULL_END

