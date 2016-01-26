//
//  Song.h
//  SecondHomework
//
//  Created by 2 on 1/26/16.
//  Copyright © 2016 2. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SongProtocol <NSObject>

@required
- (void) play;

@end

@interface Song : NSObject<SongProtocol>

@property NSString* name;
@property NSString* artist;
@property NSString* text;

@end
