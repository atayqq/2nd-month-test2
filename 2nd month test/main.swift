//
//  main.swift
//  2nd month test
//
//  Created by atay on 1/3/23.
//

import Foundation

//Составить игру крестики и нолики используя инструменты ООП и инструменты программирования. Создать класс Game подписать на протокол Menu c функцией startGame(), endGame(). Как реализовать логику. Создайте 3 массива и принтуйте постоянно. К массивам у вас есть доступ к индексам. Получается указываете столбец и строку куда нужно поставить символ X и О. Игра идет до победы либо до конца возможных ходов.

var line1: [String] =
[" ", " ", " "]

var line2: [String] =
[" ", " ", " "]

var line3: [String] =
[" ", " ", " "]


for i in 1...9 {
    print("Выберите поле")
    let game = readLine()!
    var symbol = ""
    var index = 0
    
    if ((game.last?.isNumber) != nil) {
        index = Int(String(game.last! )) ?? 0
    }
    
    if i % 2 != 0 {
        symbol = "X"
    } else {
        symbol = "O"
    }
    
    if game.first == "1" {
        
        line1[index - 1] = symbol
    } else if game.first == "2" {
        line2[index - 1] = symbol
    } else if game.first == "3" {
        line3[index - 1] = symbol
    }
    
    print(line1)
    print(line2)
    print(line3)
}
