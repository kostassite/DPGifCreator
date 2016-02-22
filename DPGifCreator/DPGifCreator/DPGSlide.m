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
@property (nonatomic,strong) UIImageView *imageView;
@end

@implementation DPGSlide

#pragma mark - Image

-(void)setImage:(UIImage*)image{
    [self.imageView setImage:image];
}

-(void)setImageContentMode:(UIViewContentMode)contentMode{
    [self.imageView setContentMode:contentMode];
}

-(UIImageView*)imageView{
    if (!_imageView) {
        _imageView = [[UIImageView alloc]initWithFrame:self.bounds];
        [_imageView setContentMode:UIViewContentModeScaleAspectFill];
        if (self.textLabel) {
            [self insertSubview:_imageView belowSubview:self.textLabel];
        }else{
            [self addSubview:_imageView];
        }

    }
    return _imageView;
}

#pragma mark - Text

-(void)setText:(NSString *)text{
    [self.textLabel setText:text];
}

-(void)setAttributedText:(NSAttributedString*)attributedText{
    [self.textLabel setAttributedText:attributedText];
}

-(void)setTextAlignment:(NSTextAlignment)alignment{
    [self.textLabel setTextAlignment:alignment];
}

-(void)setTextColor:(UIColor*)color{
    [self.textLabel setTextColor:color];
}

-(void)setTextFont:(UIFont*)font{
    [self.textLabel setFont:font];
}

-(UILabel *)textLabel{
    if (!_textLabel) {
        _textLabel = [[UILabel alloc]initWithFrame:self.bounds];
        _textLabel.textColor = [UIColor whiteColor];
        _textLabel.font = [UIFont systemFontOfSize:100];
        _textLabel.numberOfLines = 0;
        _textLabel.backgroundColor = [UIColor clearColor];
        _textLabel.textAlignment = NSTextAlignmentCenter;
        
        [self addSubview:_textLabel];
    }
    return _textLabel;
}

#pragma mark - Getters

-(UIImage*)image{
    return [UIView imageFromView:self];
}

@end
