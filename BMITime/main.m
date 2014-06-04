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
       
        //Create an instance of Person
        Person *p = [[Person alloc]init];
        
        //Give the instance variables interesting values
        [p setWeightInKilos:45];
        [p setHeightInMeters:1.72];
        
        //Call the bodyMassIndex method
        float bmi = [p bodyMassIndex];
        NSLog(@"This person's BMI is %.2f", bmi);
        
    }
    return 0;
}

