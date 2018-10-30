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
+(NSNumber*) findMedian:(NSArray *)array{
    //check if sorted
    //if sorted
    if([ArrayUtility isArraySorted:array]==1){
        return [ArrayUtility findMedianSorted:array];
    }
    //if not sorted
    //sort the array before finding the median
    
    return [ArrayUtility findMedianSorted:[ArrayUtility sortArray:array]];
}
+(NSNumber*) findMedianSorted:(NSArray *)array{
    //this needs to be for a sorted array
    
    
    long int count = [array count];
    NSNumber * median;
    //if it is odd
    if((count % 2) == 1){
        //return the middle number, half of count
        long int middleIndex = (count/2);
        median = [[NSNumber alloc]
                  initWithInteger:[array[middleIndex] integerValue]];
        
    }else{
        //if it is even
        //find the average of the two middle values
        long int middle1 = (count/2)-1;
        long int middle2 = (count/2);
        
        long int returnValue = ([array[middle1] integerValue] + [array[middle2] integerValue])/2;
        median = [[NSNumber alloc] initWithInteger:returnValue];
        
    }
    
    return median;
    
}
+ (NSArray *)sortArray:(NSArray *)array{
    //insertion sort
    
    NSMutableArray * muArray = [[NSMutableArray alloc]initWithArray:array];
    
    
    for(int i=0;i<muArray.count;i++){
        int currentVal = [array[i] intValue];
        int j = i-1;
        while(j>=0 && currentVal < [muArray[j] intValue]){
            muArray[j+1] = muArray[j];
            j--;
        }
        muArray[j+1] = [[NSNumber alloc] initWithInt:currentVal];
    }
    array = [muArray copy];
    return array;
}
+ (BOOL)isArraySorted:(NSArray *)array{
    //returns YES for sorted, NO for unsorted
    int i =0;
    for (NSNumber * num in array) {
        //if is at the end
        if(i+1 >= array.count){
            return YES;
        }
        if([num intValue] > [array[i+1] intValue] ){
            return NO;
        }
        
        i++;
    }
    return YES;
}
@end
