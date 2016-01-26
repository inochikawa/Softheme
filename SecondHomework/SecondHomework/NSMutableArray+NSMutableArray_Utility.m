//
//  NSMutableArray+NSMutableArray_Utility.m
//  SecondHomework
//
//  Created by 2 on 1/26/16.
//  Copyright © 2016 2. All rights reserved.
//

#import "NSMutableArray+NSMutableArray_Utility.h"

@implementation NSMutableArray (NSMutableArray_Utility)

- (NSString*)prettyArrayViewString {
    NSMutableString* result = [[NSMutableString alloc] init];
    
    [result appendString:@"("];
    
    for(int i = 0; i < self.count; i++) {
        [result appendFormat:@"%@, ", self[i]];
    }
    
    // delete last space and comma
    if(result.length > 1) {
        NSRange range = NSMakeRange(0, result.length - 2);
        result = [[NSMutableString alloc] initWithString:[result substringWithRange:range]];
    }
    
    [result appendString:@")"];
    
    return result;
}

- (NSString*)prettyArrayViewWithQuotationMarksString {
    NSMutableString* result = [[NSMutableString alloc] init];
    
    [result appendString:@"("];
    
    for(int i = 0; i < self.count; i++) {
        [result appendFormat:@"\"%@\", ", self[i]];
    }
    
    // delete last space and comma
    if(result.length > 1) {
        NSRange range = NSMakeRange(0, result.length - 2);
        result = [[NSMutableString alloc] initWithString:[result substringWithRange:range]];
    }
    
    [result appendString:@")"];
    
    return result;    
}

@end
