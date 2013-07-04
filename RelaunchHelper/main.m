//
//  main.m
//  RelaunchHelper
//
//  Created by Александр Черный on 04.07.13.
//  Copyright (c) 2013 Alexander Chenryy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

int main(int argc, const char * argv[])
{
	BOOL isParentRelaunched = NO;
	
	@autoreleasepool
	{
		pid_t parentProcessIdentifier = atoi(argv[2]);
		ProcessSerialNumber processSerialNumber;
		
		OSStatus parentProcessStatus = GetProcessForPID(parentProcessIdentifier, &processSerialNumber);
		
		while (parentProcessStatus != procNotFound)
		{
			sleep(1);
			parentProcessStatus = GetProcessForPID(parentProcessIdentifier, &processSerialNumber);
		}
		
		NSString *applicationPath = [NSString stringWithCString:argv[1] encoding:NSUTF8StringEncoding];
		isParentRelaunched = [[NSWorkspace sharedWorkspace] openFile:[applicationPath stringByExpandingTildeInPath]];
	}
	
    return isParentRelaunched ? 0 : 1;
}
