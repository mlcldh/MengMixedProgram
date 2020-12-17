//
//  LCBoxView.m
//  MengMixedProgram
//
//  Created by menglingchao on 2020/12/17.
//

#import "LCBoxView.h"
#import "Masonry.h"
#import "MengSMixedProgram-Swift.h"

@implementation LCBoxView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}
#pragma mark -
- (void)addLCSBoxView {
    LCSBoxView *boxView = [[LCSBoxView alloc]init];
    [self addSubview:boxView];
    [boxView mas_makeConstraints:^(MASConstraintMaker *make) {
    }];
}

@end
