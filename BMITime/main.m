//
//  main.m
//  BMITime
//
//  Created by Keith Samson on 6/4/14.
//  Copyright (c) 2014 Keith Samson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
       
        Person *p = [[Person alloc]init];
        
        [p setWeightInKilos:45];
        [p setHeightInMeters:1.72];
        
        NSLog(@"This person's BMI is %f", [p bodyMassIndex]);
        
    }
    return 0;
}

