# WaterRippleDiffusion
一款水波纹扩散，雷达效果


![image](https://github.com/elmaLin/WaterRippleDiffusion/blob/master/demogif.gif ) 

用法：
#import <WaterRippleDiffusion/WaterRippleDiffusion.h>//c
@property (strong, nonatomic)WaterRippleDiffusion *manager;

self.manager =  [[WaterRippleDiffusion alloc]init];
/*
     *withhDuration:一次扩散动画的执行时间
     *withLoopTime:每次扩散动画展示的间隔时间
     */
    [self.manager creatOneWithObj:self.fatherView wihtPropotion1:1.2 wihtPropotion2:1.5 withColor:[UIColor redColor] withRadius:self.fatherView.frame.size.width withhDuration:1.5 withLoopTime:0.75];
