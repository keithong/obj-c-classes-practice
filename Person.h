//
//  Person.h
//  BMITime
//
//  Created by Keith Samson on 6/4/14.
//  Copyright (c) 2014 Keith Samson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    //Class Person has two instance variables
    float heightInMeters;
    int weightInKilos;
    
}
//Replace the setter and getter methods with property construct
@property float heightInMeters;
@property int weightInKilos;

//This method is to calculate the Body Mass Index
-(float)bodyMassIndex;

@end
