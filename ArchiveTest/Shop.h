//
//  Shop.h
//  ArchiveTest
//
//  Created by MF839-014 on 2016. 6. 20..
//  Copyright © 2016년 MF839-014. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Restaurant.h"
#import "BookStore.h"

@interface Shop : NSObject <NSCoding>
@property (strong, nonatomic) BookStore *bookStore;
@property (strong, nonatomic) Restaurant *restaurant;

- (id) initWithBookStore: (BookStore *)newBookStore
           andRestaurant: (Restaurant *)newRestaurant;

@end
