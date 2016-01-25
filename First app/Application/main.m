//
//  main.m
//  Application
//
//  Created by 2 on 1/25/16.
//  Copyright © 2016 2. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *artists = @[@"Shinedown", @"Foals", @"Crazy town", @"Amatory"];
        NSArray *songs = @[@"Diamond eyes", @"What went down", @"Butterfly", @"Kilomerti"];
        
        if(artists.count != songs.count)
            NSLog(@"Artists count doesn't equals songs count");
        
        for (int i = 0; i < artists.count; i++) {
            NSLog(@"The song \"%@\" by %@.\n", songs[i], artists[i]);
        }
        
        // changes
    }
    return 0;
}