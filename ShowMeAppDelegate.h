//
//  ShowMeAppDelegate.h
//  ShowMe
//
//  Created by Ben on 09/12/2010.
//  Copyright 2010 Techizmo. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ShowMeAppDelegate : NSObject <NSApplicationDelegate> 
{
    NSWindow *window;
	IBOutlet NSButton *showAllFiles;
	IBOutlet NSButton *hideAllFiles;
}

@property (assign) IBOutlet NSWindow *window;
@property (nonatomic,retain) IBOutlet NSButton *showAllFiles;
@property (nonatomic,retain) IBOutlet NSButton *hideAllFiles;

- (IBAction)showFiles:(id)sender;
- (IBAction)hideFiles:(id)sender;

@end
