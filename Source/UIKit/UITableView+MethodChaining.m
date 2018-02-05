//
//  UITableView+MethodChaining.m
//  LYMethodChaining
//
//  Created by Liya on 2018/1/10.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import "LYMethodChainingMacros.h"
#import "UITableView+MethodChaining.h"

@implementation UITableView (MethodChaining)
- (UITableView * (^)(id<UITableViewDataSource>))mc_dataSource {
    MC_Weakify(self) return ^UITableView *(id<UITableViewDataSource> dataSource) {
        MC_Strongify(self)
            self.dataSource = dataSource;
        return self;
    };
}

- (UITableView * (^)(id<UITableViewDelegate>))mc_delegate {
    MC_Weakify(self) return ^UITableView *(id<UITableViewDelegate> delegate) {
        MC_Strongify(self)
            self.delegate = delegate;
        return self;
    };
}

- (UITableView * (^)(id<UITableViewDataSourcePrefetching>))mc_prefetchDataSource {
    MC_Weakify(self) return ^UITableView *(id<UITableViewDataSourcePrefetching> prefetchDataSource) {
        MC_Strongify(self)
            self.prefetchDataSource = prefetchDataSource;
        return self;
    };
}

- (UITableView * (^)(id<UITableViewDragDelegate>))mc_dragDelegate {
    MC_Weakify(self) return ^UITableView *(id<UITableViewDragDelegate> dragDelegate) {
        MC_Strongify(self)
            self.dragDelegate = dragDelegate;
        return self;
    };
}

- (UITableView * (^)(id<UITableViewDropDelegate>))mc_dropDelegate {
    MC_Weakify(self) return ^UITableView *(id<UITableViewDropDelegate> dropDelegate) {
        MC_Strongify(self)
            self.dropDelegate = dropDelegate;
        return self;
    };
}

- (UITableView * (^)(CGFloat))mc_rowHeight {
    MC_Weakify(self) return ^UITableView *(CGFloat rowHeight) {
        MC_Strongify(self)
            self.rowHeight = rowHeight;
        return self;
    };
}

- (UITableView * (^)(CGFloat))mc_sectionHeaderHeight {
    MC_Weakify(self) return ^UITableView *(CGFloat sectionHeaderHeight) {
        MC_Strongify(self)
            self.sectionHeaderHeight = sectionHeaderHeight;
        return self;
    };
}

- (UITableView * (^)(CGFloat))mc_sectionFooterHeight {
    MC_Weakify(self) return ^UITableView *(CGFloat sectionFooterHeight) {
        MC_Strongify(self)
            self.sectionFooterHeight = sectionFooterHeight;
        return self;
    };
}

- (UITableView * (^)(CGFloat))mc_estimatedRowHeight {
    MC_Weakify(self) return ^UITableView *(CGFloat estimatedRowHeight) {
        MC_Strongify(self)
            self.estimatedRowHeight = estimatedRowHeight;
        return self;
    };
}

- (UITableView * (^)(CGFloat))mc_estimatedSectionHeaderHeight {
    MC_Weakify(self) return ^UITableView *(CGFloat estimatedSectionHeaderHeight) {
        MC_Strongify(self)
            self.estimatedSectionHeaderHeight = estimatedSectionHeaderHeight;
        return self;
    };
}

- (UITableView * (^)(CGFloat))mc_estimatedSectionFooterHeight {
    MC_Weakify(self) return ^UITableView *(CGFloat estimatedSectionFooterHeight) {
        MC_Strongify(self)
            self.estimatedSectionFooterHeight = estimatedSectionFooterHeight;
        return self;
    };
}

- (UITableView * (^)(UIEdgeInsets))mc_separatorInset {
    MC_Weakify(self) return ^UITableView *(UIEdgeInsets separatorInset) {
        MC_Strongify(self)
            self.separatorInset = separatorInset;
        return self;
    };
}

- (UITableView * (^)(UITableViewSeparatorInsetReference))mc_separatorInsetReference {
    MC_Weakify(self) return ^UITableView *(UITableViewSeparatorInsetReference separatorInsetReference) {
        MC_Strongify(self)
            self.separatorInsetReference = separatorInsetReference;
        return self;
    };
}

- (UITableView * (^)(UIView *_Nullable))mc_backgroundView {
    MC_Weakify(self) return ^UITableView *(UIView *_Nullable backgroundView) {
        MC_Strongify(self)
            self.backgroundView = backgroundView;
        return self;
    };
}

- (UITableView * (^)(BOOL))mc_editing {
    MC_Weakify(self) return ^UITableView *(BOOL editing) {
        MC_Strongify(self)
            self.editing = editing;
        return self;
    };
}

- (UITableView * (^)(BOOL, BOOL))mc_editingWithAnimated {
    MC_Weakify(self) return ^UITableView *(BOOL editing, BOOL animated) {
        MC_Strongify(self)
            [self setEditing:editing
                    animated:animated];
        return self;
    };
}

- (UITableView * (^)(BOOL))mc_allowsSelection {
    MC_Weakify(self) return ^UITableView *(BOOL allowsSelection) {
        MC_Strongify(self)
            self.allowsSelection = allowsSelection;
        return self;
    };
}

