//
//  LYAssertHandler.m
//  LYMethodChaining
//
//  Created by Liya on 2018/2/13.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import "LYAssertHandler.h"

@implementation LYAssertHandler
//处理Objective-C的断言
- (void)handleFailureInMethod:(SEL)selector object:(id)object file:(NSString *)fileName lineNumber:(NSInteger)line description:(NSString *)format, ... {
#ifdef DEBUG
    id message;
    va_list ap;
    va_start(ap, format);
    message = [NSString stringWithFormat:@"NSAssert Failure: %@#%li Method %@ %@", fileName, (long)line, NSStringFromSelector(selector), format];
    NSLogv(message, ap);
    va_end(ap);
#endif
}


//处理C的断言
- (void)handleFailureInFunction:(NSString *)functionName file:(NSString *)fileName lineNumber:(NSInteger)line description:(NSString *)format, ... {
#ifdef DEBUG
    id message;
    va_list ap;
    va_start(ap, format);
    message = [NSString stringWithFormat:@"NSAssert Failure: %@#%li Method %@ %@", fileName, (long)line, functionName, format];
    NSLogv(message, ap);
    va_end(ap);
#endif
}

@end
