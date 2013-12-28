//
//  JHAppDelegate.m
//  Ratings
//
//  Created by li.jiahan on 13-12-26.
//  Copyright (c) 2013年 codingcoder. All rights reserved.
//

#import "JHAppDelegate.h"
#import "JHPlayer.h"
#import "JHPlayersViewController.h"

@implementation JHAppDelegate
{
    NSMutableArray *_players;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    _players = [NSMutableArray array];
    for (int i = 0; i < 10; i++) {
        JHPlayer *player = [[JHPlayer alloc] initWithName:@"name" game:@"game" rating:i];
        [_players addObject:player];
    }
    
    UITabBarController *tabBarController = (UITabBarController *)self.window.rootViewController;
    
    UINavigationController *navController = [tabBarController viewControllers][1];
    JHPlayersViewController *playersController = (JHPlayersViewController *)[navController viewControllers][0];
    playersController.players = _players;
    
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
