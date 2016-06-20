//
//  main.m
//  ArchiveTest
//
//  Created by MF839-014 on 2016. 6. 20..
//  Copyright © 2016년 MF839-014. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSDictionary *glossary = [NSDictionary dictionaryWithObjectsAndKeys:
                                   @"abstract class",
                                  @"A class defined so other classes can inherit from it",
                                  @"adopt",
                                  @"To implement all the methods defined in a protocol",
                                  @"archiving",
                                  @"Storing an object for later use", nil];

        if( [glossary writeToFile:@"glossary" atomically: YES] == NO )
            NSLog(@"Save to file failes!");
    }
    return 0;
}
