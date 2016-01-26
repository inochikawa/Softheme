//
//  main.m
//  Application
//
//  Created by 2 on 1/25/16.
//  Copyright © 2016 2. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *person = [[Person alloc]init];
        person.mana = 10;
        [person setMana:500];
    }
    return 0;
}