//
//  main.m
//  Calculator
//
//  Created by kevint on 2017-10-23.
//  Copyright © 2017 kevint. All rights reserved.
//test push changes to github
//
enum operation {add, subtract, multiply, divide};


#import <Foundation/Foundation.h>

static void RunOperation(enum operation currentOperation, NSInteger firstNumber, NSInteger *result, NSInteger secondNumber) {
    switch (currentOperation) {
        case add:
            *result = firstNumber + secondNumber;
            break;
        case subtract:
            *result = secondNumber - firstNumber;
            break;
        case multiply:
            *result = firstNumber * secondNumber;
            break;
        case divide:
            *result = secondNumber / firstNumber;
            break;
        default:
            break;
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSInteger firstNumber = 2, secondNumber = 10, result;
        enum operation currentOperation = multiply;
        RunOperation(currentOperation, firstNumber, &result, secondNumber);
        
        NSLog(@"result: %li", result);
        
    }
    return 0;
}
