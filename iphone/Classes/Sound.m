/*
 *  Sound.m
 *
 *  Created by Nitobi on 12/12/08.
 *  Modified by Chris Lott on 3/9/09
 *  Copyright 2008 Nitobi. All rights reserved.
 *
 */

#import "Sound.h"


@implementation Sound

- (id) initWithContentsOfFile:(NSString *)path
{
	self = [super init];
	if (self != nil) {
		NSURL *filePath = [NSURL fileURLWithPath:path isDirectory:NO];
		player = [[AVAudioPlayer alloc] initWithContentsOfURL: filePath error:NULL];
		[player prepareToPlay];
	}
	return self;
}

/*
 * play - Plays the sound
 */ 
- (void) play {
	[player play];
}

- (void) dealloc {
	[player play];
	[super dealloc];
}
@end
