//
//  Items.h
//  iOS Shopping App
//
//  Created by Kitten on 18/04/14.
//  Copyright (c) 2014 Monash. All rights reserved.
//

#import <Foundation/Foundation.h> 

@interface Items : NSObject
@property (strong, nonatomic) NSString* nameLabel;
@property (nonatomic) int priceLabel;
-(id)initWithName:(NSString *)nameLabel andPriceLabel:(int)priceLabel;
@end