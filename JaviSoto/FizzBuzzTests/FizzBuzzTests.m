//
//  FizzBuzzTests.m
//  FizzBuzzTests
//
//  Created by Javier Soto on 3/13/11.
//  Copyright 2011 www.minube.com. All rights reserved.
//

#import "FizzBuzzTests.h"
#import "FizzBuzzCalculator.h"

@implementation FizzBuzzTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}


- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)assertNumber:(NSInteger)number returns:(NSString *)text {
    STAssertEqualObjects([FizzBuzzCalculator getWordFromNumber:number], text, @"Number %d should be called %@", number, text);
}

- (void)testNumberThreeReturnsFizz {
    [self assertNumber:3 returns:@"Fizz"];
}

- (void)testNumberFiveReturnsBuzz {
    [self assertNumber:5 returns:@"Buzz"];
}

- (void)testNumberFifteenReturnsFizzBuzz {
    [self assertNumber:15 returns:@"FizzBuzz"];
}

- (void)testNumberTwoReturnsTheNumber {
    [self assertNumber:2 returns:@"2"];
}

- (void)testMultipleOfThreeReturnsFizz {
    [self assertNumber:6 returns:@"Fizz"];
}
	
- (void)testMultipleOfFiveReturnsBuzz {
    [self assertNumber:10 returns:@"Buzz"];    
}

- (void)testMultipleOfFifteenReturnsFizzBuzz {
    [self assertNumber:30 returns: @"FizzBuzz"];
}


@end
