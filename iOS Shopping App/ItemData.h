//
//  ItemData.h
//  iOS Shopping App
//
//  Created by Kitten on 18/04/14.
//  Copyright (c) 2014 Monash. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface ItemData : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * price;

@end
