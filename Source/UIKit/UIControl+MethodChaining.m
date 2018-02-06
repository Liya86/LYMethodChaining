//
//  UIControl+MethodChaining.m
//  LYMethodChaining
//
//  Created by Liya on 2018/1/10.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import "LYMethodChainingMacros.h"
#import "UIControl+MethodChaining.h"

@implementation UIControl (MethodChaining)
- (UIControl * (^)(BOOL))mc_enabled {
    MC_Weakify(self) return ^UIControl *(BOOL enabled) {
        MC_Strongify(self)
            self.enabled = enabled;
        return self;
    };
}

- (UIControl * (^)(BOOL))mc_selected {
    MC_Weakify(self) return ^UIControl *(BOOL selected) {
        MC_Strongify(self)
            self.selected = selected;
        return self;
    };
}

- (UIControl * (^)(BOOL))mc_highlighted {
    MC_Weakify(self) return ^UIControl *(BOOL highlighted) {
        MC_Strongify(self)
            self.highlighted = highlighted;
        return self;
    };
}

- (UIControl * (^)(UIControlContentVerticalAlignment))mc_contentVerticalAlignment {
    MC_Weakify(self) return ^UIControl *(UIControlContentVerticalAlignment contentVerticalAlignment) {
        MC_Strongify(self)
            self.contentVerticalAlignment = contentVerticalAlignment;
        return self;
    };
}

- (UIControl * (^)(UIControlContentHorizontalAlignment))mc_contentHorizontalAlignment {
    MC_Weakify(self) return ^UIControl *(UIControlContentHorizontalAlignment contentHorizontalAlignment) {
        MC_Strongify(self)
            self.contentHorizontalAlignment = contentHorizontalAlignment;
        return self;
    };
}

- (UIControl * (^)(id, SEL, UIControlEvents))mc_addTarget {
    MC_Weakify(self) return ^UIControl *(id target, SEL action, UIControlEvents controlEvents) {
        MC_Strongify(self) if (action && [target respondsToSelector:action]) {
            [self addTarget:target action:action forControlEvents:controlEvents];
        }
        return self;
    };
}

- (UIControl * (^)(id, SEL, UIControlEvents))mc_removeTarget {
    MC_Weakify(self) return ^UIControl *(id target, SEL action, UIControlEvents controlEvents) {
        MC_Strongify(self)
            [self removeTarget:target
                          action:action
                forControlEvents:controlEvents];
        return self;
    };
}

- (UIControl * (^)(UIControlEvents))mc_sendActionsForControlEvents {
    MC_Weakify(self) return ^UIControl *(UIControlEvents controlEvents) {
        MC_Strongify(self)
            [self sendActionsForControlEvents:controlEvents];
        return self;
    };
}

@end
