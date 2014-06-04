//
//  Asset.m
//  BMITime
//
//  Created by Keith Samson on 6/4/14.
//  Copyright (c) 2014 Keith Samson. All rights reserved.
//

#import "Asset.h"

@implementation Asset
@synthesize label, resaleValue;

-(NSString *)description{

    return [NSString stringWithFormat:@"<%@: $%d>", [self label], [self resaleValue]];
}

-(void)dealloc{
    NSLog(@"dellocating %@" ,self);
}
@end
