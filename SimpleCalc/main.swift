//
//  main.swift
//  SimpleCalc
//
//  Created by Andrew Kan on 10/6/16.
//  Copyright © 2016 Andrew Kan. All rights reserved.
//

import Foundation

var first : UInt = 0
var second = 0
var array : [String] = []
var finished = false;
var operand = false;

print("Simple Calculator, Enter Values: ")

func checkInput() -> String{
    return readLine(strippingNewline: true)!
}

var firstInput = checkInput()
array.append(firstInput)

var secondInput = checkInput()

switch secondInput {
case "+", "-", "*", "/", "%":
    var num = UInt.init(firstInput)!
    first = num;
    operand = true;
case "count":
    print(array.count)
    finished = true
case "avg":
    print(firstInput)
    finished = true
case "fact":
    var fact : Int = 1;
    var input1 = Int.init(firstInput)!
    
    if input1 > 0 {
        for index in 1 ... input1 {
            fact *= index
        }
    }
    if input1 == 0 {
        fact = 1
    }
    
    if input1 < 0 {
        fact = -1
        print("No negative factorials, or -1 will be printed")
    }
    finished = true
    print(fact)
default:
    array.append(secondInput)
}

if operand {
    var num2 = checkInput()
    var int2 = UInt.init(num2)!
    switch secondInput {
    case "+":
        print(first + int2)
        finished = true
    case "-":
        print(first - int2)
        finished = true
    case "*":
        print(first * int2)
        finished = true
    case "/":
        print(first / int2)
        finished = true
    case "%":
        print(first % int2)
        finished = true
    default:
        print("Something went wrong")
    }
}

while !finished {
    var nextInput = checkInput()
    switch nextInput {
    case "count":
        print(array.count)
        finished = true;
    case "avg":
        var sum: Double = 0
        for number in array {
            var num2 = Double.init(number)!
            sum += num2
        }
        print(sum / Double(array.count))
        finished = true;
    case "fact":
        print("Only one number can be entered for factorial")
        finished = true;
    default:
        array.append(nextInput)
    }
}



















