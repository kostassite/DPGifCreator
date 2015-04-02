//
//  DPGSlide.m
//  DPGifCreator
//
//  Created by Kostas on 2/4/15.
//  Copyright (c) 2015 Kostas Antonopoulos. All rights reserved.
//

#import "DPGSlide.h"
#import "UIView+CaptureImage.h"

@interface DPGSlide (){
    
}

@property (nonatomic,strong) UILabel *textLabel;

@end

@implementation DPGSlide

#pragma mark - Text

-(void)setText:(NSString *)text{
    [self.textLabel setText:text];
}



#pragma mark - Getters

-(UILabel *)textLabel{
    if (!_textLabel) {
        _textLabel = [[UILabel alloc]initWithFrame:self.bounds];
        _textLabel.textColor = [UIColor whiteColor];
        _textLabel.font = [UIFont systemFontOfSize:15];
        [self addSubview:_textLabel];
    }
    return _textLabel;
}

-(UIImage*)image{
    return [UIView imageFromView:self];
}

@end
