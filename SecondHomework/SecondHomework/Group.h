//
//  Group.h
//  SecondHomework
//
//  Created by 2 on 1/26/16.
//  Copyright © 2016 2. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Artist.h"
#import "Song.h"

@interface Group : Artist

@property NSMutableArray* listOfArtist;

- (instancetype)init;

@end
