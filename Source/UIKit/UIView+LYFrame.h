//
//  UIView+LYFrame.h
//  LYMethodChaining
//
//  Created by Liya on 2018/1/31.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import <UIKit/UIKit.h>

/*
 * maxXXX系列获取无意义===ly_XXX，设置有意义
 * XXXAlignRight系列获取无意义===ly_XXX，设置有意义
 */

@interface UIView (LYFrame)
@property (nonatomic, assign) CGFloat ly_left;
@property (nonatomic, assign) CGFloat ly_right;
@property (nonatomic, assign) CGFloat ly_top;
@property (nonatomic, assign) CGFloat ly_bottom;
@property (nonatomic, assign) CGFloat ly_width;
@property (nonatomic, assign) CGFloat ly_height;
@property (nonatomic, assign) CGSize ly_size;
@property (nonatomic, assign) CGFloat ly_centerX;
@property (nonatomic, assign) CGFloat ly_centerY;
@property (nonatomic, assign) CGFloat ly_maxRight; //设置最大maxright，当right > maxright，则right = maxright
@property (nonatomic, assign) CGFloat ly_maxBottom;
@property (nonatomic, assign) CGFloat ly_maxWidth;
@property (nonatomic, assign) CGFloat ly_maxHeight;
@property (nonatomic, assign) CGFloat ly_widthAlignRight; //width改变，但是right不变，left改变
@property (nonatomic, assign) CGFloat ly_heightAlignBottom;
@property (nonatomic, assign) CGFloat ly_widthAlignCenter;
@property (nonatomic, assign) CGFloat ly_heightAlignCenter;
@property (nonatomic, assign) CGFloat ly_extendLeft;
@property (nonatomic, assign) CGFloat ly_extendRight;
@property (nonatomic, assign) CGFloat ly_extendTop;
@property (nonatomic, assign) CGFloat ly_extendBottom;

@end

@interface UIScrollView (LYFrame)
@property (nonatomic, assign) CGFloat ly_contentOffsetY;
@property (nonatomic, assign) CGFloat ly_contentInsetTop;
@property (nonatomic, assign) CGFloat ly_contentInsetBottom;
@property (nonatomic, assign) CGFloat ly_contentInsetLeft;
@property (nonatomic, assign) CGFloat ly_contentInsetRight;
@property (nonatomic, assign) CGFloat ly_contentSizeW;
@property (nonatomic, assign) CGFloat ly_contentSizeH;

- (void)setLy_contentOffsetY:(CGFloat)contentOffsetY animated:(BOOL)animated;
@end
