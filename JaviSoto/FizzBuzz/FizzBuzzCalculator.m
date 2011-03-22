//
//  FizzBuzzCalculator.m
//  FizzBuzz
//
//  Created by Javier Soto on 3/13/11.
//  Copyright 2011 www.minube.com. All rights reserved.
//

#import "FizzBuzzCalculator.h"


@implementation FizzBuzzCalculator

+ (NSString *)getWordFromNumber:(NSInteger)number {
    NSString *word = @"";    
    
    if (number % 3 == 0) {
        word = [word stringByAppendingFormat:@"Fizz"];
    }     
    
    if (number % 5 == 0) {
        word = [word stringByAppendingFormat:@"Buzz"];
    }
    
    if ([word isEqualToString:@""]) {
        word = [NSString stringWithFormat:@"%d", number];
    }

    return word;
}

@end
