//
//  NSMutableDictionary+MethodChaining.h
//  LYMethodChaining
//
//  Created by Liya on 2018/1/11.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN
@interface NSMutableDictionary (MethodChaining)
@property (nonatomic, copy, readonly) NSMutableDictionary *(^mc_removeObject)(id <NSCopying>);
@property (nonatomic, copy, readonly) NSMutableDictionary *(^mc_setObject)(id, id <NSCopying>);
@property (nonatomic, copy, readonly) NSMutableDictionary *(^mc_addEntriesFromDictionary)(NSDictionary *);
@property (nonatomic, copy, readonly) NSMutableDictionary *(^mc_removeAllObjects)(void);
@property (nonatomic, copy, readonly) NSMutableDictionary *(^mc_removeObjectsForKeys)(NSArray *);
@property (nonatomic, copy, readonly) NSMutableDictionary *(^mc_setDictionary)(NSDictionary *);
@end
NS_ASSUME_NONNULL_END
