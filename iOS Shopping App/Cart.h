//
//  Cart.h
//  iOS Shopping App
//
//  Created by Kitten on 18/04/14.
//  Copyright (c) 2014 Monash. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Items;

@interface Cart : NSManagedObject

@property (nonatomic, retain) NSSet *members;
@end

@interface Cart (CoreDataGeneratedAccessors)

- (void)addMembersObject:(Items *)value;
- (void)removeMembersObject:(Items *)value;
- (void)addMembers:(NSSet *)values;
- (void)removeMembers:(NSSet *)values;

@end
