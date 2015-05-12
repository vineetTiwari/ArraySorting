//
//  main.m
//  ArraySorting
//
//  Created by Vineet Tiwari on 2015-05-12.
//  Copyright (c) 2015 vinny.co. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  @autoreleasepool {

    //This is the initial array that we are working with.
    NSArray *initialArray = @[@"eeeeeAAbfdf", @"Everything", @"news to me", @"timepiece", @"egg", @"eggs", @"paper", @"e", @"facebook", @"painting", @"231 thurlow st", @"99 bottles"];
    NSLog(@"Initial array:%@", initialArray);

    //Sorting the initial array aphabetically with numbers first and then the alphabets.
    NSArray *alphabeticallyArrangedArray = [initialArray sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
      return [obj1 compare:obj2 options:NSLiteralSearch];
    }];
      NSLog(@"Alphabetically arranged array:%@", alphabeticallyArrangedArray);

    //Sort the initial array with the longest string first.
    NSArray *longestStringArray = [initialArray sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
      if ([obj1 length] > [obj2 length]) {
        return (NSComparisonResult)NSOrderedAscending;
      }
      if ([obj2 length] > [obj1 length]) {
        return (NSComparisonResult)NSOrderedDescending;
      }
      return (NSComparisonResult)NSOrderedSame;
    }];
    NSLog(@"Array with the longest string first:%@", longestStringArray);


  }
    return 0;
}
