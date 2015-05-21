//
//  ItemCell.h
//  iOS Shopping App
//
//  Created by Kitten on 18/04/14.
//  Copyright (c) 2014 Monash. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ItemCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *priceLabel;

@end
