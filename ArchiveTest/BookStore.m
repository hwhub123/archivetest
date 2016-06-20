//
//  BookStore.m
//  ArchiveTest
//
//  Created by MF839-014 on 2016. 6. 20..
//  Copyright © 2016년 MF839-014. All rights reserved.
//

#import "BookStore.h"

#define kName @"name"
#define kImageName @"image_name"
#define kPhoneNumber @"phone_number"
#define kLocation @"location"

@implementation BookStore
- (id) init
{
    self = [super init];
    if (self) {
        _name = @"default";
        _phoneNumber = @"000-0000-0000";
        _imageName = @"default.png";
        _location = kNone;
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

- (id) initWithName: (NSString*) newName withPhoneNumber: (NSString *)newphoneNumber
      withImageName: (NSString *)newImageName withLocation: (Location)newLocation
{
    self = [self initWithName: newName withPhoneNumber: newphoneNumber withImageName: newImageName];
    _location = newLocation;
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject: _name forKey: kName];
    [aCoder encodeObject: _phoneNumber forKey: kPhoneNumber];
    [aCoder encodeObject: _imageName forKey: kImageName];
    [aCoder encodeInt:_location forKey: kLocation];
}

- (id) initWithCoder:(NSCoder *)aDecoder {
    _name = [aDecoder decodeObjectForKey: kName];
    _phoneNumber = [aDecoder decodeObjectForKey: kPhoneNumber];
    _imageName = [aDecoder decodeObjectForKey: kImageName];
    _location = [aDecoder decodeIntForKey: kLocation];
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat: @"%@\r%@\r%@\r%d", _name, _phoneNumber, _imageName
            , _location];

}
@end
