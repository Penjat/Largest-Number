//
//  main.m
//  Largest-Number
//
//  Created by Spencer Symington on 2018-10-29.
//  Copyright © 2018 Spencer Symington. All rights reserved.
//

#import <Foundation/Foundation.h>

NSObject* largestNumber(NSArray * array){
    
    NSObject * currentLargest = array[0];
    for (NSObject * num in array) {
        if(num > currentLargest){
            currentLargest = num;
        }
    }
    
    return currentLargest;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray * testArray = @[@4,@5,@27,@33,@2];
        
        NSLog(@"current largest is %@",largestNumber(testArray));
        
        
    }
    return 0;
}
