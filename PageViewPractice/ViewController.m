//
//  ViewController.m
//  PageViewPractice
//
//  Created by McCay Barnes on 1/5/16.
//  Copyright © 2016 McCay Barnes. All rights reserved.
//

#import "ViewController.h"
#import "PageViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.pageController = [self.storyboard instantiateViewControllerWithIdentifier:@"PageViewController"];
    self.pageController.dataSource = self;
    
    PageViewController *startingVC = [self viewControllerAtIndex:0];
    NSArray *viewControllers = @[startingVC];
    [self.pageController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:nil];
    self.pageController.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height - 30);
    
    [self addChildViewController:_pageController];
    [self.view addSubview:_pageController.view];
    [self.pageController didMoveToParentViewController:self];

}


- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    
    NSUInteger index = [(PageViewController *) viewController indexNumber];
    
    if (index == 0) {
        
        return nil;
    }
    
    index--;
    return [self viewControllerAtIndex:index];
}



- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    NSUInteger index = [(PageViewController *) viewController indexNumber];
    
    index++;
    if (index == 8) {
        
        return nil;
    }
    return [self viewControllerAtIndex:index];
}

-(PageViewController *) viewControllerAtIndex:(NSUInteger)index {
    
    PageViewController *pageViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PageContentViewController"];
    pageViewController.indexNumber = index;
    pageViewController.screenLabel.text = [NSString stringWithFormat:@"Screen Number %lu", (unsigned long)index];
    
    return pageViewController;
}


-(NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController {
    return 8;
}

-(NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController {
    return 0;
}

@end
