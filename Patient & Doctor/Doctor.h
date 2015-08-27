//
//  Doctor.h
//  Patient & Doctor
//
//  Created by Steve on 2015-08-27.
//  Copyright (c) 2015 Steve. All rights reserved.
//

#import <Foundation/Foundation.h>


@class Prescriptions;
@class Patient;

@interface Doctor : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *specialization;
@property (strong, nonatomic) NSMutableSet *allPatient;
@property (strong, nonatomic) NSMutableSet *storedPersciptions;


- (instancetype)initWithName:(NSString *)name specialization:(NSString *)specialization;
- (BOOL)visitedPatient:(Patient *)patient;
//- (NSString *)requestMedication:(Patient *)symptoms;
- (Prescriptions *)requestMedication:(Patient *)symptoms;


@end
