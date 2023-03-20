package com.example.calculator_application.model;

public class Calculator {
    public static double calculate(double firstOperand, double secondOperand, char operator){
        switch (operator){
            case '+':
                return firstOperand + secondOperand;
            case '-':
                return firstOperand - secondOperand;
            case '*':
                return firstOperand * secondOperand;
            case '/':
                if (secondOperand!=0){
                    return firstOperand / secondOperand;
                }else {
                    throw new RuntimeException("Can't divide by 0");
                }
            default:
                throw new RuntimeException("Invalid operation");
        }
    }
}
