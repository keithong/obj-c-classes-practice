//
//  Asset.m
//  BMITime
//
//  Created by Keith Samson on 6/4/14.
//  Copyright (c) 2014 Keith Samson. All rights reserved.
//

#import "Asset.h"
#import "Employee.h"

@implementation Asset
@synthesize label, resaleValue, holder;

-(NSString *)description{
    //Ask if holder is non-nil
    if([self holder]){
        return [NSString stringWithFormat:@"<%@: $%d, assigned to %@>",
                [self label], [self resaleValue], [self holder]];
    } else {
        return [NSString stringWithFormat:@"<%@: $%d>",
                [self label], [self resaleValue]];
    }
}

-(void)dealloc{
    NSLog(@"dellocating %@" ,self);
}
@end
