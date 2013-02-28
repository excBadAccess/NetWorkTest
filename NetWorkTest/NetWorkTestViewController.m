//
//  NetWorkTestViewController.m
//  NetWorkTest
//
//  Created by Ã¥Â®â¡ Ã©â¢Ë on 13-2-22.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import "NetWorkTestViewController.h"
#import "Communicator.h"
@implementation NetWorkTestViewController


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (void)dealloc {
    [super dealloc];
}
- (IBAction)btnConnect:(id)sender {
    @try {
        Communicator *c = [[[Communicator alloc] init]autorelease];  
        
        c->host = @"http://192.168.0.105";  
        c->port = 4848;  
        
        //连接
        [c setup];  
        //初始化流
        [c open];
        
        NSString *ss=@"我收到了！";
        
        //输入
        [c stream:c->inputStream handleEvent:NSStreamEventHasBytesAvailable streamDataIsNil:ss];
        
        //输出
        [c stream:c->outputStream handleEvent:NSStreamEventHasSpaceAvailable streamDataIsNil:ss];
    }
    @catch (NSException *exception) {
        NSLog(@"%@",exception);
    }  
}
@end
