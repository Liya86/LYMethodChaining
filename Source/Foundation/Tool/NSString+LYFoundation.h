//
//  NSString+LYFoundation.h
//  LYMethodChaining
//
//  Created by Liya on 2018/1/11.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN

#pragma mark - C function
FOUNDATION_EXTERN BOOL ly_isString(NSString *_Nullable);
FOUNDATION_EXTERN BOOL ly_isEmptyString(NSString *_Nullable);
FOUNDATION_EXTERN BOOL ly_isNotEmptyString(NSString *_Nullable);

@interface NSString (LYFoundation)

#pragma mark - Objective_C
//是否超出区域
- (BOOL)ly_rangeIsOutof:(NSRange)range;
- (BOOL)ly_rangeIsWithin:(NSRange)range;
- (BOOL)ly_loctionIsWithin:(NSUInteger)loc;
- (NSRange)ly_rangeWithin:(NSRange)range;
- (NSUInteger)ly_loctionWithin:(NSUInteger)loc;
//去除前后空格换行
- (NSString *)ly_trimmingString:(NSString *)aString;
- (NSString *)ly_trimmingString;
- (NSString *)ly_trimmingWithNewlineString;
- (NSString *)ly_trimmingWithSpaceString;
//出去分割后其中的@""
- (NSArray<NSString *> *)ly_componentsSeparatedByCharactersInSet:(NSString *)aString;
- (NSArray<NSString *> *)ly_componentsSeparatedByString:(NSString *)separator;
- (NSString *)ly_trimmingCharactersInSet:(NSString *)aString;
- (NSString *)ly_removeAllSpace;
- (NSString *)ly_removeAllNewline;

@end

NS_ASSUME_NONNULL_END
