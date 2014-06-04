//
//  Person.m
//  BMITime
//
//  Created by Keith Samson on 6/4/14.
//  Copyright (c) 2014 Keith Samson. All rights reserved.
//

#import "Person.h"

@implementation Person

//Replace accessors with the @synthesize construct
@synthesize heightInMeters, weightInKilos;

-(float)bodyMassIndex{
    return weightInKilos / (heightInMeters * heightInMeters);
}

@end