- (UITableView * (^)(BOOL))mc_allowsSelectionDuringEditing {
    MC_Weakify(self) return ^UITableView *(BOOL allowsSelectionDuringEditing) {
        MC_Strongify(self)
            self.allowsSelectionDuringEditing = allowsSelectionDuringEditing;
        return self;
    };
}

- (UITableView * (^)(BOOL))mc_allowsMultipleSelection {
    MC_Weakify(self) return ^UITableView *(BOOL allowsMultipleSelection) {
        MC_Strongify(self)
            self.allowsMultipleSelection = allowsMultipleSelection;
        return self;
    };
}

- (UITableView * (^)(BOOL))mc_allowsMultipleSelectionDuringEditing {
    MC_Weakify(self) return ^UITableView *(BOOL allowsMultipleSelectionDuringEditing) {
        MC_Strongify(self)
            self.allowsMultipleSelectionDuringEditing = allowsMultipleSelectionDuringEditing;
        return self;
    };
}

- (UITableView * (^)(NSInteger))mc_sectionIndexMinimumDisplayRowCount {
    MC_Weakify(self) return ^UITableView *(NSInteger sectionIndexMinimumDisplayRowCount) {
        MC_Strongify(self)
            self.sectionIndexMinimumDisplayRowCount = sectionIndexMinimumDisplayRowCount;
        return self;
    };
}

- (UITableView * (^)(UIColor *))mc_sectionIndexColor {
    MC_Weakify(self) return ^UITableView *(UIColor *sectionIndexColor) {
        MC_Strongify(self)
            self.sectionIndexColor = sectionIndexColor;
        return self;
    };
}

- (UITableView * (^)(UIColor *))mc_sectionIndexBackgroundColor {
    MC_Weakify(self) return ^UITableView *(UIColor *sectionIndexBackgroundColor) {
        MC_Strongify(self)
            self.sectionIndexBackgroundColor = sectionIndexBackgroundColor;
        return self;
    };
}

- (UITableView * (^)(UIColor *))mc_sectionIndexTrackingBackgroundColor {
    MC_Weakify(self) return ^UITableView *(UIColor *sectionIndexTrackingBackgroundColor) {
        MC_Strongify(self)
            self.sectionIndexTrackingBackgroundColor = sectionIndexTrackingBackgroundColor;
        return self;
    };
}

- (UITableView * (^)(UITableViewCellSeparatorStyle))mc_separatorStyle {
    MC_Weakify(self) return ^UITableView *(UITableViewCellSeparatorStyle separatorStyle) {
        MC_Strongify(self)
            self.separatorStyle = separatorStyle;
        return self;
    };
}

- (UITableView * (^)(UIColor *))mc_separatorColor {
    MC_Weakify(self) return ^UITableView *(UIColor *separatorColor) {
        MC_Strongify(self)
            self.separatorColor = separatorColor;
        return self;
    };
}

- (UITableView * (^)(UIVisualEffect *))mc_separatorEffect {
    MC_Weakify(self) return ^UITableView *(UIVisualEffect *separatorEffect) {
        MC_Strongify(self)
            self.separatorEffect = separatorEffect;
        return self;
    };
}

- (UITableView * (^)(BOOL))mc_cellLayoutMarginsFollowReadableWidth {
    MC_Weakify(self) return ^UITableView *(BOOL cellLayoutMarginsFollowReadableWidth) {
        MC_Strongify(self)
            self.cellLayoutMarginsFollowReadableWidth = cellLayoutMarginsFollowReadableWidth;
        return self;
    };
}

- (UITableView * (^)(BOOL))mc_insetsContentViewsToSafeArea {
    MC_Weakify(self) return ^UITableView *(BOOL insetsContentViewsToSafeArea) {
        MC_Strongify(self)
            self.insetsContentViewsToSafeArea = insetsContentViewsToSafeArea;
        return self;
    };
}

- (UITableView * (^)(UIView *_Nullable))mc_tableHeaderView {
    MC_Weakify(self) return ^UITableView *(UIView *_Nullable tableHeaderView) {
        MC_Strongify(self)
            self.tableHeaderView = tableHeaderView;
        return self;
    };
}

- (UITableView * (^)(UIView *_Nullable))mc_tableFooterView {
    MC_Weakify(self) return ^UITableView *(UIView *_Nullable tableFooterView) {
        MC_Strongify(self)
            self.tableFooterView = tableFooterView;
        return self;
    };
}

- (UITableView * (^)(Class _Nullable, NSString *))mc_registerClassForCellReuseIdentifier {
    MC_Weakify(self) return ^UITableView *(Class _Nullable aClass, NSString *identifier) {
        MC_Strongify(self)
            [self registerClass:aClass
                forCellReuseIdentifier:identifier];
        return self;
    };
}

- (UITableView * (^)(Class _Nullable, NSString *))mc_registerClassForHeaderFooterViewReuseIdentifier {
    MC_Weakify(self) return ^UITableView *(Class _Nullable aClass, NSString *identifier) {
        MC_Strongify(self)
            [self registerClass:aClass
                forHeaderFooterViewReuseIdentifier:identifier];
        return self;
    };
}
@end
