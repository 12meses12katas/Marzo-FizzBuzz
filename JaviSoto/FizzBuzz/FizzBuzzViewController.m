//
//  FizzBuzzViewController.m
//  FizzBuzz
//
//  Created by Javier Soto on 3/13/11.
//  Copyright 2011 www.minube.com. All rights reserved.
//

#import "FizzBuzzViewController.h"
#import "FizzBuzzTableDataSource.h"

@implementation FizzBuzzViewController

@synthesize numbersTableView;

- (void)dealloc
{
    [numbersTableView release];
    [dataSource release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle



- (void)viewDidLoad
{
    if (!dataSource) {
        dataSource = [[FizzBuzzTableDataSource alloc] init];
    }
    
    self.numbersTableView.dataSource = dataSource;
    
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    [numbersTableView release];
    numbersTableView = nil;
    
    [dataSource release];
    
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
