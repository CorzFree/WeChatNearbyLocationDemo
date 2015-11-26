//
//  MainViewController.m
//  MapNearbyLocationDemo
//
//  Created by crw on 11/26/15.
//  Copyright © 2015 crw. All rights reserved.
//

#import "MainViewController.h"
#import "ViewController.h"

@interface MainViewController()

@property (nonatomic, strong) AMapPOI     *poi;

@end

@implementation MainViewController

- (IBAction)selectLocationClick:(UIButton *)sender {
    ViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"SelectLocaitonVC"];
    vc.hidesBottomBarWhenPushed = YES;
    
    if (self.poi) {
        vc.oldPoi = self.poi;
    }
    __weak __typeof(self) weakSelf = self;
    [vc setSuccessBlock:^(AMapPOI *obj){
        __strong __typeof(weakSelf) strongSelf = weakSelf;
        strongSelf.poi = obj;
        if (obj) {
            if (obj.name.length > 0) {
                strongSelf.label.text = [NSString stringWithFormat:@"%@·%@\n%@",self.poi.city,self.poi.name,self.poi.address];
            }else{
                strongSelf.label.text = [NSString stringWithFormat:@"%@",self.poi.city];
            }
        }else{
            strongSelf.label.text = @"所在位置";
        }
    }];

    [self.navigationController pushViewController:vc animated:YES];
}

@end
