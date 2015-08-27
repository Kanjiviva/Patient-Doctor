//
//  Doctor.m
//  Patient & Doctor
//
//  Created by Steve on 2015-08-27.
//  Copyright (c) 2015 Steve. All rights reserved.
//

#import "Doctor.h"
#import "Prescriptions.h"
#import "Patient.h"

@interface Doctor()



- (void)storedPrescription:(Prescriptions *)prescriptions;

@end


@implementation Doctor

- (instancetype)initWithName:(NSString *)name specialization:(NSString *)specialization
{
    self = [super init];
    if (self) {
        _allPatient = [[NSMutableSet alloc] init];
        
        
    }
    return self;
}

- (BOOL)visitedPatient:(Patient *)patient {
    
    
//    if ([patient haveHealthCard]) {

        if ([self.allPatient containsObject:patient]) {
            NSLog(@"We found you");
            return YES;
        }else if ([patient healthCard]){
            [self.allPatient addObject:patient];
            NSLog(@"We accepted you!");
            return YES;
        }else {
            NSLog(@"We cannot accept you!");
            return NO;
        }
    
}

- (Prescriptions *)requestMedication:(Patient *)patient {
    
    Prescriptions *prescriptions = [Prescriptions new];
    
    if ([self.allPatient containsObject:patient]) {
        NSLog(@"We have something for you MAYBE!");
    } else {
        NSLog(@"You are not on the list");
        return nil;
    }
    
    
    
    if ([patient.currentSymptoms isEqualToString:@""]) {
        NSLog(@"We have nothing for you!");
        return nil;
    }else{
    
    NSLog(@"There is something wrong with you");
    return prescriptions;
    }
}

- (void)storedPrescription:(Prescriptions *)prescriptions {
    
    [self.storedPersciptions addObject:prescriptions];
    
}
@end
