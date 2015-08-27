//
//  main.m
//  Patient & Doctor
//
//  Created by Steve on 2015-08-27.
//  Copyright (c) 2015 Steve. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"
#import "Prescriptions.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Doctor *doctor = [[Doctor alloc] initWithName:@"Steve" specialization:@"Fever"];
        Patient *patient = [[Patient alloc] initWithAge:25 name:@"Cory"];
        
        patient.healthCard = YES;
        
        [doctor visitedPatient:patient];
        
        patient.currentSymptoms = @"Fever";
        
        [doctor requestMedication:patient];
        
        Patient *patient2 = [[Patient alloc] initWithAge:26 name:@"Jon"];
        
        patient2.healthCard = YES;
        
        [doctor visitedPatient:patient2];
        
        patient2.currentSymptoms = @"";
        
        [doctor requestMedication:patient2];
    }
    return 0;
}
