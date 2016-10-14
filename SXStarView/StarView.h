//
//  StarView.h
//  Demo
//
//  Created by n369 on 2016/10/14.
//  Copyright © 2016年 SX. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StarView : UIView
//初始化方法
+ (instancetype)setStarViewWithFrame:(CGRect)frame andStarValue:(CGFloat)value;
+ (instancetype)setScaledStarViewWithFrame:(CGRect)frame andStarValue:(CGFloat)value;

- (void)resetStarVale:(CGFloat)value;

@end
