//
//  NSMutableArray+MethodChaining.h
//  LYMethodChaining
//
//  Created by Liya on 2018/1/10.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN
@interface NSMutableArray (MethodChaining)
@property (nonatomic, copy, readonly) NSMutableArray *(^mc_addObject)(id);
@property (nonatomic, copy, readonly) NSMutableArray *(^mc_addObjectAtIndex)(id, NSUInteger);
@property (nonatomic, copy, readonly) NSMutableArray *(^mc_removeLastObject)(void);
@property (nonatomic, copy, readonly) NSMutableArray *(^mc_removeFirstObject)(void);
@property (nonatomic, copy, readonly) NSMutableArray *(^mc_removeObjectAtIndex)(NSUInteger);
@property (nonatomic, copy, readonly) NSMutableArray *(^mc_replaceObject)(NSUInteger, id);
@property (nonatomic, copy, readonly) NSMutableArray *(^mc_replaceLastObject)(id);
@property (nonatomic, copy, readonly) NSMutableArray *(^mc_replaceFirstObject)(id);
@property (nonatomic, copy, readonly) NSMutableArray *(^mc_addObjects)(NSArray *);
@property (nonatomic, copy, readonly) NSMutableArray *(^mc_exchangeObjectAtIndex)(NSUInteger, NSUInteger);
@property (nonatomic, copy, readonly) NSMutableArray *(^mc_removeAllObjects)(void);
@property (nonatomic, copy, readonly) NSMutableArray *(^mc_removeObject)(id);
@property (nonatomic, copy, readonly) NSMutableArray *(^mc_removeObjectInRange)(id, NSRange);
@property (nonatomic, copy, readonly) NSMutableArray *(^mc_removeObjectIdenticalTo)(id);
@property (nonatomic, copy, readonly) NSMutableArray *(^mc_removeObjectIdenticalToInRange)(id, NSRange);
@property (nonatomic, copy, readonly) NSMutableArray *(^mc_removeObjectsInRange)(NSRange);
@property (nonatomic, copy, readonly) NSMutableArray *(^mc_removeObjectsInArray)(NSArray *);
@property (nonatomic, copy, readonly) NSMutableArray *(^mc_setArray)(NSArray *);
@end
NS_ASSUME_NONNULL_END
