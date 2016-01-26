//
//  Artist.h
//  SecondHomework
//
//  Created by 2 on 1/26/16.
//  Copyright © 2016 2. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Song.h"

@interface Artist : NSObject

@property NSString* name;
@property NSMutableArray* listOfSongs;

- (void)discography;
- (instancetype)initWithName:(NSString*)name;

@end
