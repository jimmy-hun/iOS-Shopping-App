//
//  AddItemController.h
//  iOS Shopping App
//
//  Created by Kitten on 18/04/14.
//  Copyright (c) 2014 Monash. All rights reserved.
//

#import <UIKit/UIKit.h> 
#import "Items.h"
#import "ItemCell.h"

@protocol AddItemDelegate <NSObject>
-(void)addItem:(Items*)item;
@end

@interface AddItemController : UITableViewController
@property (strong, nonatomic) NSArray* allItems;
@property (weak, nonatomic) id<AddItemDelegate> delegate;
@end