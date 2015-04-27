//
//  ClockVC.h
//  Fitness Trainer
//
//  Created by Eugene Rozhkov on 25.03.15.
//  Copyright (c) 2015 Nord Point. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AlarmVC.h"
//#import "StopWatchVC.h"

@interface ClockVC : UIViewController <UIPageViewControllerDataSource>

@property (strong, nonatomic) UIPageViewController *clockPageVC;
@property (strong, nonatomic) NSArray *viewControllers;
@property (nonatomic) int pageIndex;

@end
