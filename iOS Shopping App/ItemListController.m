//
//  ItemListController.m
//  iOS Shopping App
//
//  Created by Kitten on 18/04/14.
//  Copyright (c) 2014 Monash. All rights reserved.
//

#import "ItemListController.h"
#import "AddItemController.h"

@implementation ItemListController

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder]; if (self)
    {
        self.currentCart = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    switch(section)
    {
        case 0:
            return [self.currentCart count];
        case 1:
            return 1;
    }
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section == 0)
    {
        ItemCell *cell = (ItemCell*)[tableView dequeueReusableCellWithIdentifier:@"ItemCell" forIndexPath:indexPath];
        Items* m = [self.currentCart objectAtIndex:indexPath.row]; cell.nameLabel.text = m.nameLabel;
        cell.priceLabel.text = [NSString stringWithFormat:@"Price: %d", m.priceLabel];
    }
    
    else
    {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TotalCell" forIndexPath:indexPath];
        cell.textLabel.text = [NSString stringWithFormat:@"Total Items: %d", [self.currentCart count]];
        return cell;
    }
    return nil;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section == 0)
        return YES;
    return NO;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        [self.currentCart removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        [self.tableView reloadRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:0 inSection:1]] withRowAnimation:UITableViewRowAnimationNone];
    }
}
                                                                                                                           
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"AddItemSegue"])
    {
        AddItemController* controller = segue.destinationViewController;
        controller.delegate = self;
    }
}

-(void)addItem:(Items *)item
{
    [self.currentCart addObject:item];
    [self.tableView reloadData];
}
                                                                                                                           
@end