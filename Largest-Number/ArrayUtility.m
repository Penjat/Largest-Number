//
//  ArrayUtility.m
//  Largest-Number
//
//  Created by Spencer Symington on 2018-10-29.
//  Copyright © 2018 Spencer Symington. All rights reserved.
//

#import "ArrayUtility.h"

@implementation ArrayUtility
+(NSNumber*) largestNumber:(NSArray *)array{
    int currentLargest = [array[0] intValue];
    for (NSNumber * num in array) {
        if([num intValue] > currentLargest){
            currentLargest = [num intValue];
        }
    }
    
    return [[NSNumber alloc] initWithInt:currentLargest];
    
}
+(NSNumber*) smallestNumber:(NSArray *)array{
    int currentSmallest = [array[0] intValue];
    for (NSNumber * num in array) {
        if([num intValue] < currentSmallest){
            currentSmallest = [num intValue];
        }
    }
    
    return [[NSNumber alloc] initWithInt:currentSmallest];
    
}
+(NSNumber*) findAverage:(NSArray *)array{
    int total = 0;
    int count = 0;
    for (NSNumber * num in array) {
        total += [num intValue];
        count++;
    }
    
    return [[NSNumber alloc] initWithInt:(total/count)];
    
}
@end
