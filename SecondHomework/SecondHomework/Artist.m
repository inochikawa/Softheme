//
//  Artist.m
//  SecondHomework
//
//  Created by 2 on 1/26/16.
//  Copyright © 2016 2. All rights reserved.
//

#import "Artist.h"
#import "NSMutableArray+NSMutableArray_Utility.h"

@implementation Artist

- (instancetype)initWithName:(NSString*)name {
    self = [super init];
    
    if(!self) return nil;
    
    _name = name;
    self.listOfSongs = [[NSMutableArray alloc]init];
    
    return self;
}

- (void)discography {
    NSMutableString* result = [[NSMutableString alloc] init];
    
    [result appendFormat:@"\n\n%@ - Artist\nList of Songs ", self.name ];
    [result appendString:[self.listOfSongs prettyArrayViewWithQuotationMarksString]];
    
    NSLog(@"%@", result);
}

- (NSString*)description {
    return self.name;
}

@end
