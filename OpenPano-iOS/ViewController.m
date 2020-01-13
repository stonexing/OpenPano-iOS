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
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    dispatch_queue_t global_queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(global_queue, ^{
        NSMutableArray *ary = [NSMutableArray new];
        for (int i=1; i<5; i++){
            NSString *png = [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"1%d", i] ofType:@"jpg"];
            [ary addObject:png];
        }
        OpenPano *pano = [OpenPano instance];
        NSString *outimgPath = [pano stitchImageFiles:ary];
        UIImage *img = [UIImage imageWithContentsOfFile:outimgPath];
        if(img != nil){
            dispatch_async(dispatch_get_main_queue(), ^{
                self.imageView.image = img;
            });
        }
    });
}


@end
