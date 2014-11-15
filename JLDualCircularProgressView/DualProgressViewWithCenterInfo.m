//
//  DualProgressViewWithCenterInfo.m
//  
//
//  Created by Lewis, Jordan on 19/02/14.
//  Copyright (c) 2014 JordanLewis. All rights reserved.
//

#import "DualProgressViewWithCenterInfo.h"

@implementation DualProgressViewWithCenterInfo

@synthesize outerProgressView, innerProgressView;
@synthesize label1, label2, imageView;

#define DAY_COLOUR [UIColor colorWithRed:0.0/255.0 green:230.0/255.0 blue:101.0/255.0 alpha:1.0]
#define NIGHT_COLOUR [UIColor colorWithRed:101.0/255.0 green:60.0/255.0 blue:217.0/255.0 alpha:1.0]

-(id)initWithLocation:(CGPoint)location andSize:(double)size andInnerSizeFactor:(int)sizeFactor {
    CGRect frame = CGRectMake(location.x, location.y, size, size);
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        float thicknessRatio = 1/(size/sizeFactor);
        
        [self setBackgroundColor:[UIColor clearColor]];
        [self setCenter:CGPointMake(location.x, location.y)];
        
        outerProgressView = [[DACircularProgressView alloc] initWithFrame:CGRectMake(0, 0, size, size)];
        outerProgressView.roundedCorners = YES;
        outerProgressView.trackTintColor = [[UIColor grayColor] colorWithAlphaComponent:0.2];
        outerProgressView.progressTintColor = [[UIColor greenColor] colorWithAlphaComponent:0.8];//0,230,101 Green 0.8
        outerProgressView.roundedCorners = NO;
        outerProgressView.thicknessRatio = thicknessRatio;
        outerProgressView.center = CGPointMake(size/2, size/2);
        [self addSubview:outerProgressView];
        
        innerProgressView = [[DACircularProgressView alloc] initWithFrame:CGRectMake(0, 0, size-sizeFactor, size-sizeFactor)];
        innerProgressView.roundedCorners = YES;
        innerProgressView.trackTintColor = [[UIColor grayColor] colorWithAlphaComponent:0.1];
        innerProgressView.progressTintColor = [[UIColor purpleColor] colorWithAlphaComponent:0.8];//101,60,217 Purple 0.8
        innerProgressView.roundedCorners = NO;
        innerProgressView.thicknessRatio = thicknessRatio;
        innerProgressView.center = CGPointMake(size/2, size/2);
        [self addSubview:innerProgressView];
        
        imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
        [imageView setCenter:CGPointMake(size/2, (size/2)-20)];
        [imageView setImage:[UIImage imageNamed:@"Question.png"]];
        [imageView setAlpha:0.5];
        [self addSubview:imageView];
        
        label1 = [[UILabel alloc] initWithFrame:CGRectMake(0, (size-sizeFactor*2)-27, size, 25)];
        [label1 setTextAlignment:NSTextAlignmentCenter];
        label1.text = @"Sunrise: 6:30";
        label1.font = [UIFont fontWithName:"HelveticaNeue-Light" size:18];
        [self addSubview:label1];
        
        label2 = [[UILabel alloc] initWithFrame:CGRectMake(0, (size-sizeFactor*2)-7, size, 25)];
        [label2 setTextAlignment:NSTextAlignmentCenter];
        label2.text = @"Sunset: 7:30";
        label2.font = [UIFont fontWithName:"HelveticaNeue-Light" size:18];
        [self addSubview:label2];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect
 {
 // Drawing code
 }
 */

@end
