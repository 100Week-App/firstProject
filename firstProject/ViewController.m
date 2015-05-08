//
//  ViewController.m
//  firstProject
//
//  Created by Mitesh Maheta on 26/03/15.
//  Copyright (c) 2015 tipsy. All rights reserved.
//

#import "ViewController.h"
#import "coverPageViewController.h"
#import "featureOneViewController.h"
#import "featureTwoViewController.h"
#import "collectionViewController.h"
#import "collectionTwoViewController.h"
#import "horizontalViewController.h"
#import "verticalViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    [self loadPagingController];
}
-(void)loadPagingController{
    
    coverPageViewController *coverViewController = [[coverPageViewController alloc]init];
    featureTwoViewController *feature2Controller = [[featureTwoViewController alloc]init];
    verticalViewController *verticalPageController = [[verticalViewController alloc]init];
    featureOneViewController *feature1Controller = [[featureOneViewController alloc]init];
    collectionViewController *collectionController = [[collectionViewController alloc]init];
    collectionTwoViewController *collection2Controller = [[collectionTwoViewController alloc]init];
    
    [verticalPageController.arrayViewControllers addObject:feature1Controller];
    [verticalPageController.arrayViewControllers addObject:collectionController];
    [verticalPageController.arrayViewControllers addObject:collection2Controller];
    
    horizontalViewController *horizontalController = [[horizontalViewController alloc]init];
    [horizontalController.arrayViewControllers addObject:coverViewController];
    [horizontalController.arrayViewControllers addObject:verticalPageController];
    [horizontalController.arrayViewControllers addObject:feature2Controller];
    
    [self presentViewController:horizontalController animated:YES completion:Nil];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
