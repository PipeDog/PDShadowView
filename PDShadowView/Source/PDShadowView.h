//
//  PDShadowView.h
//  PDShadowView
//
//  Created by liang on 2019/7/29.
//  Copyright © 2019 liang. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PDShadowView : UIView

@property (nonatomic, strong) UIColor *shadowColor;
@property (nonatomic, assign) CGSize shadowOffset;
@property (nonatomic, assign) float shadowOpacity;
@property (nonatomic, assign) CGFloat shadowRadius;
@property (nonatomic, assign) CGFloat cornerRadius;

@property (nonatomic, copy) UIBezierPath *(^drawShadowPathBlock)(PDShadowView *shadowView);

@end

NS_ASSUME_NONNULL_END
