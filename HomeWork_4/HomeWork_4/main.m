//
//  main.m
//  HomeWork_4
//
//  Created by Станислав Лемешаев on 22.03.2021.
//
//  1. Создать программу, которая будет выводить список студентов. Для этого необходимо создать класс Студент, а значения свойств устанавливать, используя собственный конструктор.
//
//  2. У студента должно быть свойство age (возраст), оно должно быть только для чтения.
//
//  3. У студента должны быть свойства name, surname и fullName. Первые два должны быть обычными свойствами, а fullName должно возвращать строку состоящую из склеенных name и surname.
//
//  4. Переопределите метод description чтобы при выводе объекта в NSLog выводилась информация по всем его свойствам.
//
//  5. Добавьте метод который будет увеличивать его возраст. (Да свойство age только для чтения).

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *students = [[NSMutableArray alloc] init];
        [students addObject:[[Student alloc] initWithName:@"Виктор" surname:@"Медведев" age:26]];
        [students addObject:[[Student alloc] initWithName:@"Алексей" surname:@"Городнянский" age:28]];
        [students addObject:[[Student alloc] initWithName:@"Лемешаев" surname:@"Станислав" age:29]];
        [students addObject:[[Student alloc] initWithName:@"Сафронов" surname:@"Виталий" age:28]];
        
        // Выводить список студентов
        for (int i = 0; i < students.count; i++) {
            NSLog(@"\n %i - %@", i, [students[i] description]);
        }
        
        // Добавьте метод который будет увеличивать его возраст.
        // (Да свойство age только для чтения)
        [students[2] increaseAge];
        NSLog(@"%@", students[2]); 

    }
    return 0;
}
