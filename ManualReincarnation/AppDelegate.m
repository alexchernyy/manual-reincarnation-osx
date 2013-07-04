//
//  AppDelegate.m
//  ManualReincarnation
//
//  Created by Александр Черный on 04.07.13.
//  Copyright (c) 2013 Alexander Chenryy. All rights reserved.
//

#import "AppDelegate.h"
#import "NSApplication+Relaunch.h"

@implementation AppDelegate

- (IBAction)relaunch:(id)sender
{
	[NSApp relaunch:sender];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification
{
	NSRunAlertPanel(@"Pause", @"Artificial pause on app termination", @"OK", nil, nil);
}

@end
