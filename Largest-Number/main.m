//
//  main.m
//  Largest-Number
//
//  Created by Spencer Symington on 2018-10-29.
//  Copyright © 2018 Spencer Symington. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ArrayUtility.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray * testArray = @[@4,@5,@27,@33,@2,@101,@239,@5,@99];
        
        //NSLog(@"the largest number is %@",[ArrayUtility largestNumber:testArray]);
        NSLog(@"the largest number is %@", [ArrayUtility largestNumber:testArray] );
        NSLog(@"the smallest number is %@", [ArrayUtility smallestNumber:testArray] );
        NSLog(@"the average of the numbers is %@", [ArrayUtility findAverage:testArray] );
        
    }
    return 0;
}
