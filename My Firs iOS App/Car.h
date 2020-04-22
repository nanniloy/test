//
//  Car.h
//  My Firs iOS App
//
//  Created by Claudio Nanni on 17/07/14.
//  Copyright (c) 2014 Claudio Nanni. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Car <NSObject>
@property (nonatomic, copy) NSArray *wheels;
@property (nonatomic, strong) UIColor *bodyColor;
@property (nonatomic, copy) NSArray *doors;
@end
