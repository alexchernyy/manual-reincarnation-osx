//
//  NSApplication+Relaunch.m
//  ManualReincarnation
//
//  Created by Александр Черный on 04.07.13.
//  Copyright (c) 2013 Alexander Chenryy. All rights reserved.
//

#import "NSApplication+Relaunch.h"

NSString * const kRelaunchHelperName = @"RelaunchHelper";

@implementation NSApplication (Relaunch)

- (void)relaunch:(id)sender
{
	NSString *relaunchHelperPath = [[NSBundle mainBundle] pathForResource:kRelaunchHelperName ofType:nil];
	
	NSString *mainBundlePath = [[NSBundle mainBundle] bundlePath];
	NSString *processIdentifier = [NSString stringWithFormat:@"%d", [[NSProcessInfo processInfo] processIdentifier]];
	
	NSArray *arguments = [NSArray arrayWithObjects:mainBundlePath, processIdentifier, nil];
	[NSTask launchedTaskWithLaunchPath:relaunchHelperPath arguments:arguments];
	
	[self terminate:sender];
}

@end
