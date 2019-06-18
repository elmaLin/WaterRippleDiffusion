//
//  WaterRippleDiffusion.m
//  WaterRippleDiffusion
//
//  Created by Elma Lin on 2019/6/14.
//  Copyright © 2019 Elma Lin. All rights reserved.
//

#import "WaterRippleDiffusion.h"

@interface WaterRippleDiffusion ()

@property (nonatomic, strong) UIView *obj;
@property (nonatomic, assign) CGFloat propotion1;
@property (nonatomic, assign) CGFloat propotion2;
@property (nonatomic, strong) UIColor *color;
@property (nonatomic, assign) CGFloat startRadius;
@property (nonatomic, assign) CGFloat radius;
@property (nonatomic, assign) CGFloat durationTime;
@property (nonatomic, assign) CGFloat loopTime;

@property (nonatomic, strong) NSTimer *uiTimer;

@end


@implementation WaterRippleDiffusion

- (void)creatOneWithObj:(UIView *)obj
         wihtPropotion1:(CGFloat)propotion1
         wihtPropotion2:(CGFloat)propotion2
              withColor:(UIColor*)color
             withRadius:(CGFloat)radius
          withhDuration:(CGFloat)durationTime
           withLoopTime:(CGFloat)loopTime
{
    [self creatOneWithObj:obj wihtPropotion1:propotion1 wihtPropotion2:propotion2 withColor:color withStartRadius:0 withRadius:radius withhDuration:durationTime withLoopTime:loopTime];
}

- (void)creatOneWithObj:(UIView *)obj
         wihtPropotion1:(CGFloat)propotion1
         wihtPropotion2:(CGFloat)propotion2
              withColor:(UIColor*)color
        withStartRadius:(CGFloat)startRadius
             withRadius:(CGFloat)radius
          withhDuration:(CGFloat)durationTime
           withLoopTime:(CGFloat)loopTime
{
    self.obj = obj;
    self.propotion1 = propotion1;
    self.propotion2 = propotion2;
    self.color = color;
    self.startRadius = startRadius;
    self.radius = radius;
    self.durationTime = durationTime;
    self.loopTime =  loopTime;
    [self showUI];
}

- (void)stop {
    [self.uiTimer invalidate];
    self.uiTimer = nil;
}

- (void)showUI
{
    self.uiTimer = [NSTimer scheduledTimerWithTimeInterval:self.loopTime target:self selector:@selector(nextShowUI) userInfo:nil repeats:NO];
}

- (void)nextShowUI
{
    self.propotion1>0?[self start:self.propotion1]:NSLog(@"");
    self.propotion2>0?[self start:self.propotion2]:NSLog(@"");
    if (self.uiTimer) {
        [self showUI];
    }
}

- (void)start:(CGFloat)propotion
{
    CGFloat addRadius = self.startRadius;
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0-addRadius/2, 0-addRadius/2, self.radius+addRadius, self.radius+addRadius)];
    view.backgroundColor = self.color;
    view.layer.cornerRadius = self.obj.frame.size.width/2+addRadius/2;
    view.layer.masksToBounds = YES;
    [self.obj insertSubview:view atIndex:0];
    [UIView animateWithDuration:self.durationTime animations:^{
        view.transform = CGAffineTransformMakeScale(propotion, propotion);
        view.alpha = 0;
    } completion:^(BOOL finished) {
        [view removeFromSuperview];
    }];
}

- (void)dealloc
{
    [self.uiTimer invalidate];
    self.uiTimer = nil;
}
@end
