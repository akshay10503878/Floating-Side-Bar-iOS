//
//  ViewController.m
//  FloatingSideMenu
//
//  Created by akshay bansal on 10/25/17.
//  Copyright © 2017 akshay bansal. All rights reserved.
//

#import "ViewController.h"
 #import <QuartzCore/QuartzCore.h>

@interface ViewController ()
{
    UITapGestureRecognizer *tapgesture;
}
@property (strong, nonatomic) IBOutlet UIButton *menuButton;
@property (strong, nonatomic) IBOutlet UIView *menuView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    tapgesture=[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideMenu) ];
    self.menuView.alpha=0;
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated
{
    [self hideMenu];
    [super viewDidAppear:YES];
    
}

- (IBAction)menuTapped:(id)sender {
    
    
    [self showMenu];
    
}


-(void)showMenu{
    self.menuView.alpha=1;
    [self.view addGestureRecognizer:tapgesture];

    
    [UIView animateWithDuration:0.8 animations:^{
         self.menuView.transform=CGAffineTransformRotate(self.menuView.transform, 10*3.14/180);
    } completion:^(BOOL finished) {


    }];
    
    [UIView animateWithDuration:0.7 animations:^{
        self.menuView.transform = CGAffineTransformTranslate(self.menuView.transform, 2*self.menuView.frame.size.width, 0);
    } completion:^(BOOL finished) {
        
        
    }];
    

}

-(void)hideMenu{
    self.menuView.layer.anchorPoint=CGPointMake(0.0, 0.5);
    self.menuView.layer.position=CGPointMake(0, self.view.frame.size.height/2);
    [self.view removeGestureRecognizer:tapgesture];
    
    [UIView animateWithDuration:0.8 animations:^{
        
        self.menuView.transform = CGAffineTransformTranslate(self.menuView.transform, -2*self.menuView.frame.size.width, 0);
        
        
    }completion:^(BOOL finished) {
        self.menuView.alpha=0;
    }];
    
    
    [UIView animateWithDuration:0.9 animations:^{
        self.menuView.transform=CGAffineTransformRotate(self.menuView.transform, -10*3.14/180);
       
    } completion:^(BOOL finished) {
        
        
    }];
    

}


@end
