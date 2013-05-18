//
//  SodaMethodTest.m
//  SodaCloudIOS
//
//  Created by Jules White on 5/18/13.
//  Copyright (c) 2013 Jules White. All rights reserved.
//

#import "SodaMethodTest.h"

#import "SodaMethod.h"

@implementation SodaMethodTest


- (void)testSodaMethodAndMacros
{
    SodaMethod* m = [[SodaMethod alloc] initWithName:@"foo" andReturnType:[NSString class], [NSString class],[NSNumber class],nil];
    
    STAssertEqualObjects(m.name, @"foo", @"The method name was not set correctly.");
    STAssertEqualObjects(m.returnType, [NSString class], @"The method return type was not set correctly.");
    
    STAssertEqualObjects([m.parameterTypes objectAtIndex:0], [NSString class], @"The method parameter types were not set correctly.");
    STAssertEqualObjects([m.parameterTypes objectAtIndex:1], [NSNumber class], @"The method parameter types were not set correctly.");
    
    
    
    m = SODA_METHOD(@"foo", NSString, PARAM(NSString), PARAM(NSNumber), PARAM(SodaMethodTest));
    
    STAssertEqualObjects(m.name, @"foo", @"The method name was not set correctly.");
    STAssertEqualObjects(m.returnType, [NSString class], @"The method return type was not set correctly.");
    
    STAssertEqualObjects([m.parameterTypes objectAtIndex:0], [NSString class], @"The method parameter types were not set correctly.");
    STAssertEqualObjects([m.parameterTypes objectAtIndex:1], [NSNumber class], @"The method parameter types were not set correctly.");
    STAssertEqualObjects([m.parameterTypes objectAtIndex:2], [SodaMethodTest class], @"The method parameter types were not set correctly.");
    
    
    m = SODA_NOARG_METHOD(@"foo", NSString);
    
    STAssertEqualObjects(m.name, @"foo", @"The method name was not set correctly.");
    STAssertEqualObjects(m.returnType, [NSString class], @"The method return type was not set correctly.");
    
    STAssertTrue(m.parameterTypes.count == 0, @"The method parameter types were not set correctly.");
    
    
    m = SODA_VOID_METHOD(@"foo", PARAM(NSString), PARAM(NSNumber), PARAM(SodaMethodTest));
    
    STAssertEqualObjects(m.name, @"foo", @"The method name was not set correctly.");
    STAssertEqualObjects(m.returnType, nil, @"The method return type was not set correctly.");
    
    STAssertEqualObjects([m.parameterTypes objectAtIndex:0], [NSString class], @"The method parameter types were not set correctly.");
    STAssertEqualObjects([m.parameterTypes objectAtIndex:1], [NSNumber class], @"The method parameter types were not set correctly.");
    STAssertEqualObjects([m.parameterTypes objectAtIndex:2], [SodaMethodTest class], @"The method parameter types were not set correctly.");
    
    m = SODA_VOID_NOARG_METHOD(@"foo");
    
    STAssertEqualObjects(m.name, @"foo", @"The method name was not set correctly.");
    STAssertEqualObjects(m.returnType, nil, @"The method return type was not set correctly.");
    
    STAssertTrue(m.parameterTypes.count == 0, @"The method parameter types were not set correctly.");
    
}

@end