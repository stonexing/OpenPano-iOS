//
//  ViewController.m
//  OpenPano-iOS
//
//  Created by a on 2020/1/10.
//  Copyright © 2020 a. All rights reserved.
//

#import "ViewController.h"
#import "OpenPano.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSMutableArray *ary = [NSMutableArray new];
    for (int i=1; i<4; i++){
        NSString *png = [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"%d", i] ofType:@"jpg"];
        [ary addObject:png];
    }
    [[OpenPano instance] stitchImageFiles:ary];
}


@end
