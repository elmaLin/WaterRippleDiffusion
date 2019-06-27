# WaterRippleDiffusion
一款水波纹扩散，雷达效果


![image](https://github.com/elmaLin/WaterRippleDiffusion/blob/master/demogif.gif ) 

用法：
```objc
#import "ViewController.h"
#import <WaterRippleDiffusion/WaterRippleDiffusion.h>

@interface ViewController ()

@property (strong, nonatomic)WaterRippleDiffusion *manager;

@property (weak, nonatomic) IBOutlet UIView *fatherView;
@property (weak, nonatomic) IBOutlet UIView *childerImg;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.manager =  [[WaterRippleDiffusion alloc]init];
    self.fatherView.layer.cornerRadius  = self.fatherView.frame.size.width/2;
    self.fatherView.layer.masksToBounds = YES;
    self.fatherView.clipsToBounds = NO;//必要
    
    self.childerImg.layer.cornerRadius  = self.childerImg.frame.size.width/2;
    self.childerImg.layer.masksToBounds = YES;
    /*
     *withhDuration:一次扩散动画的执行时间
     *withLoopTime:每次扩散动画展示的间隔时间
     */
     [self.manager creatOneWithObj:self.fatherView wihtPropotion1:1.2 wihtPropotion2:1.5 withColor:[UIColor redColor] withRadius:self.fatherView.frame.size.width withhDuration:1.5 withLoopTime:0.75];
```

 
    
    
