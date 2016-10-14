//
//  StarView.m
//  Demo
//
//  Created by n369 on 2016/10/14.
//  Copyright © 2016年 SX. All rights reserved.
//

#import "StarView.h"

static NSInteger staWid = 1;

@interface StarView () {
    NSMutableArray *_staArr;
    UIView *_faceView;
    
    BOOL _isScaled;
}

@end


@implementation StarView

+ (instancetype)setStarViewWithFrame:(CGRect)frame andStarValue:(CGFloat)value {
    return [[StarView alloc] initWithFrame:frame andStarValue:value isScaled:NO];
}
+ (instancetype)setScaledStarViewWithFrame:(CGRect)frame andStarValue:(CGFloat)value {
    return [[StarView alloc] initWithFrame:frame andStarValue:value isScaled:YES];
}

//- (instancetype)
- (instancetype)initWithFrame:(CGRect)frame andStarValue:(CGFloat)value isScaled:(BOOL)isScaled{
    self = [super initWithFrame:frame];
    if (self) {
        if (isScaled) {
            [self createScaleStarViewFromValue:value];
            _isScaled = YES;
        } else {
            [self createStarViewFromValue:value];
        }
        
    }
    return self;
}

- (void)createStarViewFromValue:(float)value {
    if (!_staArr) {
        _staArr = [[NSMutableArray alloc] initWithCapacity:0];
    }
    
    float wid = (self.bounds.size.width - staWid * 4) / 5;
    for (int a = 0; a < 5; a++) {
        UIImageView *image = nil;
        if (_staArr.count>a) {
            image = _staArr[a];
        } else {
            image = [[UIImageView alloc] initWithFrame:CGRectMake((wid + staWid) * a, 0, wid, wid)];
            [_staArr addObject:image];
            [self addSubview:image];
        }
        
        if (a < value - 1) {
            image.image = [UIImage imageNamed:@"RankStarColor"];
        } else if (a < value) {
            if ((value - a) < .20) {
                image.image = [UIImage imageNamed:@"RankStarGray"];
            } else if ((value - a) < .79) {
                image.image = [UIImage imageNamed:@"RankStarHalf"];
            } else {
                image.image = [UIImage imageNamed:@"RankStarColor"];
            }
        } else {
            image.image = [UIImage imageNamed:@"RankStarGray"];
        }
    }
}

- (void)createScaleStarViewFromValue:(float)value {
    if (!_staArr) {
        _staArr = [[NSMutableArray alloc] initWithCapacity:0];
    }
    
    float wid = (self.bounds.size.width - staWid * 4) / 5;
    for (int a = 0; a < 5; a++) {
        UIImageView *image = nil;
        if (_staArr.count>a) {
            image = _staArr[a];
        } else {
            image = [[UIImageView alloc] initWithFrame:CGRectMake((wid + staWid) * a, 0, wid, wid)];
            [_staArr addObject:image];
            [self addSubview:image];
        }
        
        if (a < value - 1) {
            image.image = [UIImage imageNamed:@"RankStarColor"];
        } else if (a < value) {
            image.image = [UIImage imageNamed:@"RankStarGray"];
            
            if (_faceView) {
                _faceView.frame = CGRectMake((wid + staWid) * a, 0, wid * (value - a), wid);
            } else {
                _faceView = [[UIView alloc] initWithFrame:CGRectMake((wid + staWid) * a, 0, wid * (value - a), wid)];
                UIImageView *imageFace = [[UIImageView alloc] initWithFrame:CGRectMake((wid + staWid) * a, 0, wid, wid)];
                imageFace.frame = CGRectMake(0, 0, wid, wid);
                imageFace.image = [UIImage imageNamed:@"RankStarColor"];
                _faceView.clipsToBounds = YES;
                [_faceView addSubview:imageFace];
                [self addSubview:_faceView];
            }
            
            
        } else {
            image.image = [UIImage imageNamed:@"RankStarGray"];
        }
    }
}

- (void)resetStarVale:(CGFloat)value {
    if (_isScaled) {
        [self createScaleStarViewFromValue:value];
    } else {
        [self createStarViewFromValue:value];
    }
}

@end
