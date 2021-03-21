//
//  main.m
//  HomeWork_1
//
//  Created by Станислав Лемешаев on 21.03.2021.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 1. Создать программу, которая будет пременять к введенным числам различные арифметические операции (на основе практической задачи 3).
        double firstNumber;
        double secondNumber;
        NSLog(@"\nFirst number: ");
        scanf("%lf", &firstNumber);
        NSLog(@"\nSecond number: ");
        scanf("%lf", &secondNumber);
        NSLog(@"\nSum result = %f", firstNumber + secondNumber);
        NSLog(@"\nDiff result = %f", firstNumber - secondNumber);
        NSLog(@"\nMult result = %f", firstNumber * secondNumber);
        NSLog(@"\nDiv result = %f", firstNumber / secondNumber);
        
        // 2. Улучшить программу: организовать вывод результата и переменных в консоль одной строкой (как в практической задаче 2).
        NSLog(@"\nSum result = %f, Diff result = %f, Mult result = %f, Div result = %f", firstNumber + secondNumber, firstNumber - secondNumber, firstNumber * secondNumber, firstNumber / secondNumber);
        
        // 3. *Создать приложение, которое будет вычислять среднее число из трех переменных, не применяя специальные функции
        double thirdNumber;
        NSLog(@"\nThird number: ");
        scanf("%lf", &thirdNumber);
        NSLog(@"\nAverage number = %f", (firstNumber + secondNumber + thirdNumber) / 3);
    }
    return 0;
}
