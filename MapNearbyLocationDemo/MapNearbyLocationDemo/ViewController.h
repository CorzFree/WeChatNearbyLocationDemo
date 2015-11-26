//
//  ViewController.h
//  MapNearbyLocationDemo
//
//  Created by crw on 11/26/15.
//  Copyright © 2015 crw. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MAMapKit/MAMapKit.h>
#import <AMapSearchKit/AMapSearchKit.h>

typedef void(^SelectLocationSuccessBlock)(AMapPOI *poi);

@interface ViewController : UIViewController

@property (nonatomic,strong)   AMapPOI                      *oldPoi;
@property (nonatomic,copy  )   SelectLocationSuccessBlock   successBlock;

@end

