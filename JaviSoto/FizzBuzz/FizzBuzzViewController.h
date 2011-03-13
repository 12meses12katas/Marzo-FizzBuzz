//
//  FizzBuzzViewController.h
//  FizzBuzz
//
//  Created by Javier Soto on 3/13/11.
//  Copyright 2011 www.minube.com. All rights reserved.
//

#import <UIKit/UIKit.h>
@class FizzBuzzTableDataSource;

@interface FizzBuzzViewController : UIViewController {
    FizzBuzzTableDataSource *dataSource;
    IBOutlet UITableView *numbersTableView;
}

@property (nonatomic, retain) UITableView *numbersTableView;

@end
