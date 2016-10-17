/********* myplugin.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface myplugin : CDVPlugin {
  // Member variables go here.
}

- (void)coolMethod:(CDVInvokedUrlCommand*)command;
@end

@implementation myplugin

- (void)coolMethod:(CDVInvokedUrlCommand*)command
{
    
//    [[UMSocialDataService defaultDataService]  postSNSWithTypes:@[UMShareToWechatTimeline] content:@"分享内嵌文字" image:nil location:nil urlResource:nil presentedController:self completion:^(UMSocialResponseEntity *response){
//        if (response.responseCode == UMSResponseCodeSuccess) {
//            NSLog(@"分享成功！");
//        }
//    }];

    CDVPluginResult* pluginResult = nil;
    NSString* echo = [command.arguments objectAtIndex:0];
     NSString* echo1 = [command.arguments objectAtIndex:1];
     NSString* echo2 = [command.arguments objectAtIndex:2];

    if (echo != nil && [echo length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
          NSDictionary *dict =[[NSDictionary alloc] initWithObjectsAndKeys:echo,@"textOne", echo1,@"textTwo",echo2,@"textT",nil];
        
        NSNotification *notification =[NSNotification notificationWithName:@"tongzhi" object:nil userInfo:dict];
         [[NSNotificationCenter defaultCenter] postNotification:notification];
        
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
