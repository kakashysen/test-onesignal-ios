//
//  AppDelegate.m
//  TestOneSignalPush
//
//  Created by Jose Aponte on 9/28/16.
//  Copyright © 2016 jappsku. All rights reserved.
//

#import "AppDelegate.h"
#import <OneSignal/OneSignal.h>


@interface AppDelegate ()

@end

@implementation AppDelegate


-(BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // other setup tasks here....
    
    // Register the supported interaction types.
//    UIUserNotificationType types = UIUserNotificationTypeBadge |
//    UIUserNotificationTypeSound | UIUserNotificationTypeAlert;
//    UIUserNotificationSettings *mySettings =
//    [UIUserNotificationSettings settingsForTypes:types categories:nil];
//    [[UIApplication sharedApplication] registerUserNotificationSettings:mySettings];
//    
//    // Register for remote notifications.
//    [[UIApplication sharedApplication] registerForRemoteNotifications];

    [OneSignal initWithLaunchOptions:launchOptions appId:@"25174447-635f-477e-a9b0-058c7d9781f0"];
    
    
    return YES;
}

//- (void)applicationDidFinishLaunching:(UIApplication *)application {
// 
//}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


//-(void)application:(UIApplication *)application didRegisterUserNotificationSettings:(UIUserNotificationSettings *)notificationSettings
//{
//    // Register the supported interaction types.
//    UIUserNotificationType types = UIUserNotificationTypeBadge |
//    UIUserNotificationTypeSound | UIUserNotificationTypeAlert;
//    UIUserNotificationSettings *mySettings =
//    [UIUserNotificationSettings settingsForTypes:types categories:nil];
//    [[UIApplication sharedApplication] registerUserNotificationSettings:mySettings];
//
//    // Register for remote notifications.
//    [[UIApplication sharedApplication] registerForRemoteNotifications];
//
//}


-(void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken
{
    NSString* newToken = [deviceToken description];
    newToken = [newToken stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"<>"]];
    newToken = [newToken stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    NSLog(@"My Pushtoken is: %@", newToken);
}

-(void)application:(UIApplication *)application didFailToRegisterForRemoteNotificationsWithError:(NSError *)error
{
    NSLog(@"Error in registration. Error: %@", error);
}


@end
