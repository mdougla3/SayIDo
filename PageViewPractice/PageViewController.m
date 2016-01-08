//
//  PageViewController.m
//  PageViewPractice
//
//  Created by McCay Barnes on 1/5/16.
//  Copyright © 2016 McCay Barnes. All rights reserved.
//

#import "PageViewController.h"
#import "ViewController.h"
#import "CreateEventButtonsView.h"

@interface PageViewController ()

@end

@implementation PageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:YES];
    
    if (self.indexNumber == 0) {
        self.screenLabel.text = @"What are your names?";
    }
    else if (self.indexNumber == 1) {
        self.screenLabel.text = @"Click to upload a photo of the couple";
    }
    else if (self.indexNumber == 2) {
        self.screenLabel.text = @"When are you getting married?";
    }
    else if (self.indexNumber == 3) {
        self.screenLabel.text = @"Where are you getting married?";
    }
    else if (self.indexNumber == 4) {
        self.screenLabel.text = @"What hotel will you staying at?";
    }
    else if (self.indexNumber == 5) {
        self.screenLabel.text = @"What sites are you registering at?";
    }
    else if (self.indexNumber == 6) {
        self.screenLabel.text = @"Who is in your bridal party?";
    }
    else if (self.indexNumber == 7) {
        self.screenLabel.text = @"How did you two meet?";
    }

    
    [self.screenLabel sizeToFit];
    

//    CreateEventButtonsView *viewOutline = [[CreateEventButtonsView alloc] initWithFrame:CGRectMake(0, 0, 340, 600)];
//    [viewOutline setCenter:self.view.center];
//    [viewOutline setBackgroundColor:[UIColor grayColor]];
//    [self.view addSubview:viewOutline];
    
}



@end
