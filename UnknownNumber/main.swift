//
//  main.swift
//  UnknownNumber
//
//  Created by Alexander Verner on 22.06.2020.
//  Copyright © 2020 AlexanderVerner. All rights reserved.
//

import Foundation
//Declaring a dictionary for storing messages
let message = [
    "start":"Write number: ",
    "select":"Computer selected random number. How this number?",
    "more":"Number is greater than guessed number!",
    "less":"Number is less than guessed number!",
    "win":"Wow! You guessed an unknown number!",
    "try":"Try Again? Write 'y' for new game or any key for quit from game.",
]
//Declaring a boolean variable, that will flag for starting new round or closing the game
var playRound: Bool = true
repeat {
    print(message["select"]!)
    let randomNumber = String(arc4random_uniform(10))
    var number : String = ""
    repeat {
        print(message["start"]!)
        let myNumber = readLine()
        number = myNumber ?? ""
        if number < randomNumber {
            print(message["less"]!)
        } else if number > randomNumber{
            print(message["more"]!)
        }
    } while number != randomNumber
    print(message["win"]!)
    print(message["try"]!)
    let restart = readLine()
    if restart == "y"{
        playRound = true
    } else { playRound = false }
} while playRound == true

