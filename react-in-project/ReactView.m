//
//  ReactView.m
//  react-in-project
//
//  Created by qd-hxt on 17/1/19.
//  Copyright © 2017年 Han. All rights reserved.
//

#import "ReactView.h"
#import <React/Base/RCTRootView.h>

@interface ReactView()

@property (nonatomic, weak) RCTRootView *rootView;

@end

@implementation ReactView

- (void)awakeFromNib {
    [super awakeFromNib];
    
    NSString *urlString = @"http://localhost:8081/index.ios.bundle";
    NSURL *jsCodeLocation = [NSURL URLWithString:urlString];
    RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                        moduleName:@"SimpleApp"
                                                 initialProperties:nil
                                                     launchOptions:nil];
    self.rootView = rootView;
    [self addSubview:rootView];
    
    self.rootView.frame = self.bounds;
}

@end
