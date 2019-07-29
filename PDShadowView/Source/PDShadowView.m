//
//  PDShadowView.m
//  PDShadowView
//
//  Created by liang on 2019/7/29.
//  Copyright © 2019 liang. All rights reserved.
//

#import "PDShadowView.h"

@implementation PDShadowView

- (void)layoutSubviews {
    [super layoutSubviews];
    
    UIBezierPath *bezierPath;
    
    if (self.drawShadowPathBlock) {
        bezierPath = self.drawShadowPathBlock(self);
    } else {
        bezierPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:self.cornerRadius];
    }
    
    self.layer.shadowPath = bezierPath.CGPath;
}

#pragma mark - Setter Methods
- (void)setShadowColor:(UIColor *)shadowColor {
    _shadowColor = shadowColor;
    self.layer.shadowColor = shadowColor.CGColor;
}

- (void)setShadowOffset:(CGSize)shadowOffset {
    _shadowOffset = shadowOffset;
    self.layer.shadowOffset = shadowOffset;
}

- (void)setShadowOpacity:(float)shadowOpacity {
    _shadowOpacity = shadowOpacity;
    self.layer.shadowOpacity = shadowOpacity;
}

- (void)setShadowRadius:(CGFloat)shadowRadius {
    _shadowRadius = shadowRadius;
    self.layer.shadowRadius = shadowRadius;
}

- (void)setCornerRadius:(CGFloat)cornerRadius {
    _cornerRadius = cornerRadius;
    self.layer.cornerRadius = _cornerRadius;
}

@end
