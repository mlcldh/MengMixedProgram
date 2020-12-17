//
//  LCHeheView.m
//  Masonry
//
//  Created by menglingchao on 2020/12/16.
//

#import "LCHeheView.h"
#import "Masonry.h"
#import "HeheKit-Swift.h"
@import LCSKit;

@implementation LCHeheView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor purpleColor];
    }
    return self;
}
#pragma mark -
- (void)addLCSHeheView {//pod里OC代码调用自己pod里的Swift代码
    LCSHeheView *heheView = [[LCSHeheView alloc]init];
    [self addSubview:heheView];
    [heheView mas_makeConstraints:^(MASConstraintMaker *make) {
        
    }];
}
- (void)addLCSLabelView {//pod里OC代码调用其他pod里的Swift代码
    LCSLabelView *labelView = [[LCSLabelView alloc]init];
    [self addSubview:labelView];
    [labelView mas_makeConstraints:^(MASConstraintMaker *make) {
        
    }];
}

@end
