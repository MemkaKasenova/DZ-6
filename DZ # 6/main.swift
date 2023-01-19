//
//  main.swift
//  DZ # 6
//
//  Created by merim kasenova on 16/1/23.
//

import Foundation

//Домашнее задание №6.

//1) Создать 2 опциональных  переменных  типа Int number1 и number2. Создать 3 ридлайн. 1 для ввода первого числа, 2 для ввода операции, 3 для ввода второго числа. Составить калькулятор с 4 операциями: +, -, /, *. Сделать так чтобы значение ридлайнов присваивалось переменным number1 и number2 используя 3 способа. 1) Используя оператор "??" сделать так чтобы если неправильно введены данные, то присваивать вместо nil число 0. 2) Используя проверку на nil, выводить сообщение неправильно введены данные, при неправильном вводе. 3) Используя if let и guard посчитать числа, если неправильно введены данные, то ничего не делать.

var number1: Int?
var number2: Int?

print("Введите первое число")
let firstNum = Int(readLine()!) // Число вводится в консоль
print("Выберите операцию +, -, *, /")
let operation = readLine()! //
print("Введите второе число5")
let secondNum = Int(readLine()!) // Число вводится в консоль

func calculate(a: Int, b: Int, operation: String) {
    switch operation {
    case "+":
        print(a + b)
    case "-" :
        print(a - b)
    case "*":
        print(a * b)
    case "/":
        print(a / b)
    default:
        ()
    }
}
//Передаем редлайн в переменную number1
number1 = firstNum
//Передаем редлайн в переменную number2
number2 = secondNum


//1 способ
//Вызов функции calculate
//Если значения в консоли равно nil, то вместо nil прописывается 0
calculate(a: number1 ?? 0, b: number2 ?? 0, operation: operation)

//2 способ
//Если значение в number 1 и number 2 равно nil, то появляется сообщение об ошибке, иначе вызывается функция calculate и происходит расчет
if number1 == nil || number2 == nil {
    print("Неправильно введены данные! Введите число!")
} else {
    calculate(a: number1!, b: number2!, operation: operation)
}

//3 способ
//if-let
//Опциональное связывание
if let number1 = number1, let number2 = number2 {
    calculate(a: number1, b: number2, operation: operation)
}

//Другая функция, которая принимает в себя параметры опционального типа и работает с помощью инструкции guard
//guard:
func calculate2(a: Int?, b: Int?, operation: String) {
    guard let a = a, let b = b else { return }

    switch operation {
    case "+":
        print(a + b)
    case "-" :
        print(a - b)
    case "*":
        print(a * b)
    case "/":
        print(a / b)
    default:
        return
    }
}

calculate2(a: number1, b: number2, operation: operation)






