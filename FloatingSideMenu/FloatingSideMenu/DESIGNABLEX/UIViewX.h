//
//  UIViewX.h
//  FloatingMenu
//
//  Created by akshay bansal on 10/25/17.
//  Copyright © 2017 akshay bansal. All rights reserved.
//

#import <UIKit/UIKit.h>
IB_DESIGNABLE
@interface UIViewX : UIView

@property (nonatomic) IBInspectable UIColor *startColor;
@property (nonatomic) IBInspectable UIColor *midColor;
@property (nonatomic) IBInspectable UIColor *endColor;
@property (nonatomic) IBInspectable NSInteger borderWidth;
@property (nonatomic) IBInspectable CGFloat cornerRadious;
@property (nonatomic) IBInspectable BOOL isHorizontal;

@end
