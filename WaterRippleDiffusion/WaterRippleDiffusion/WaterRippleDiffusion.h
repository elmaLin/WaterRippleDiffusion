//
//  WaterRippleDiffusion.h
//  WaterRippleDiffusion
//
//  Created by Elma Lin on 2019/6/14.
//  Copyright © 2019 Elma Lin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
//! Project version number for WaterRippleDiffusion.
FOUNDATION_EXPORT double WaterRippleDiffusionVersionNumber;

//! Project version string for WaterRippleDiffusion.
FOUNDATION_EXPORT const unsigned char WaterRippleDiffusionVersionString[];

@interface WaterRippleDiffusion : NSObject

- (void)creatOneWithObj:(UIView *)obj
         wihtPropotion1:(CGFloat)propotion1
         wihtPropotion2:(CGFloat)propotion2
              withColor:(UIColor*)color
             withRadius:(CGFloat)radius
          withhDuration:(CGFloat)durationTime
           withLoopTime:(CGFloat)loopTime;

- (void)creatOneWithObj:(UIView *)obj
         wihtPropotion1:(CGFloat)propotion1
         wihtPropotion2:(CGFloat)propotion2
              withColor:(UIColor*)color
        withStartRadius:(CGFloat)startRadius
             withRadius:(CGFloat)radius
          withhDuration:(CGFloat)durationTime
           withLoopTime:(CGFloat)loopTime;

- (void)stop;


@end

// In this header, you should import all the public headers of your framework using statements like #import <WaterRippleDiffusion/PublicHeader.h>


