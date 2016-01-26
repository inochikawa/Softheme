//
//  Person.m
//  Application
//
//  Created by 2 on 1/26/16.
//  Copyright © 2016 2. All rights reserved.
//

#import "Person.h"

@implementation Person

- (NSString*)firstName {
    return _firstName;
}

- (void) setName:(NSString *)newFirstName andLastName:(NSString *)newLastName {
    
}

- (NSString*)description{
    return [NSString stringWithFormat:@"%@ %@", _firstName, _lastName];
}

@end
