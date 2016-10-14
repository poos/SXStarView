//
//  ViewController.m
//  Demo
//
//  Created by n369 on 16/8/30.
//  
//

#import "ViewController.h"
#import "StarView.h"

@interface ViewController () {
    UIImageView *_imageView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after 
    
    
    StarView * star1 = [StarView setStarViewWithFrame:CGRectMake(124, 70, 75, 14) andStarValue:3.7];
    [self.view addSubview:star1];
    StarView * star2 = [StarView setStarViewWithFrame:CGRectMake(124, 90, 75, 14) andStarValue:3.7];
    [self.view addSubview:star2];
    [star2 resetStarVale:2.7];
    
    
    StarView * star11 = [StarView setScaledStarViewWithFrame:CGRectMake(124, 150, 200, 14) andStarValue:3.7];
    [self.view addSubview:star11];
    StarView * star21 = [StarView setScaledStarViewWithFrame:CGRectMake(124, 190, 200, 14) andStarValue:3.7];
    [self.view addSubview:star21];
    [star21 resetStarVale:2.7];
    [star21 resetStarVale:1.7];
    [star21 resetStarVale:2.7];
}

- (void)rightAction:(UIButton *)button {
    button.selected = !button.selected;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
