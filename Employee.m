//
//  Employee.m
//  BMITime
//
//  Created by Keith Samson on 6/4/14.
//  Copyright (c) 2014 Keith Samson. All rights reserved.
//

#import "Employee.h"
#import "Asset.h"
@implementation Employee

@synthesize employeeID;

-(void)addAssetsObject:(Asset *)a{
    //Ask if assets is nil
    if (!assets){
    
        //Create the array
        assets = [[NSMutableSet alloc]init];
    }
    [assets addObject:a];
    [a setHolder:self];
    
}
-(unsigned int)valueOfAssets{

    //Sum up the resale value of the assets
    unsigned int sum = 0;
    for (Asset *a in assets) {
        sum += [a resaleValue];
    }
    return sum;
}

-(NSString *)description{
    
    return [NSString stringWithFormat:@"<Employee %d: $%d in assets>", [self employeeID], [self valueOfAssets]];
}

-(void)dealloc{
    NSLog(@"dellocating %@" ,self);
}

@end
