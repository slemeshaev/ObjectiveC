//
//  Car.m
//  ProgramCar
//
//  Created by Станислав Лемешаев on 28.03.2021.
//

#import "Car.h"

@implementation Car

- (instancetype) init
{
    self = [super init];
    if (self) {
        NSLog(@"Create car");
    }
    return self;
}

- (void)configWithEngine:(Engine *)engine andWheels:(NSArray *)wheels
{
    [engine retain];
    [engine release];
    self.engine = engine;
    NSLog(@"Add engine for car");
    
    [wheels retain];
    [wheels release];
    self.wheels = wheels;
    for (Wheel *wheel in wheels)
    {
        NSLog(@"Add wheel (%@) for car", wheel.number);
    }
}

- (void)remove
{
    NSLog(@"Remove engine and wheels from car");
    for (Wheel *wheel in self.wheels)
    {
        [wheel release];
    }
    [self.wheels release];
    [self.engine release]; 
}

- (void)dealloc
{
    [self remove];
    NSLog(@"Dealloc car");
    [super dealloc];
}
@end
