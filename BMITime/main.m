//
//  main.m
//  BMITime
//
//  Created by Keith Samson on 6/4/14.
//  Copyright (c) 2014 Keith Samson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
       
        //Create an instance of Person
        Employee *person = [[Employee alloc]init];
        
        //Give the instance variables interesting values
        [person setWeightInKilos:45];
        [person setHeightInMeters:1.72];
        
        //Set the employee ID
        [person setEmployeeID:19];
        
        //Call the bodyMassIndex method
        float bmi = [person bodyMassIndex];
        
        //Use the employee ID to identify a specific employee
        NSLog(@"Employee %d has a BMI of %.2f",[person employeeID], bmi);
        
    }
    return 0;
}

