//
//  ItemListController.h
//  iOS Shopping App
//
//  Created by Kitten on 18/04/14.
//  Copyright (c) 2014 Monash. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "Cart.h"
#import "Items.h"
#import "ItemCell.h"
#import "AddItemController.h"

@interface ItemListController : UITableViewController <AddItemDelegate>
@property (strong, nonatomic) NSMutableArray* currentCart;

@end
