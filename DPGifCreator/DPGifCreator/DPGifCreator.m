//
//  DPGifCreator.m
//  DPGifCreator
//
//  Created by Kostas on 2/4/15.
//  Copyright (c) 2015 Kostas Antonopoulos. All rights reserved.
//

#import "DPGifCreator.h"
#import "DPGSlide.h"

@implementation DPGifCreator

-(UIImage*)createGifWithSlides:(NSArray*)slidesArray andDuration:(NSTimeInterval)duration{
    NSMutableArray *imagesArray = [[NSMutableArray alloc]init];

    for (DPGSlide *slide in slidesArray) {
        [imagesArray addObject:slide.image];
    }
    
    UIImage *animatedImage = [UIImage animatedImageWithImages:imagesArray duration:duration*slidesArray.count];
    [imagesArray removeAllObjects];
    [[NSRunLoop currentRunLoop] runMode: NSDefaultRunLoopMode beforeDate:[NSDate date]];

    return animatedImage;
}

@end
