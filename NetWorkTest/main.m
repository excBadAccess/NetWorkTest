//
//  main.m
//  NetWorkTest
//
//  Created by Ã¥Â®â¡ Ã©â¢Ë on 13-2-22.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "NetWorkTestAppDelegate.h"

int main(int argc, char *argv[])
{
    @autoreleasepool {
        @try {
            return UIApplicationMain(argc, argv, nil, NSStringFromClass([NetWorkTestAppDelegate class]));

        }
        @catch (NSException *exception) {
            NSLog(@"出错了：%@",exception);
        }
        @finally {
            
        }
    }
}
//#import "Communicator.h"  
//
//int main (int argc, const char * argv[]) {  
//    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];  
//    
//    Communicator *c = [[Communicator alloc] init];  
//    
//    c->host = @"http://192.168.0.103";  
//    c->port = 4848;  
//    
//    [c setup];  
//    [c open];  
//    
//    [pool drain];  
//    
//    return 0;  
//} 