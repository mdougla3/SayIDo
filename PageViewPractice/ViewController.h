//
//  ViewController.h
//  PageViewPractice
//
//  Created by McCay Barnes on 1/5/16.
//  Copyright © 2016 McCay Barnes. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPageViewControllerDataSource>

@property (strong, nonatomic) UIPageViewController *pageController;

@end

