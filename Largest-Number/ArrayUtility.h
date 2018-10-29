//
//  ArrayUtility.h
//  Largest-Number
//
//  Created by Spencer Symington on 2018-10-29.
//  Copyright © 2018 Spencer Symington. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ArrayUtility : NSObject

+(NSNumber*) largestNumber:(NSArray*) array;
+(NSNumber*) smallestNumber:(NSArray*) array;
+(NSNumber*) findAverage:(NSArray*) array;

//
@end

NS_ASSUME_NONNULL_END
