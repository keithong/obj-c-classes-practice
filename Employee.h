//
//  Employee.h
//  BMITime
//
//  Created by Keith Samson on 6/4/14.
//  Copyright (c) 2014 Keith Samson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@class Asset;

@interface Employee : Person
{
    int employeeID;
    NSMutableSet *assets;
    
}
@property int employeeID;
-(void)addAssetsObject:(Asset *)a;
-(unsigned int)valueOfAssets;

@end
