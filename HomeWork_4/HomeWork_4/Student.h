//
//  Student.h
//  HomeWork_4
//
//  Created by Станислав Лемешаев on 23.03.2021.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *surname;
@property (nonatomic, strong) NSString *fullName;
@property (nonatomic, assign, readonly) NSInteger age;

-(NSString *) fullName;
-(instancetype)initWithName:(NSString *)name
                    surname:(NSString *)surname
                        age:(NSInteger)age;
-(void)increaseAge;

@end
