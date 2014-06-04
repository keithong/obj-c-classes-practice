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
        
        //Use the getter methods from Person.h to main.m
        NSLog(@"The person with the height %.2f meters and weight %d kilos has a BMI of %.2f"
              , [p heightInMeters], [p weightInKilos], bmi);
        
    }
    return 0;
}

