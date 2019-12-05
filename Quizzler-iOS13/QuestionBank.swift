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
        list.append(Questions(question: "2 + 2 = 2", answer: false))
        list.append(Questions(question: "A slug's blood is green.", answer: true))
    }
}
