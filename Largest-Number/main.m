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
        NSArray * testArray = @[@4,@5,@27,@33,@2,@101,@239,@5,@99,@30,@31];
        
        //NSLog(@"the largest number is %@",[ArrayUtility largestNumber:testArray]);
        NSLog(@"the largest number is %@", [ArrayUtility largestNumber:testArray] );
        NSLog(@"the smallest number is %@", [ArrayUtility smallestNumber:testArray] );
        NSLog(@"the average of the numbers is %@", [ArrayUtility findAverage:testArray]);
        
       
        
        NSArray  * sortedArray = [ArrayUtility sortArray:testArray];
        
        if([ArrayUtility isArraySorted:sortedArray] == 1){
            NSLog(@"sortedArray is sorted");
        }else{
            NSLog(@"sortedArray is not sorted");
        }
        NSLog(@"the median of sortedArray is %@", [ArrayUtility findMedian:sortedArray]);
        NSLog(@"the median of testArray is %@",[ArrayUtility findMedian:testArray]);
        for (NSNumber * num in sortedArray) {
            NSLog(@"%@",num);
        }
        
        for (NSNumber * num in testArray) {
            NSLog(@"%@",num);
        }
        
        if([ArrayUtility isArraySorted:testArray] == 1){
            NSLog(@"test array is sorted");
        }else{
            NSLog(@"test array is not sorted");
        }
    }
    return 0;
}
