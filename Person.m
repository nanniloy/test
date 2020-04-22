//
//  Person.m
//  My Firs iOS App
//
//  Created by Claudio Nanni on 17/07/14.
//  Copyright (c) 2014 Claudio Nanni. All rights reserved.
//

#import "Person.h"

NSString *const kFirstNameKey = @"firstName";
NSString *const kLastNameKey = @"lastName";

@implementation Person
- (void) walkAtKilometersPerHour:(CGFloat)paramSpeedkilometersPerHour{
    
}
- (void) runAt10KilometersPerHour{
    [self walkAtKilometersPerHour:10.0f];
}

- (void) singSong:(NSData *)paramSongData loudly:(BOOL)paramLoudly{
    /* The parameters that we can access here in this method are:
    paramSongData (to access the song's data)
    paramLoudly will tell us if we have to sing the song loudly or not
    */
}

+ (CGFloat) maximumHeightInCentimeters{ return 250.0f;
}

+ (CGFloat) minimumHeightInCentimeters{ return 40.0f;
}

- (id) objectForKeyedSubscript:(id<NSCopying>)paramKey{
    NSObject<NSCopying> *keyAsObject = (NSObject<NSCopying> *)paramKey;
    if ([keyAsObject isKindOfClass:[NSString class]]){
        NSString *keyAsString = (NSString *)keyAsObject;
        if ([keyAsString isEqualToString:kFirstNameKey] ||
            [keyAsString isEqualToString:kLastNameKey]){
        return [self valueForKey:keyAsString]; }
    }
    return nil;
}

- (void) setObject:(id)paramObject forKeyedSubscript:(id<NSCopying>)paramKey{
    NSObject<NSCopying> *keyAsObject = (NSObject<NSCopying> *)paramKey;
    if ([keyAsObject isKindOfClass:[NSString class]]){
        NSString *keyAsString = (NSString *)keyAsObject;
        if ([keyAsString isEqualToString:kFirstNameKey] ||
            [keyAsString isEqualToString:kLastNameKey]){
            [self setValue:paramObject forKey:keyAsString];
        }
    }
}

- (id) objectAtIndexedSubscript:(NSUInteger)paramIndex{
    switch (paramIndex){
        case 0:{
            return self.firstName;
            break;
        }
        case 1:{
            return self.lastName;
            break;
        }
        default:{
            [NSException raise:@"Invalid index" format:nil];
        }
    }
    
    return nil;
}

- (void) setObject:(id)paramObject atIndexedSubscript:(NSUInteger)paramIndex{ switch (paramIndex){
    case 0:{
        self.firstName = paramObject;
        break;
        }
    case 1:{
        self.lastName = paramObject;
        break;
        }
    default:{
        [NSException raise:@"Invalid index" format:nil];
        }
    }
}
@end
