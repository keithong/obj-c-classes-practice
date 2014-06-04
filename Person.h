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
    float weightInKilos;
    
}
//Create our getter methods
-(float)heightInMeters;
-(int)weightInKilos;

//To set the instance variables, we'll use these methods
-(void)setHeightInMeters:(float)h;
-(void)setWeightInKilos:(int)w;

//This method is to calculate the Body Mass Index
-(float)bodyMassIndex;

@end
