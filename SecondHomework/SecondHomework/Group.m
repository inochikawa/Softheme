//
//  Group.m
//  SecondHomework
//
//  Created by 2 on 1/26/16.
//  Copyright © 2016 2. All rights reserved.
//

#import "Group.h"
#import "NSMutableArray+NSMutableArray_Utility.h"

@implementation Group

- (instancetype)init{
    self = [super init];
    
    if(!self) return nil;
    
    self.listOfArtist = [[NSMutableArray alloc] init];
    self.listOfSongs = [[NSMutableArray alloc] init];
    
    return self;
}

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    
    if(!self) return nil;
    
    self.name = name;
    self.listOfArtist = [[NSMutableArray alloc] init];
    self.listOfSongs = [[NSMutableArray alloc] init];
    
    return self;
}

- (NSString*)description {
    NSMutableString* result = [[NSMutableString alloc] init];
    
    [result appendFormat:@"%@ - Group\nList of Artist", self.name ];
    [result appendString:[self.listOfArtist prettyArrayViewString]];
    
    [result appendString:@"\nList of Songs"];
    [result appendString:[self.listOfSongs prettyArrayViewWithQuotationMarksString]];
    
    return result;
}

@end
