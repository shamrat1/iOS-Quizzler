//
//  File.swift
//  Quizzler-iOS13
//
//  Created by Leads Computer on 12/5/19.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

class QuestionBank {
    var list = [Questions]()
    
    init() {
        list.append(Questions(question: "Approximately one quarter of human bones are in the feet.", answer: true))
        list.append(Questions(question: "A slug's blood is green.", answer: true))
        list.append(Questions(question:"The total surface area of two human lungs is approximately 70 square metres.", answer:true))
        list.append(Questions(question:"In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", answer: true))
        list.append(Questions(question:"In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", answer: false))
        list.append(Questions(question: "It is illegal to pee in the Ocean in Portugal.", answer: true))
        list.append(Questions(question: "You can lead a cow down stairs but not up stairs.", answer: false))
        list.append(Questions(question: "Google was originally called 'Backrub'.", answer: true))
        list.append(Questions(question: "Buzz Aldrin's mother's maiden name was 'Moon'.", answer: true))
        list.append(Questions(question: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", answer: true))
        list.append(Questions(question: "No piece of square dry paper can be folded in half more than 7 times.", answer: false))
        list.append(Questions(question: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", answer: true))
    }
}
