//
//  TYCyclePagerViewCell.m
//  SmartFarm
//
//  Created by Ssiswent on 2019/6/21.
//  Copyright © 2019年 Ssiswent. All rights reserved.
//

#import "TYCyclePagerViewCell.h"

@interface TYCyclePagerViewCell ()
@property (nonatomic, weak) UILabel *label;

@property (nonatomic, weak) UILabel *lblTemp;
@property (nonatomic, weak) UILabel *lblLight;
@property (nonatomic, weak) UILabel *lblAir;

@property (nonatomic, weak) UIImage *temp;
@property (nonatomic, weak) UIImageView *viewTemp;

@property (nonatomic, weak) UIImage *light;
@property (nonatomic, weak) UIImageView *viewLight;

@property (nonatomic, weak) UIImage *air;
@property (nonatomic, weak) UIImageView *viewAir;



@end

@implementation TYCyclePagerViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor clearColor];
        [self addLabel];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        self.backgroundColor = [UIColor clearColor];
        [self addLabel];
    }
    return self;
}


- (void)addLabel {
//    UILabel *label = [[UILabel alloc]init];
//    label.textAlignment = NSTextAlignmentCenter;
//    label.textColor = [UIColor whiteColor];
//    label.font = [UIFont systemFontOfSize:18];
//    [self addSubview:label];
//    _label = label;
    
    UILabel *label = [[UILabel alloc]init];
    label.text = @"光照温湿度变送器";
    label.textColor = [UIColor blackColor];
    label.font = [UIFont boldSystemFontOfSize:24];
    label.textAlignment = NSTextAlignmentLeft;
    label.frame = CGRectMake(10, 10, 200, 30);
    
    UILabel *lblTemp = [[UILabel alloc]init];
    lblTemp.text = @"25";
    lblTemp.textColor = [UIColor colorWithRed:89.0/255.0 green:221.0/255.0 blue:112.0/255.0 alpha:1.0];
    lblTemp.font = [UIFont boldSystemFontOfSize:24];
    lblTemp.textAlignment = NSTextAlignmentRight;
    lblTemp.frame = CGRectMake(82, 92.5, 80, 25);
    
    UIImage *temp = [UIImage imageNamed:@"temp"];
    
    UIImageView *viewTemp = [[UIImageView alloc] initWithImage:temp];
    
    UIImage *light = [UIImage imageNamed:@"light"];
    
    UIImageView *viewLight = [[UIImageView alloc] initWithImage:light];
    
    UIImage *air = [UIImage imageNamed:@"air_humidity"];
    
    UIImageView *viewAir = [[UIImageView alloc] initWithImage:air];
    
    
    
//    [viewTemp setBackgroundColor:[UIColor redColor]];
    
//    viewTemp.frame=CGRectMake(10, 266, temp.size.width, temp.size.height);
    
    //上面括号内的设置方式可以让图片以原图尺寸显示
    
    viewTemp.frame = CGRectMake(10, 60, 165, 90);
    
    viewTemp.contentMode=UIViewContentModeScaleAspectFit;
    
    viewLight.frame = CGRectMake(200, 60, 165, 90);
    
    viewLight.contentMode=UIViewContentModeScaleAspectFit;
    
    viewAir.frame = CGRectMake(10, 170, 165, 90);
    
    viewAir.contentMode=UIViewContentModeScaleAspectFit;
    
    [self addSubview:label];
    _label = label;
    
    
    [self addSubview:viewTemp];
    _viewTemp = viewTemp;
    [self addSubview:lblTemp];
    _lblTemp = lblTemp;
    
    [self addSubview:viewLight];
    _viewLight = viewLight;
    
    
    [self addSubview:viewAir];
    _viewAir = viewAir;
    
    
    
}

- (void)layoutSubviews {
    [super layoutSubviews];
//    _label.frame = self.bounds;
//    _viewTemp.frame = self.bounds;
}

@end
