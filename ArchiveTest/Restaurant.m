//
//  Restaurant.m
//  ArchiveTest
//
//  Created by MF839-014 on 2016. 6. 20..
//  Copyright © 2016년 MF839-014. All rights reserved.
//

#import "Restaurant.h"

#define kName @"name"
#define kImageName @"image_name"
#define kPhoneNumber @"phone_number"

@implementation Restaurant
- (id) init
{
    self = [super init];
    if (self) {
        _name = @"default";
        _phoneNumber = @"000-0000-0000";
        _imageName = @"default.png";
    }
    return self;
}

- (id) initWithName: (NSString*) newName
{
    self = [super init];
    if (self) {
        _name = newName;
    }
    return self;
}

- (id) initWithName: (NSString*) newName withPhoneNumber: (NSString *)newphoneNumber
{
    self = [self initWithName: newName];
    _phoneNumber = newphoneNumber;
    return self;
}

- (id) initWithName: (NSString*) newName withPhoneNumber: (NSString *)newphoneNumber
      withImageName: (NSString *)newImageName
{
    self = [self initWithName: newName withPhoneNumber: newphoneNumber];
    _imageName = newImageName;
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject: _name forKey: kName];
    [aCoder encodeObject: _phoneNumber forKey: kPhoneNumber];
    [aCoder encodeObject: _imageName forKey: kImageName];
}

- (id) initWithCoder:(NSCoder *)aDecoder {
    _name = [aDecoder decodeObjectForKey: kName];
    _phoneNumber = [aDecoder decodeObjectForKey: kPhoneNumber];
    _imageName = [aDecoder decodeObjectForKey: kImageName];
    
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat: @"%@\r%@\r%@", _name, _phoneNumber, _imageName];
}
@end
