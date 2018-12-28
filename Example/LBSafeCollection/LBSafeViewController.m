//
//  LBSafeViewController.m
//  LBSafeCollection
//
//  Created by lanbo_zhang@hotmail.com on 12/28/2018.
//  Copyright (c) 2018 lanbo_zhang@hotmail.com. All rights reserved.
//

#import "LBSafeViewController.h"
#import "LBSafeCollection.h"

@interface LBSafeViewController ()

@end

@implementation LBSafeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *nilString = nil;
    NSArray *array = @[@"a", @"b", nilString];
    NSLog(@"%@", array);

    NSDictionary *dict = @{@"a" : nilString};
    NSLog(@"%@", dict);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
