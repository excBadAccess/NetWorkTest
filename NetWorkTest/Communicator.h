//
//  Communicator.h
//  NetWorkTest
//
//  Created by Ã¥Â®â¡ Ã©â¢Ë on 13-2-22.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//


#import <Foundation/Foundation.h>  

@interface Communicator : NSObject <NSStreamDelegate> {  
@public  
    
    NSString *host;  
    int port;  
    
    CFReadStreamRef readStream;  
    CFWriteStreamRef writeStream;  
    
    NSInputStream *inputStream;  
    NSOutputStream *outputStream;  
    
}  

- (void)setup;  
- (void)open;  
- (void)close;  
- (void)stream:(NSStream *)stream handleEvent:(NSStreamEvent)event streamDataIsNil:(NSString *)streamStr;  
- (void)readIn:(NSString *)s;  
- (void)writeOut:(NSString *)s;  

@end  

