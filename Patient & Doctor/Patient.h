//
//  Patient.h
//  Patient & Doctor
//
//  Created by Steve on 2015-08-27.
//  Copyright (c) 2015 Steve. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"

@interface Patient : NSObject

@property (assign) int age;
@property (strong, nonatomic) NSString *name;
@property (assign, nonatomic) BOOL healthCard;
@property (strong, nonatomic) NSString *currentSymptoms;

- (instancetype)initWithAge:(int)age name:(NSString *)name;
//- (void)visitDoctor:(Doctor *)someDoctor;
- (BOOL)haveHealthCard;
//- (void)requestMedication;


@end
