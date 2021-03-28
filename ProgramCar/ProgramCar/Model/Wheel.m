//
//  Wheel.m
//  ProgramCar
//
//  Created by Станислав Лемешаев on 23.03.2021.
//

#import "Wheel.h"

@implementation Wheel

-(instancetype)initWithNumber:(NSNumber *)number {
    self = [super init];
    if (self) {
        [number retain]; // увеличиваем счетчик ссылок
        [number release]; // уменьшаем счетчик ссылок
        self.number = number;
        NSLog(@"Create wheel %@", number);
    }
    return self;
}

-(void)dealloc {
    NSLog(@"Dealloc whell - %@", self.number);
    [self.number release];
    [super dealloc]; 
}

@end
