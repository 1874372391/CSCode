//
//  ViewController.m
//  barcode
//
//  Created by 陈璐 on 16/5/10.
//  Copyright © 2016年 Katychn. All rights reserved.
//

#import "ViewController.h"
#import "scanViewController.h"
#import "RootViewController.h"
@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)createAction:(id)sender {
    scanViewController * vc = [[scanViewController alloc] init];
    [self presentViewController:vc animated:YES completion:^{
                           
                       }];
    
}
- (IBAction)scanAction:(id)sender {
    RootViewController * vc = [[RootViewController alloc] init];
    [self presentViewController:vc animated:YES completion:^{
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
