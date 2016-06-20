//
//  main.m
//  ArchiveTest
//
//  Created by MF839-014 on 2016. 6. 20..
//  Copyright © 2016년 MF839-014. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Restaurant.h"
#import "BookStore.h"
#import "Shop.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //1.
        //        NSDictionary *glossary = [NSDictionary dictionaryWithObjectsAndKeys:
        //                                   @"abstract class",
        //                                  @"A class defined so other classes can inherit from it",
        //                                  @"adopt",
        //                                  @"To implement all the methods defined in a protocol",
        //                                  @"archiving",
        //                                  @"Storing an object for later use", nil];
        //
        //        if( [glossary writeToFile:@"glossary" atomically: YES] == NO )
        //            NSLog(@"Save to file failes!");
        
        //2.
        //
        //        NSDictionary *glossary;
        //
        //        glossary = [NSDictionary dictionaryWithContentsOfFile:@"glossary"];
        //        NSLog(@"tmpArr = %@", glossary);
        
        //3.
        //        NSDictionary *glossary = [NSDictionary dictionaryWithObjectsAndKeys:
        //                                  @"abstract class",
        //                                  @"A class defined so other classes can inherit from it",
        //                                  @"adopt",
        //                                  @"To implement all the methods defined in a protocol",
        //                                  @"archiving",
        //                                  @"Storing an object for later use", nil];
        //
        //        [NSKeyedArchiver archiveRootObject:glossary toFile: @"glossary.archive"];
        //
        //        glossary = [NSKeyedUnarchiver unarchiveObjectWithFile:@"glossary.archive"];
        //        NSLog(@" %@", glossary);
        //4.
        //        Restaurant *r1 = [[Restaurant alloc] initWithName: @"천호반점"
        //                                          withPhoneNumber:@"032-555-5555"
        //                                            withImageName: @"chunho.png"];
        //        Restaurant *r2 = [[Restaurant alloc] initWithName: @"명동반점"
        //                                          withPhoneNumber:@"02-555-5555"
        //                                            withImageName: @"myeongdong.png"];
        //        Restaurant *r3 = [[Restaurant alloc] initWithName: @"태국반점"
        //                                          withPhoneNumber:@"041-555-5555"
        //                                            withImageName: @"tai.png"];
        //
        //        NSArray *restArr = [ NSArray arrayWithObjects: r1, r2, r3, nil];
        //
        //        [NSKeyedArchiver archiveRootObject: restArr toFile: @"restaurant"];
        //
        //        NSArray *newRestArr = [NSKeyedUnarchiver unarchiveObjectWithFile: @"restaurant"];
        //
        //        NSLog(@"New Restaurants = %@", newRestArr);
        
        //5.
        //                BookStore *b1 = [[BookStore alloc] initWithName: @"강남서점"
        //                                                  withPhoneNumber:@"032-555-5555"
        //                                                    withImageName: @"kn.png"
        //                                                    withLocation:kSeoul];
        //                BookStore *b2 = [[BookStore alloc] initWithName: @"잠실서점"
        //                                                  withPhoneNumber:@"02-555-5555"
        //                                                    withImageName: @"js.png"
        //                                                    withLocation:kPusan];
        //                BookStore *b3 = [[BookStore alloc] initWithName: @"용인서점"
        //                                                  withPhoneNumber:@"041-555-5555"
        //                                                    withImageName: @"yi.png"
        //                                                    withLocation: kDaegu];
        //
        //                NSArray *bsArr = [ NSArray arrayWithObjects: b1, b2, b3, nil];
        //
        //                [NSKeyedArchiver archiveRootObject: bsArr toFile: @"bookstore"];
        //
        //                NSArray *newBsArr = [NSKeyedUnarchiver unarchiveObjectWithFile: @"bookstore"];
        //
        //                NSLog(@"New Book Stores = %@", newBsArr);
        
        //6, 7.
        
        //        Restaurant *r1 = [[Restaurant alloc] initWithName: @"천호반점"
        //                                          withPhoneNumber:@"032-555-5555"
        //                                            withImageName: @"chunho.png"];
        //        Restaurant *r2 = [[Restaurant alloc] initWithName: @"명동반점"
        //                                          withPhoneNumber:@"02-555-5555"
        //                                            withImageName: @"myeongdong.png"];
        //        Restaurant *r3 = [[Restaurant alloc] initWithName: @"태국반점"
        //                                          withPhoneNumber:@"041-555-5555"
        //                                            withImageName: @"tai.png"];
        //
        //
        //        BookStore *b1 = [[BookStore alloc] initWithName: @"강남서점"
        //                                        withPhoneNumber:@"032-555-5555"
        //                                          withImageName: @"kn.png"
        //                                           withLocation:kSeoul];
        //        BookStore *b2 = [[BookStore alloc] initWithName: @"잠실서점"
        //                                        withPhoneNumber:@"02-555-5555"
        //                                          withImageName: @"js.png"
        //                                           withLocation:kPusan];
        //        BookStore *b3 = [[BookStore alloc] initWithName: @"용인서점"
        //                                        withPhoneNumber:@"041-555-5555"
        //                                          withImageName: @"yi.png"
        //                                           withLocation: kDaegu];
        
        //6.
        //        NSArray *myShopArr = [NSArray arrayWithObjects:
        //                              (Shop *)[[Shop alloc] initWithBookStore: (BookStore *)b1 andRestaurant: (Restaurant *)r1],
        //                              (Shop *)[[Shop alloc] initWithBookStore: (BookStore *)b2 andRestaurant: (Restaurant *)r2],
        //                              (Shop *)[[Shop alloc] initWithBookStore: (BookStore *)b3 andRestaurant: (Restaurant *)r3],
        //                               nil];
        //
        //        [NSKeyedArchiver archiveRootObject:myShopArr toFile:@"shops"];
        //        NSArray* newShopArr = [NSKeyedUnarchiver unarchiveObjectWithFile: @"shops"];
        //        NSLog(@"New Shops = %@", newShopArr);
        
        //7.
        //        NSMutableData *dataArea;
        //        NSKeyedArchiver *archiver;
        //
        //        dataArea = [NSMutableData data];
        //        archiver = [[NSKeyedArchiver alloc] initForWritingWithMutableData:dataArea];
        //
        //        [archiver encodeObject:r2 forKey: @"rest"];
        //        [archiver encodeObject:b2 forKey: @"book"];
        //        [archiver finishEncoding];
        //
        //        [dataArea writeToFile:@"archiver" atomically:YES];
        //
        //        NSKeyedUnarchiver *unArchiver;
        //        NSData *newData = [NSData dataWithContentsOfFile: @"archiver"];
        //        unArchiver = [[NSKeyedUnarchiver alloc] initForReadingWithData: newData];
        //        
        //        Restaurant *newR = [unArchiver decodeObjectForKey:@"rest"];
        //        BookStore *newB  = [unArchiver decodeObjectForKey:@"book"];
        //        
        //        NSLog(@"\r%@\r\r%@", newR.description, newB.description);
    }
    return 0;
}
