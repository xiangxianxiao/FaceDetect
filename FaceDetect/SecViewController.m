//
//  SecViewController.m
//  FaceDetect
//
//  Created by sskh on 13-11-21.
//  Copyright (c) 2013年 iObitLXF. All rights reserved.
//

#import "SecViewController.h"
#import "Sview.h"
#import "GBPathImageView.h"
@interface SecViewController ()
{
    UIImageView *view2;
    GBPathImageView *img1;
}
@end

@implementation SecViewController
@synthesize headView,image1;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 568)];
    [self.view addSubview:view1];
    view1.backgroundColor = [UIColor blackColor];
    view2 =[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"wq.png"]];
    view2.backgroundColor = [UIColor clearColor];
    view2.frame =CGRectMake(0 , 0, 320, 500);
    
    
    
    headView =[[UIImageView alloc]initWithImage:image1];
    headView.tag=1;
    headView.frame =CGRectMake(0, 0 , 50, 50);
    headView.layer.masksToBounds=NO;
    headView.layer.cornerRadius = 10;
    headView.layer.shadowOpacity=0.5;
    headView.layer.shadowRadius=5;
   
    //Sview *sview =[[Sview alloc]initWithFrame:CGRectMake(10, 10, 50, 50)];
   // sview.clipsToBounds=YES;
   // sview.backgroundColor =[UIColor colorWithPatternImage:image1];
     //[self.view addSubview:headView];
    img1 = [[GBPathImageView alloc]initWithFrame:CGRectMake(115 , 101,70, 80) image:image1];
    [img1 setPathColor:[UIColor clearColor]];
    [img1 setBorderColor:[UIColor clearColor]];
    [img1 setPathWidth:0.0];
    [img1 setPathType:GBPathImageViewTypeCircle];
    [img1 draw];
    img1.alpha = 1.2;
    [view1 addSubview:img1];

   // [view2 addSubview:sview];
    [view1 addSubview:view2];
    
    
    //[img1 bringSubviewToFront:view2];
    	// Do any additional setup after loading the view.
}
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch =[touches anyObject];
    CGPoint point =[touch locationInView:self.view];
    NSLog(@"11111%f,%f",point.x,point.y);
    img1.frame=CGRectMake(point.x, point.y, 75  , 80);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
