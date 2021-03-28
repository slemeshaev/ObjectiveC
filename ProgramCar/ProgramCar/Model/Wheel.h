//
//  Wheel.h
//  ProgramCar
//
//  Created by Станислав Лемешаев on 23.03.2021.
//

#import <Foundation/Foundation.h>

@interface Wheel : NSObject

-(instancetype) initWithNumber: (NSNumber *)number;
@property (nonatomic, strong) NSNumber *number;

@end
