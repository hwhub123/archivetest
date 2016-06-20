//
//  Restaurant.h
//  ArchiveTest
//
//  Created by MF839-014 on 2016. 6. 20..
//  Copyright © 2016년 MF839-014. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Restaurant : NSObject <NSCoding>
@property (strong, nonatomic, readonly) NSString *name;
@property (strong, nonatomic, readonly) NSString *phoneNumber;
@property (strong, nonatomic, readonly) NSString *imageName;

- (id) initWithName: (NSString*) newName;
- (id) initWithName: (NSString*) newName withPhoneNumber: (NSString *)newphoneNumber;
- (id) initWithName: (NSString*) newName withPhoneNumber: (NSString *)newphoneNumber
      withImageName: (NSString *)newImageName;

@end
