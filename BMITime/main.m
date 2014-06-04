//
//  main.m
//  BMITime
//
//  Created by Keith Samson on 6/4/14.
//  Copyright (c) 2014 Keith Samson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Asset.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //Create an array of Employee objects
        NSMutableArray *employees = [[NSMutableArray alloc]init];
        
        for (int i = 0; i < 10; i++) {
            
            //Create an instance of Employee
            Employee *person = [[Employee alloc]init];
        
            //Give the instance variables interesting values
            [person setWeightInKilos:45];
            [person setHeightInMeters:1.72];
            
            //Set the employee ID using i
            [person setEmployeeID:i];
            
            // Put the employee in the employees array
            [employees addObject:person];
        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc]init];
        
        
        //Create 10 assets
        for (int i = 0; i < 10; i++) {
            
            //Create an asset
            Asset *asset = [[Asset alloc] init];
            
            //Give it an interesting label
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            [asset setLabel: currentLabel];
            [asset setResaleValue:i * 17];
            
            // Get random number between 0 and 9 inclusive
            //
            NSUInteger  randomIndex = random() % [employees count];
            
            //Find that employee
            Employee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            //Assign the asset to the employee
            [randomEmployee addAssetsObject: asset];
            [allAssets addObject:asset];
            
        }
        
        NSLog(@"Employees: %@", employees);
        NSLog(@"Giving up ownership of one employee");
        [employees removeObjectAtIndex:5];
        NSLog(@"allAssets: %@", allAssets);
        NSLog(@"Giving up ownership of array");
        allAssets = nil;
        employees = nil;
        
      /*  
       
       Commenting this part in case of reuse
       
       //Call the bodyMassIndex method
        float bmi = [person bodyMassIndex];
        
        //Use the employee ID to identify a specific employee
        NSLog(@"Employee %d has a BMI of %.2f",[person employeeID], bmi); 
       
       
       */
        
    }
    sleep(100);
    return 0;
}

