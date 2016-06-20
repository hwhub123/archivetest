//
//  Shop.m
//  ArchiveTest
//
//  Created by MF839-014 on 2016. 6. 20..
//  Copyright © 2016년 MF839-014. All rights reserved.
//

#import "Shop.h"

#define kBookStore @"book_store"
#define kRestaurant @"restaurant"

@implementation Shop
- (id) initWithBookStore: (BookStore *)newBookStore
           andRestaurant: (Restaurant *)newRestaurant
{
    self = [super init];
    if(self) {
        _bookStore = newBookStore;
        _restaurant = newRestaurant;
    }
    return self;
}

- (void) encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:_bookStore forKey: kBookStore];
    [aCoder encodeObject:_restaurant forKey: kRestaurant];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    _bookStore = [aDecoder decodeObjectForKey: kBookStore];
    _restaurant = [aDecoder decodeObjectForKey: kRestaurant];
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"\r%@\r\r%@", _bookStore.description, _restaurant.description];
}

@end
