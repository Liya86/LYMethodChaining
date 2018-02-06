//
//  NSMutableString+MethodChaining.h
//  LYMethodChaining
//
//  Created by Liya on 2018/1/10.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN
@interface NSMutableString (MethodChaining)
@property (nonatomic, copy, readonly) NSMutableString *(^mc_replaceCharacters)(NSRange, NSString *);
@property (nonatomic, copy, readonly) NSMutableString *(^mc_deleteCharacters)(NSRange);
@property (nonatomic, copy, readonly) NSMutableString *(^mc_insertString)(NSString *, NSUInteger);
@property (nonatomic, copy, readonly) NSMutableString *(^mc_appendingString)(NSString *);
@property (nonatomic, copy, readonly) NSMutableString *(^mc_appendingFormat)(NSString *, ...);
@property (nonatomic, copy, readonly) NSMutableString *(^mc_setString)(NSString *);
@property (nonatomic, copy, readonly) NSMutableString *(^mc_clear)(NSString *);
@end
NS_ASSUME_NONNULL_END
