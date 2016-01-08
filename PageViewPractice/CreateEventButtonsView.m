//
//  CreateEventButtonsView.m
//  PageViewPractice
//
//  Created by McCay Barnes on 1/6/16.
//  Copyright © 2016 McCay Barnes. All rights reserved.
//

#import "CreateEventButtonsView.h"

@implementation CreateEventButtonsView

- (void) drawRect:(CGRect)rect {
        CGContextRef context = UIGraphicsGetCurrentContext();
        
        CGContextSetStrokeColorWithColor(context, [[UIColor whiteColor] CGColor]);
        
        CGFloat dashes[] = {20,20};
        
        CGContextSetLineDash(context, 0.0, dashes, 2);
        CGContextSetLineWidth(context, 10.0);
        
        CGContextMoveToPoint(context, CGRectGetMinX(rect), CGRectGetMaxY(rect));
        CGContextAddLineToPoint(context, CGRectGetMaxX(rect), CGRectGetMaxY(rect));
        CGContextAddLineToPoint(context, CGRectGetMaxX(rect), CGRectGetMinY(rect));
        CGContextAddLineToPoint(context, CGRectGetMinX(rect), CGRectGetMinY(rect));
        CGContextAddLineToPoint(context, CGRectGetMinX(rect), CGRectGetMaxY(rect));
        CGContextSetShouldAntialias(context, NO);
        CGContextStrokePath(context);
        
        [self setEditButton:[UIButton buttonWithType:UIButtonTypeCustom]];
        [self.editButton setFrame:rect];
        [self.editButton addTarget:self action:@selector(editButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:self.editButton];
}

@end
