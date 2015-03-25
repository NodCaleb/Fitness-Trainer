//
//  ClockVC.m
//  Fitness Trainer
//
//  Created by Eugene Rozhkov on 25.03.15.
//  Copyright (c) 2015 Nord Point. All rights reserved.
//

#import "ClockVC.h"

@interface ClockVC ()

@end

@implementation ClockVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.clockPageVC = [self.storyboard instantiateViewControllerWithIdentifier:@"ClockPageVC"];
    self.clockPageVC.dataSource = self;
    
    self.pageIndex = 0;
    
    self.viewControllers = @[(StopWatchVC *)[self.storyboard instantiateViewControllerWithIdentifier:@"ClockStopWatchVC"],(AlarmVC *)[self.storyboard instantiateViewControllerWithIdentifier:@"ClockAlarmVC"]];
    
    NSArray *viewContorllers = @[[self.viewControllers objectAtIndex:0]];
    
    [self.clockPageVC setViewControllers:viewContorllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    
    [self addChildViewController:self.clockPageVC];
    [self.view addSubview:self.clockPageVC.view];
    
    CGRect pageViewRect = self.view.bounds;
    self.clockPageVC.view.frame = pageViewRect;
    
    [self.clockPageVC didMoveToParentViewController:self];
    self.view.gestureRecognizers = self.clockPageVC.gestureRecognizers;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - PageViewController DataSource

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
    if (self.pageIndex == 0)
    {
        return nil;
    }
    else
    {
        self.pageIndex--;
        return [self.viewControllers objectAtIndex:self.pageIndex];
    }
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
    if (self.pageIndex == [self.viewControllers count] - 1)
    {
        return nil;
    }
    else
    {
        self.pageIndex++;
        return [self.viewControllers objectAtIndex:self.pageIndex];
    }
}

- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController
{
    return 2;
}

- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController
{
    return 0;
}

@end
