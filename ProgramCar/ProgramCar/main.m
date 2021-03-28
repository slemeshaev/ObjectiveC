//
//  main.m
//  ProgramCar
//
//  Created by Станислав Лемешаев on 23.03.2021.
//

#import <Foundation/Foundation.h>
#import "Car.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car *car = [[Car alloc] init];
        
        Wheel *wheel1 = [[Wheel alloc] initWithNumber:@1];
        Wheel *wheel2 = [[Wheel alloc] initWithNumber:@2];
        Wheel *wheel3 = [[Wheel alloc] initWithNumber:@3];
        Wheel *wheel4 = [[Wheel alloc] initWithNumber:@4];
        
        NSArray *wheels = [[NSArray alloc] initWithObjects:wheel1, wheel2, wheel3, wheel4, nil];
        
        Engine *engine = [[Engine alloc] initWithModel:@"Engine 1x"];
        
        // configure car
        [car  configWithEngine:engine andWheels:wheels];
        
        // release car
        [car  release];
    }
    return 0;
}
