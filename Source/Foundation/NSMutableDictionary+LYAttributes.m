//
//  NSMutableDictionary+LYAttributes.m
//  LYMethodChaining
//
//  Created by Liya on 2018/1/16.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import "LYMethodChainingMacros.h"
#import "NSMutableDictionary+LYAttributes.h"
#import "NSMutableDictionary+LYFoundation.h"
#import <UIKit/UIKit.h>

@implementation NSMutableDictionary (LYAttributes)

- (NSMutableDictionary * (^)(UIFont *))mc_attribute_font {
    MC_Weakify(self) return ^NSMutableDictionary *(UIFont *font) {
        MC_Strongify(self)
            [self ly_setObject:font
                        forKey:NSFontAttributeName];
        return self;
    };
}

- (NSMutableDictionary * (^)(UIColor *))mc_attribute_foregroundColor {
    MC_Weakify(self) return ^NSMutableDictionary *(UIColor *color) {
        MC_Strongify(self)
            [self ly_setObject:color
                        forKey:NSForegroundColorAttributeName];
        return self;
    };
}

- (NSMutableDictionary * (^)(UIColor *))mc_attribute_backgroundColor {
    MC_Weakify(self) return ^NSMutableDictionary *(UIColor *color) {
        MC_Strongify(self)
            [self ly_setObject:color
                        forKey:NSBackgroundColorAttributeName];
        return self;
    };
}

- (NSMutableDictionary * (^)(NSNumber *))mc_attribute_ligatureColor {
    MC_Weakify(self) return ^NSMutableDictionary *(NSNumber *ligature) {
        MC_Strongify(self)
            [self ly_setObject:ligature
                        forKey:NSLigatureAttributeName];
        return self;
    };
}

- (NSMutableDictionary * (^)(NSNumber *))mc_attribute_kernColor {
    MC_Weakify(self) return ^NSMutableDictionary *(NSNumber *kern) {
        MC_Strongify(self)
            [self ly_setObject:kern
                        forKey:NSKernAttributeName];
        return self;
    };
}

- (NSMutableDictionary * (^)(NSNumber *))mc_attribute_strikethroughStyle {
    MC_Weakify(self) return ^NSMutableDictionary *(NSNumber *style) {
        MC_Strongify(self)
            [self ly_setObject:style
                        forKey:NSStrikethroughStyleAttributeName];
        return self;
    };
}

- (NSMutableDictionary * (^)(NSNumber *))mc_attribute_underlineStyle {
    MC_Weakify(self) return ^NSMutableDictionary *(NSNumber *style) {
        MC_Strongify(self)
            [self ly_setObject:style
                        forKey:NSUnderlineStyleAttributeName];
        return self;
    };
}

- (NSMutableDictionary * (^)(UIColor *))mc_attribute_strokeColor {
    MC_Weakify(self) return ^NSMutableDictionary *(UIColor *color) {
        MC_Strongify(self)
            [self ly_setObject:color
                        forKey:NSStrokeColorAttributeName];
        return self;
    };
}

- (NSMutableDictionary * (^)(NSMutableParagraphStyle *))mc_attribute_paragraphStyle {
    MC_Weakify(self) return ^NSMutableDictionary *(NSMutableParagraphStyle *paragraph) {
        MC_Strongify(self)
            [self ly_setObject:paragraph
                        forKey:NSParagraphStyleAttributeName];
        return self;
    };
}

- (NSMutableDictionary * (^)(NSNumber *))mc_attribute_strokeWidth {
    MC_Weakify(self) return ^NSMutableDictionary *(NSNumber *strokeWidth) {
        MC_Strongify(self)
            [self ly_setObject:strokeWidth
                        forKey:NSStrokeWidthAttributeName];
        return self;
    };
}

- (NSMutableDictionary * (^)(NSShadow *))mc_attribute_shadow {
    MC_Weakify(self) return ^NSMutableDictionary *(NSShadow *shadow) {
        MC_Strongify(self)
            [self ly_setObject:shadow
                        forKey:NSShadowAttributeName];
        return self;
    };
}

- (NSMutableDictionary * (^)(NSString *))mc_attribute_textEffect {
    MC_Weakify(self) return ^NSMutableDictionary *(NSString *textEffect) {
        MC_Strongify(self)
            [self ly_setObject:textEffect
                        forKey:NSTextEffectAttributeName];
        return self;
    };
}

- (NSMutableDictionary * (^)(NSTextAttachment *))mc_attribute_attachment {
    MC_Weakify(self) return ^NSMutableDictionary *(NSTextAttachment *ttachment) {
        MC_Strongify(self)
            [self ly_setObject:ttachment
                        forKey:NSAttachmentAttributeName];
        return self;
    };
}

- (NSMutableDictionary * (^)(id))mc_attribute_link {
    MC_Weakify(self) return ^NSMutableDictionary *(id link) {
        MC_Strongify(self)
            [self ly_setObject:link
                        forKey:NSLinkAttributeName];
        return self;
    };
}

- (NSMutableDictionary * (^)(NSNumber *))mc_attribute_baselineOffset {
    MC_Weakify(self) return ^NSMutableDictionary *(NSNumber *baselineOffset) {
        MC_Strongify(self)
            [self ly_setObject:baselineOffset
                        forKey:NSBaselineOffsetAttributeName];
        return self;
    };
}

- (NSMutableDictionary * (^)(UIColor *))mc_attribute_underlineColor {
    MC_Weakify(self) return ^NSMutableDictionary *(UIColor *color) {
        MC_Strongify(self)
            [self ly_setObject:color
                        forKey:NSUnderlineColorAttributeName];
        return self;
    };
}

- (NSMutableDictionary * (^)(UIColor *))mc_attribute_strikethroughColor {
    MC_Weakify(self) return ^NSMutableDictionary *(UIColor *color) {
        MC_Strongify(self)
            [self ly_setObject:color
                        forKey:NSStrikethroughColorAttributeName];
        return self;
    };
}

- (NSMutableDictionary * (^)(NSNumber *))mc_attribute_obliqueness {
    MC_Weakify(self) return ^NSMutableDictionary *(NSNumber *obliqueness) {
        MC_Strongify(self)
            [self ly_setObject:obliqueness
                        forKey:NSObliquenessAttributeName];
        return self;
    };
}

- (NSMutableDictionary * (^)(NSNumber *))mc_attribute_expansion {
    MC_Weakify(self) return ^NSMutableDictionary *(NSNumber *expansion) {
        MC_Strongify(self)
            [self ly_setObject:expansion
                        forKey:NSExpansionAttributeName];
        return self;
    };
}

@end
