//
//  Student.m
//  HomeWork_4
//
//  Created by Станислав Лемешаев on 23.03.2021.
//

#import "Student.h"

@implementation Student

// fullName должно возвращать строку состоящую из склеенных name и surname
-(NSString *) fullName
{
    return [NSString stringWithFormat:@"%@ %@", self.name, self.surname];
}

// создать класс Студент, а значения свойств устанавливать,
// используя собственный конструктор
-(instancetype)initWithName:(NSString *)name
                    surname:(NSString *)surname
                        age:(NSInteger)age {
    self = [super init];
    if (self) {
        self.name = name;
        self.surname = surname;
        _age = age;
    }
    return self;
}

// переопределить метод description чтобы при выводе объекта в NSLog
// выводилась информация по всем его свойствам
-(NSString *)description
{
    return [NSString stringWithFormat:@"имя: %@, фамилия: %@, %@ возраст: %ld ",
            self.name, self.surname, self.fullName, (long)self.age];
}

// добавить метод который будет увеличивать его возраст.
// (свойство age только для чтения)
-(void)increaseAge
{
    _age++;
}

@end
