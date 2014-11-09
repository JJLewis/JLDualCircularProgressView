//
//  DualProgressViewWithCenterInfo.h
//  L120
//
//  Created by Lewis, Jordan on 19/02/14.
//  Copyright (c) 2014 JordanLewis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DACircularProgressView.h"

@interface DualProgressViewWithCenterInfo : UIView {
    DACircularProgressView *outerProgressView;
    DACircularProgressView *innerProgressView;
    
    UIImageView *imageView;
    UILabel *label1;
    UILabel *label2;
}

@property (nonatomic, strong) DACircularProgressView *outerProgressView;
@property (nonatomic, strong) DACircularProgressView *innerProgressView;
@property (nonatomic, strong) UILabel *label1;
@property (nonatomic, strong) UILabel *label2;
@property (nonatomic, strong) UIImageView *imageView;

-(id)initWithLocation:(CGPoint)location andSize:(double)size andInnerSizeFactor:(int)sizeFactor;

@end
