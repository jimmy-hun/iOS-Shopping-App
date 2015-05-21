//
//  Items.m
//  iOS Shopping App
//
//  Created by Kitten on 18/04/14.
//  Copyright (c) 2014 Monash. All rights reserved.
//

#import "Items.h"

@implementation Items
-(id)initWithName:(NSString *)name andPriceLabel:(int)priceLabel;
{
    if(self = [super init])
    {
        self.nameLabel = name;
        self.priceLabel = priceLabel;
    }
    return self;
}
@end