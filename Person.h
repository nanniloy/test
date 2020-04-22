//
//  Person.h
//  My Firs iOS App
//
//  Created by Claudio Nanni on 17/07/14.
//  Copyright (c) 2014 Claudio Nanni. All rights reserved.
//


#import <Foundation/Foundation.h>

extern NSString *const kFirstNameKey;
extern NSString *const kLastNameKey;

/*!
 Questa è la descrizione di una persona
 */
@interface Person : NSObject

@property (nonatomic, copy) NSString *firstName;
@property (nonatomic, copy) NSString *lastName;
@property (nonatomic, assign) CGFloat currentHeight;

+ (CGFloat) maximumHeightInCentimeters;
+ (CGFloat) minimumHeightInCentimeters;

- (void) walkAtKilometersPerHour:(CGFloat)paramSpeedKilometersPerHour;
- (void) runAt10KilometersPerHour;

- (id) objectForKeyedSubscript:(id<NSCopying>)paramKey;
- (void) setObject:(id)paramObject forKeyedSubscript:(id<NSCopying>)paramKey;

- (id) objectAtIndexedSubscript:(NSUInteger)paramIndex;
- (void) setObject:(id)paramObject atIndexedSubscript:(NSUInteger)paramIndex;

@end
