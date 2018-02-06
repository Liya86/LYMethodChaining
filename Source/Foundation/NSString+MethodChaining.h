//
//  NSString+MethodChaining.h
//  LYMethodChaining
//
//  Created by Liya on 2018/1/11.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN
@interface NSString (MethodChaining)
@property (nonatomic, copy, readonly) NSString *(^mc_trimming)(void);
@property (nonatomic, copy, readonly) NSString *(^mc_trimmingNewline)(void);
@property (nonatomic, copy, readonly) NSString *(^mc_trimmingSpace)(void);
@property (nonatomic, copy, readonly) NSString *(^mc_removeAllSpace)(void);
@property (nonatomic, copy, readonly) NSString *(^mc_removeAllNewline)(void);
@property (nonatomic, copy, readonly) NSArray<NSString*> *(^mc_componentsSeparatedByCharacters)(NSString *);
@property (nonatomic, copy, readonly) NSArray<NSString*> *(^mc_componentsSeparatedByString)(NSString *);
@property (nonatomic, copy, readonly) NSString *(^mc_trimmingCharactersInSet)(NSString *);

@property (nonatomic, copy, readonly) NSString *(^mc_substringFromIndex)(NSUInteger);
@property (nonatomic, copy, readonly) NSString *(^mc_substringToIndex)(NSUInteger);
@property (nonatomic, copy, readonly) NSString *(^mc_substringWithRange)(NSRange);
@property (nonatomic, copy, readonly) NSString *(^mc_substringFromIndexAvoidBreakingUpEmoji)(NSUInteger);
@property (nonatomic, copy, readonly) NSString *(^mc_substringToIndexAvoidBreakingUpEmoji)(NSUInteger);
@property (nonatomic, copy, readonly) NSString *(^mc_substringWithRangeAvoidBreakingUpEmoji)(NSRange);
@property (nonatomic, copy, readonly) NSString *(^mc_appendingString)(NSString *);
@property (nonatomic, copy, readonly) NSString *(^mc_appendingFormat)(NSString *, ...);
@end
NS_ASSUME_NONNULL_END
