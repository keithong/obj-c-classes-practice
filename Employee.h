//
//  Employee.h
//  BMITime
//
//  Created by Keith Samson on 6/4/14.
//  Copyright (c) 2014 Keith Samson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@interface Employee : Person
{
    int employeeID;
    NSString *lastName;
    Person *spouse;
    NSMutableArray *children;
    
}
@property int employeeID;
@end
