//
//  ViewController.m
//  MengMixedProgram
//
//  Created by menglingchao on 2020/12/16.
//

#import "ViewController.h"
#import "Masonry.h"
#import "LCHeheView.h"
#import "MyC.h"
#import "MengMixedProgram-Swift.h"

//#import "HeheKit-Swift.h"
@import HeheKit;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self addLCSHeheView];
    [self addBoxView];
    [self useC];
}
#pragma mark -
- (void)addLCSHeheView {//主工程的OC代码调用pod里的Swift代码
    LCSHeheView *heheView = [[LCSHeheView alloc]init];
    [self.view addSubview:heheView];
    [heheView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(20);
        make.top.equalTo(self.view).offset(100);
        make.width.height.mas_equalTo(100);
    }];
}
- (void)addBoxView {//主工程的OC代码调用主工程里的Swift代码
    LCSBoxView *boxView = [[LCSBoxView alloc]init];
    [self.view addSubview:boxView];
    [boxView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(20);
        make.top.equalTo(self.view).offset(250);
        make.width.mas_equalTo(300);
        make.height.mas_equalTo(100);
    }];
}
- (void)useC {
    HHJustPrintSome();
}

@end
