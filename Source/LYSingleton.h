//
//  LYSingleton.h
//  LY
//
//  Created by Liya on 16/6/28.
//  Copyright © 2016年 Liya. All rights reserved.
//
//
//  使用:
//      在MyClass.h中
//      @interface MyClass : NSObject
//      {
//
//      }
//      LY_SINGLETON_FOR_CLASS_HEADER(MyClass)
//      @end
//
//      在MyClass.m中
//      @implementation MyClass
//      LY_SINGLETON_FOR_CLASS(MyClass)
//      @end
//
//

#ifndef LYSingleton_h
#define LYSingleton_h

#define LY_SINGLETON_FOR_CLASS_HEADER(__CLASSNAME__) \
    +(instancetype)sharedInstance;


#if __has_feature(objc_arc)

#define LY_SINGLETON_FOR_CLASS(__CLASSNAME__)                                     \
    static id _##__CLASSNAME__##_sharedInstance = nil;                            \
                                                                                  \
    +(instancetype)sharedInstance {                                               \
        static dispatch_once_t once;                                              \
        dispatch_once(&once, ^{                                                   \
            _##__CLASSNAME__##_sharedInstance = [[self alloc] init];              \
        });                                                                       \
        return _##__CLASSNAME__##_sharedInstance;                                 \
    }                                                                             \
                                                                                  \
    +(id)allocWithZone : (struct _NSZone *)zone {                                 \
        static dispatch_once_t once;                                              \
        dispatch_once(&once, ^{                                                   \
            _##__CLASSNAME__##_sharedInstance = [super allocWithZone:zone];       \
        });                                                                       \
        return _##__CLASSNAME__##_sharedInstance;                                 \
    }                                                                             \
                                                                                  \
    +(id)mutableCopyWithZone : (struct _NSZone *)zone {                           \
        static dispatch_once_t once;                                              \
        dispatch_once(&once, ^{                                                   \
            _##__CLASSNAME__##_sharedInstance = [super mutableCopyWithZone:zone]; \
        });                                                                       \
        return _##__CLASSNAME__##_sharedInstance;                                 \
    }                                                                             \
                                                                                  \
    -(id)copyWithZone : (NSZone *)zone {                                          \
        return self;                                                              \
    }                                                                             \
                                                                                  \
    -(id)mutableCopyWithZone : (NSZone *)zone {                                   \
        return self;                                                              \
    }

#else

#define LY_SINGLETON_FOR_CLASS(__CLASSNAME__)                                                      \
    static id _##__CLASSNAME__##_sharedInstance = nil;                                             \
                                                                                                   \
    +(instancetype)sharedInstance {                                                                \
        static dispatch_once_t once;                                                               \
        dispatch_once(&once, ^{                                                                    \
            _##__CLASSNAME__##_sharedInstance = [[self alloc] init];                               \
        });                                                                                        \
        return _##__CLASSNAME__##_sharedInstance;                                                  \
    }                                                                                              \
                                                                                                   \
    +(id)allocWithZone : (struct _NSZone *)zone {                                                  \
        static dispatch_once_t once;                                                               \
        dispatch_once(&once, ^{                                                                    \
            _##__CLASSNAME__##_sharedInstance = [super allocWithZone:zone];                        \
        });                                                                                        \
        return _##__CLASSNAME__##_sharedInstance;                                                  \
    }                                                                                              \
                                                                                                   \
    +(id)mutableCopyWithZone : (struct _NSZone *)zone {                                            \
        static dispatch_once_t once;                                                               \
        dispatch_once(&once, ^{                                                                    \
            _##__CLASSNAME__##_sharedInstance = [super mutableCopyWithZone:zone];                  \
        });                                                                                        \
        return _##__CLASSNAME__##_sharedInstance;                                                  \
    }                                                                                              \
                                                                                                   \
    -(id)copyWithZone : (NSZone *)zone {                                                           \
        return self;                                                                               \
    }                                                                                              \
                                                                                                   \
    -(id)mutableCopyWithZone : (NSZone *)zone {                                                    \
        return self;                                                                               \
    }                                                                                              \
                                                                                                   \
    -(id)retain {                                                                                  \
        return self;                                                                               \
    }                                                                                              \
                                                                                                   \
    -(NSUInteger)retainCount {                                                                     \
        return NSUIntegerMax;                                                                      \
    }                                                                                              \
                                                                                                   \
    -(oneway void)release {                                                                        \
        NSAssert1(1 == 0, @"LYSingleton: %@ Warning: -(void)release method do nothing.", self);    \
    }                                                                                              \
                                                                                                   \
    -(id)autorelease {                                                                             \
        NSAssert1(1 == 0, @"LYSingleton: %@ Warning: -(id)autorelease method return self.", self); \
        return self;                                                                               \
    }

#endif

#endif /* LYSingleton_h */
