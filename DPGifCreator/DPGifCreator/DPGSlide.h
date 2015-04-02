//
//  DPGSlide.h
//  DPGifCreator
//
//  Created by Kostas on 2/4/15.
//  Copyright (c) 2015 Kostas Antonopoulos. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DPGSlide : UIView

-(void)setImage:(UIImage*)image;
-(void)setImageContentMode:(UIViewContentMode)contentMode;

//text
-(void)setText:(NSString*)text;
-(void)setTextAlignment:(NSTextAlignment)alignment;
-(void)setTextColor:(UIColor*)color;
-(void)setTextFont:(UIFont*)font;

-(UIImage*)image;

@end
