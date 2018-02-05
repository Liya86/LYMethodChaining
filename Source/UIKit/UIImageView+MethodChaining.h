//
//  UIImageView+MethodChaining.h
//  LYMethodChaining
//
//  Created by Liya on 2018/1/10.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN
@interface UIImageView (MethodChaining)
@property (nonatomic, copy, readonly) UIImageView *(^mc_image)(UIImage *);
@property (nonatomic, copy, readonly) UIImageView *(^mc_highlightedImage)(UIImage *);
@property (nonatomic, copy, readonly) UIImageView *(^mc_userInteractionEnabled)(BOOL);
@property (nonatomic, copy, readonly) UIImageView *(^mc_highlighted)(BOOL);
@property (nonatomic, copy, readonly) UIImageView *(^mc_animationImages)(NSArray<UIImage *> *);
@property (nonatomic, copy, readonly) UIImageView *(^mc_highlightedAnimationImages)(NSArray<UIImage *> *);
@property (nonatomic, copy, readonly) UIImageView *(^mc_animationDuration)(NSTimeInterval);
@property (nonatomic, copy, readonly) UIImageView *(^mc_animationRepeatCount)(NSInteger);
@property (nonatomic, copy, readonly) UIImageView *(^mc_tintColor)(UIColor *);
@property (nonatomic, copy, readonly) UIImageView *(^mc_startAnimating)(void);
@property (nonatomic, copy, readonly) UIImageView *(^mc_stopAnimating)(void);
@end
NS_ASSUME_NONNULL_END
