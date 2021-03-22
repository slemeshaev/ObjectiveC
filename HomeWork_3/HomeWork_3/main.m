//
//  main.m
//  HomeWork_3
//
//  Created by Станислав Лемешаев on 21.03.2021.
//

// 1. Создать массив строк и вывести его в консоль используя цикл.
//
// 2. Улучшить калькулятор с помощью перечислений, чтобы все возможные методы (сложение, вычитание, деление, умножение) передавались в виде состояния.
//
// 3. Создать структуру Human. Со свойствами “Name” (NSString), “Age”(NSInterger), “Gender”(NS_Enum). Создать несколько экземпляров структуры и вывести их в консоль.


#import <Foundation/Foundation.h>

// Ко 2-му заданию
enum Operation {
    Addition = '+',
    Subtraction = '-',
    Multiplication = '*',
    Division = '/'
};

typedef enum Operation Operation;

int addition(double a, double b) {
    return a + b;
}

int subtraction(double a, double b) {
    return a - b;
}

int multiplication(double a, double b) {
    return a * b;
}

double division(double a, double b) {
    return a / b;
}

void Calculate(Operation sign, double firstNumber, double secondNumber) {
    switch (sign) {
        case Addition:
            NSLog(@"\nSum result = %i", addition(firstNumber, secondNumber));
            break;
        case Subtraction:
            NSLog(@"\nDiff result = %i", subtraction(firstNumber, secondNumber));
            break;
        case Multiplication:
            NSLog(@"\nMult result = %i", multiplication(firstNumber, secondNumber));
            break;
        case Division:
            NSLog(@"\nDiv result = %f", division(firstNumber, secondNumber));
            break;
        default:
            NSLog(@"The function doesn't know the passed method");
            break;
    }
}

// к 3-му заданию
typedef enum {
    Male = 'M',
    Female = 'F'
} GenderStatus;

typedef struct Human {
    NSString *name;
    NSInteger age;
    GenderStatus gender;
} Human;

// Основная программа
int main() {
    @autoreleasepool {
        // 1. Создать массив строк и вывести его в консоль используя цикл.
        NSMutableArray *mutableArrayString = [NSMutableArray arrayWithObjects:@"Hello", @"world", @"Stanislav", @"Lemeshaev", nil];
        
        // Распечатка элементов массива
        for (int i = 0; i < mutableArrayString.count; i++) {
            NSLog(@"Elements: \n %d - %@", i, mutableArrayString[i]);
        }
        
        // 2. Улучшить калькулятор с помощью перечислений, чтобы все возможные методы (сложение, вычитание, деление, умножение) передавались в виде состояния.
        NSLog(@"\nEnter a operation sign: ");
        char zn;
        scanf("%s", &zn);
        
        NSLog(@"\nEnter a first number: ");
        double firstNumber;
        scanf("%lf", &firstNumber);
        
        NSLog(@"\nEnter a second number: ");
        double secondNumber;
        scanf("%lf", &secondNumber);
        
        Calculate(zn, firstNumber, secondNumber);
        
        // 3. Создать структуру Human. Со свойствами “Name” (NSString), “Age”(NSInterger), “Gender”(NS_Enum). Создать несколько экземпляров структуры и вывести их в консоль.
        Human human_1;
        human_1.name = @"Alex";
        human_1.age = 28;
        human_1.gender = Male;
        
        Human human_2;
        human_2.name = @"Vika";
        human_2.age = 26;
        human_2.gender = Female;
        
        Human human_3;
        human_3.name = @"Viktor";
        human_3.age = 27;
        human_3.gender = Male;
        
        NSLog(@"Human_1 - %@ %li %c", human_1.name, human_1.age, human_1.gender);
        NSLog(@"Human_2 - %@ %li %c", human_2.name, human_2.age, human_2.gender);
        NSLog(@"Human_3 - %@ %li %c", human_3.name, human_3.age, human_3.gender);
    }
    return 0;
}
