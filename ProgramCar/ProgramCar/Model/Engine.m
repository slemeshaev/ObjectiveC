//
//  Engine.m
//  ProgramCar
//
//  Created by Станислав Лемешаев on 23.03.2021.
//

#import "Engine.h"

@implementation Engine

-(instancetype)initWithModel:(NSString *)model {
    if (self) {
        [model retain];
        [model release];
        self.model = model;
        NSLog(@"Model engine - %@", model);
    }
    return self;
}

-(void)dealloc {
    NSLog(@"Dealloc Enging - %@", self.model);
    [self.model release];
    [super dealloc]; 
}

@end
