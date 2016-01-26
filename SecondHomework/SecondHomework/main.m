//
//  main.m
//  SecondHomework
//
//  Created by 2 on 1/26/16.
//  Copyright © 2016 2. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Artist.h"
#import "Group.h"
#import "Song.h"

void createFoalsGroup() {
    Artist* JackBevan = [[Artist alloc] initWithName:@"Jack Bevan"];
    Artist* JimmySmith = [[Artist alloc] initWithName:@"Jimmy Smith"];
    Artist* EdwinCongreave  = [[Artist alloc] initWithName:@"Edwin Congreave "];
    
    Group* foals = [[Group alloc]initWithName:@"Foals"];
    [foals.listOfArtist addObject:JackBevan];
    [foals.listOfArtist addObject:JimmySmith];
    [foals.listOfArtist addObject:EdwinCongreave];
    
    Song *foalsSong = [[Song alloc]init];
    foalsSong.artist = [NSString stringWithFormat:@"%@", foals.name];
    foalsSong.name = @"What went down";
    foalsSong.text = @"I buried my heart in a hole in the ground\nWith the lights and the roses and the cowards\nThey threw me a party, there was no one around\nThey tried to call my girl but she could not be found.";
    [foals.listOfSongs addObject:foalsSong];
    
    NSLog(@"\n\n%@", foals);
    
    [foalsSong play];
}

void createShinedownGroup() {
    Artist* BrentSmith = [[Artist alloc] initWithName:@"Brent Smith"];
    Artist* BarryKerch = [[Artist alloc] initWithName:@"Barry Kerch"];
    Artist* ZachMyers  = [[Artist alloc] initWithName:@"Zach Myers"];
    
    Group* shinedown = [[Group alloc]initWithName:@"Shinedown"];
    [shinedown.listOfArtist addObject:BrentSmith];
    [shinedown.listOfArtist addObject:BarryKerch];
    [shinedown.listOfArtist addObject:ZachMyers];
    
    Song *song = [[Song alloc]init];
    song.artist = [NSString stringWithFormat:@"%@", shinedown.name];
    song.name = @"Her Name Is Alice";
    song.text = @"I invite you to a world where there is no such thing as time\nAnd every creature lends themselves to change your state of mind\nAnd the girl that chased the rabbit, drank the wine, and took the pill\nHas locked herself in limbo to see how it truly feels";
    
    Song *secondSong = [[Song alloc]init];
    secondSong.artist = [NSString stringWithFormat:@"%@", shinedown.name];
    secondSong.name = @"Cut The Cord";
    secondSong.text = @"Let me tell you, I'm vicious\nNot pass-aggressive\nI got my finger on my pulse, staring straight into a hole and I get it\nAnd I'm a savage\nIt's automatic\nI got a way of making noise, the power to destroy with no static";

    
    [shinedown.listOfSongs addObject:song];
    [shinedown.listOfSongs addObject:secondSong];
    
    NSLog(@"\n\n%@", shinedown);
}

void createMoby() {
    Artist* Moby = [[Artist alloc] initWithName:@"Moby"];
    
    Song *song = [[Song alloc]init];
    song.artist = [NSString stringWithFormat:@"%@", Moby];
    song.name = @"Flower";
    song.text = @"Bring Sally up and bring Sally down\nLift and squat, gotta tear the ground";
    
    Song *secondSong = [[Song alloc]init];
    secondSong.artist = [NSString stringWithFormat:@"%@", Moby];
    secondSong.name = @"Natural blues";
    secondSong.text = @"Oh Lordy, trouble so hard\nOh Lordy, trouble so hard\nDon't nobody know my troubles but God\nDon't nobody know my troubles but God";
    
    [Moby.listOfSongs addObject:song];
    [Moby.listOfSongs addObject:secondSong];
    
    [Moby discography];
}

void createMichaelJackson() {
    Artist* MichaelJackson = [[Artist alloc] initWithName:@"Michael Jackson"];
    
    Song *song = [[Song alloc]init];
    song.artist = [NSString stringWithFormat:@"%@", MichaelJackson];
    song.name = @"With a Child's Heart";
    song.text = @"With A Child's Heart\nGo face the worries of the day\nWith a child's heart\nTurn each problem into play";
    
    Song *secondSong = [[Song alloc]init];
    secondSong.artist = [NSString stringWithFormat:@"%@", MichaelJackson];
    secondSong.name = @"Too Young";
    secondSong.text = @"They say that love's a word\nA word we've only heard\nBut can't begin to know the meaning of.";
    
    [MichaelJackson.listOfSongs addObject:song];
    [MichaelJackson.listOfSongs addObject:secondSong];
    
    [MichaelJackson discography];
    
    [song play];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        createFoalsGroup();
        createShinedownGroup();
        createMoby();
        createMichaelJackson();
        
    }
    return 0;
}
