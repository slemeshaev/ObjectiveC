//
//  Engine.h
//  ProgramCar
//
//  Created by Станислав Лемешаев on 23.03.2021.
//

#import <Foundation/Foundation.h>

@interface Engine : NSObject

-(instancetype) initWithModel: (NSString *)model; 
@property (nonatomic, strong) NSString *model;

@end
