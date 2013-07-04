//
//  NSApplication+Relaunch.h
//  ManualReincarnation
//
//  Created by Александр Черный on 04.07.13.
//  Copyright (c) 2013 Alexander Chenryy. All rights reserved.
//

#import <Cocoa/Cocoa.h>

extern NSString * const kRelaunchHelperName;

@interface NSApplication (Relaunch)

- (void)relaunch:(id)sender;

@end

