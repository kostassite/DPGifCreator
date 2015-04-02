//
//  DPGifCreator.h
//  DPGifCreator
//
//  Created by Kostas on 2/4/15.
//  Copyright (c) 2015 Kostas Antonopoulos. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DPGifCreator : NSObject

-(UIImage*)createGifWithSlides:(NSArray*)slidesArray andDuration:(NSTimeInterval)duration;

@end
