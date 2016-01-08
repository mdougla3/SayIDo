//
//  PageViewController.h
//  PageViewPractice
//
//  Created by McCay Barnes on 1/5/16.
//  Copyright © 2016 McCay Barnes. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PageViewController : UIViewController 

@property (weak, nonatomic) IBOutlet UILabel *screenLabel;
@property (assign, nonatomic) NSUInteger indexNumber;


@end
