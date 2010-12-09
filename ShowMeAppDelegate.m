//
//  ShowMeAppDelegate.m
//  ShowMe
//
//  Created by Ben on 09/12/2010.
//  Copyright 2010 Techizmo. All rights reserved.
//

#import "ShowMeAppDelegate.h"

@implementation ShowMeAppDelegate

@synthesize window, showAllFiles, hideAllFiles;

- (IBAction)showFiles:(id)sender
{

	// n00b alert message...
	// If we don't place this here we would get half dozen n00bs ranting and raving, so let's not let that happen!
	
	NSAlert *msg = [NSAlert alertWithMessageText: @"Warning!" defaultButton: @"Yes" alternateButton: @"No" otherButton: nil informativeTextWithFormat: @"Are you sure you want to show all hidden files? (Don't do anything STUPID!)"];
	[msg beginSheetModalForWindow: [self window] modalDelegate: self didEndSelector: @selector(alertDidEnd:returnCode:contextInfo:) contextInfo: nil];
}

- (void)alertDidEnd:(NSAlert*)alert returnCode:(NSInteger)returnCode contextInfo:(void*)contextInfo
{
	if (returnCode == NSOKButton)
	{
		NSString * sigterm  = @"defaults write com.apple.Finder AppleShowAllFiles YES"; // Forces Finder to show all system hidden files/folders. (risky shit!)
		NSString * sigterm2 = @"killall -KILL Finder"; // Simple, it kills Finder :( but restarts it :D
			
		// System calls by converting them into UTF8Strings (Well didn't your mom tell you to clean behind your ears when you were younger?!)
		system([sigterm UTF8String]);
		system([sigterm2 UTF8String]);
	}
}

- (IBAction)hideFiles:(id)sender
{
	NSString * sigterm  = @"defaults write com.apple.Finder AppleShowAllFiles NO"; // Back again, but with a big FAT no!
	NSString * sigterm2 = @"killall -KILL Finder"; // Back again, with killing...yes I like a bit of killing here on OS X but don't we all?!
	
	// Cleaning behind my ears again, just like my mom told me to!
	system([sigterm UTF8String]);
	system([sigterm2 UTF8String]);
	
	// We're done here, goodbye morons hope you didn't do anything stupid :)
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	// Insert code here to initialize your application 
}

@end
