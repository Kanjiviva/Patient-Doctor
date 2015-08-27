//
//  Patient.m
//  Patient & Doctor
//
//  Created by Steve on 2015-08-27.
//  Copyright (c) 2015 Steve. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (instancetype)initWithAge:(int)age name:(NSString *)name
{
    self = [super init];
    if (self) {
        
        _currentSymptoms = @"";
        
        
    }
    return self;
}

//- (void)visitDoctor:(Doctor *)someDoctor {
//    
//    if ([someDoctor acceptPatient:self]) {
//        
//        
//        
//    }
//    
//    
//    
//}

- (BOOL)haveHealthCard {
    if (self.healthCard == YES) {
        return YES;
    }
    else {
        return NO;
    }
}

//- (void)requestMedication {
//    
//}

@end
