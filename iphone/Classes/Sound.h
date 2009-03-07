/*
 *  Sound.h
 *
 *  Created by Nitobi on 12/12/08.
 *  Modified by Chris Lott on 3/6/09
 *  Copyright 2008 Nitobi. All rights reserved.
 *
 */

#import <Foundation/Foundation.h>
#import <AVFoundation/AVAudioPlayer.h>
#import <AudioToolbox/AudioServices.h>

@interface Sound : NSObject {
	AVAudioPlayer *player;
}

- (id) initWithContentsOfFile:(NSString * )path;
- (void) play;

@end
