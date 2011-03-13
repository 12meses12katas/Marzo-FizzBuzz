//
//  FizzBuzzDataSource.h
//  FizzBuzz
//
//  Created by Javier Soto on 3/13/11.
//  Copyright 2011 www.minube.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#define MAXNUMBERS 100

@class FizzBuzzCalculator;

@interface FizzBuzzTableDataSource : NSObject <UITableViewDataSource> {
    FizzBuzzCalculator *calculator;
}

- (NSString *)getTextForCellAtRow:(NSUInteger)row;

@end
