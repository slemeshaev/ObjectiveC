//
//  main.m
//  HomeWork_2
//
//  Created by Станислав Лемешаев on 21.03.2021.
//

//  1. Создать функцию, которая будет проверять, входит ли переданная буква в английский алфавит.
//  2. Разделить метод Calculate (из практической задачи) на несколько методов (отдельно сложение, вычитание, умножение и деление).

#import <Foundation/Foundation.h>

// 1. Функция, которая проверяет, входит ли переданная буква в английский алфавит.
BOOL isLetterEnglishABC(char c) {
    if (((c >= 'a') && (c <= 'z')) || ((c >= 'A') && (c <= 'Z'))) {
        return true;
    }
    else
        return false;
}

//  2. Разделить метод Calculate (из практической задачи) на несколько методов (отдельно сложение, вычитание, умножение и деление).
int sum(int a, int b) {
    return a + b;
}

int diff(int a, int b) {
    return a - b;
}

int mult(int a, int b) {
    return a * b;
}

double del(double a, double b) {
    return a / b;
}

// MARK: - Main Program
int main() {
    @autoreleasepool {
        // Task 1
        printf("Enter your symbol: ");
        char sym;
        scanf("%s", &sym);
        NSLog(@"%d", isLetterEnglishABC(sym));
        
        // Task 2
        NSLog(@"\nEnter a operation sign: ");
        char zn;
        scanf("%s", &zn);
        
        NSLog(@"\nEnter a first number: ");
        int firstNumber;
        scanf("%d", &firstNumber);
        
        NSLog(@"\nEnter a second number: ");
        int secondNumber;
        scanf("%d", &secondNumber);
        
        switch (zn) {
            case '+':
                NSLog(@"\nSum result = %i", sum(firstNumber, secondNumber));
                break;
            case '-':
                NSLog(@"\nDiff result = %i", diff(firstNumber, secondNumber));
                break;
            case '*':
                NSLog(@"\nMult result = %i", mult(firstNumber, secondNumber));
                break;
            case '/':
                NSLog(@"\nDiv result = %f", del(firstNumber, secondNumber));
                break;
            default:
                NSLog(@"Функция не знает переданный метод");
                break;
        }
        
    }
    return 0;
}

