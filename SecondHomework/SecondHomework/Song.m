//
//  Song.m
//  SecondHomework
//
//  Created by 2 on 1/26/16.
//  Copyright © 2016 2. All rights reserved.
//

#import "Song.h"

@implementation Song

- (void)play {
    NSLog([NSString stringWithFormat:@"\n\n%@ - %@\n\n%@",self.name, self.artist, self.text]);
}

- (instancetype)initWithName:(NSString*)name
                      artist:(NSString*)artist {
    self =  [super init];
    
    if(!self) return nil;
    
    _artist = artist;
    _name = name;
    
    return self;
}

- (NSString*)description {
    return self.name;
}

@end
