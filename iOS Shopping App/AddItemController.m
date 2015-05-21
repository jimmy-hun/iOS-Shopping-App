//
//  AddItemController.m
//  iOS Shopping App
//
//  Created by Kitten on 18/04/14.
//  Copyright (c) 2014 Monash. All rights reserved.
//

#import "AddItemController.h" 

@implementation AddItemController
- (id)initWithCoder:(NSCoder *)aDecoder
{
    if(self = [super initWithCoder:aDecoder])
    {
        Items* i1 = [[Items alloc] initWithName:@"Orange" andPriceLabel:5 ];
        Items* i2 = [[Items alloc] initWithName:@"Apple" andPriceLabel:10 ];
        Items* i3 = [[Items alloc] initWithName:@"Banana" andPriceLabel:15 ];
        Items* i4 = [[Items alloc] initWithName:@"Grape" andPriceLabel:20 ];
        Items* i5 = [[Items alloc] initWithName:@"Coconut" andPriceLabel:25 ];
        self.allItems = [NSArray arrayWithObjects: i1, i2, i3, i4, i5, nil];
    }
    return self;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.allItems count];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    Items* selectedItem = [self.allItems objectAtIndex:indexPath.row];
    [self.delegate addItem:selectedItem];
    [self.navigationController popViewControllerAnimated:YES];
}

@end