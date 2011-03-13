//
//  FizzBuzzDataSource.m
//  FizzBuzz
//
//  Created by Javier Soto on 3/13/11.
//  Copyright 2011 www.minube.com. All rights reserved.
//

#import "FizzBuzzTableDataSource.h"
#import "FizzBuzzCalculator.h"

@implementation FizzBuzzTableDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return MAXNUMBERS;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellId = @"celda";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    
    cell.textLabel.text = [self getTextForCellAtRow:indexPath.row];
    
    return cell;
}

- (NSString *)getTextForCellAtRow:(NSUInteger)row {
    return [FizzBuzzCalculator getWordFromNumber:(row+1)];
}

@end
