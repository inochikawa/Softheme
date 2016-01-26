//
//  Person.h
//  Application
//
//  Created by 2 on 1/26/16.
//  Copyright © 2016 2. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
    NSString *_firstName;
    NSString *_lastName;
    int _age;
}

@property int mana;

- (NSString*)firstName;
- (void) setName:(NSString*)newFirstName
     andLastName:(NSString*)newLastName;

@end
