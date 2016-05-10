//
//  scanViewController.m
//  barcode
//
//  Created by 陈璐 on 16/5/10.
//  Copyright © 2016年 Katychn. All rights reserved.
//

#import "scanViewController.h"
#import "QRCodeGenerator.h"

@interface scanViewController ()

@end

@implementation scanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self create];
    self.view.backgroundColor = [UIColor whiteColor];
}
- (void)create {
    UIImageView * scanImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width - 40, self.view.bounds.size.width - 40)];
    scanImageView.center = self.view.center;
    UIImage *  scanImg=  [QRCodeGenerator qrImageForString:@"婷婷俺爱你" imageSize:self.view.bounds.size.width - 40];
    [scanImageView setImage:scanImg];
    
    [self.view addSubview:scanImageView];
    
    UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handTap:)];
    [self.view addGestureRecognizer:tap];
}
- (void)handTap:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
