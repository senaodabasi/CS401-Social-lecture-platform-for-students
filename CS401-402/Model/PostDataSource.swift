//
//  PostDataSource.swift
//  CS401-402
//
//  Created by Adem Tunay Saka on 14/11/2017.
//  Copyright © 2017 atunaysaka. All rights reserved.
//

import Foundation

class PostDataSource : NSObject {
    var postArray : [Post] = []
    
    override init () {
        super.init()
        
        let post1 = Post(courseName:"Automata Theorem",
                         questionTitle:"NFA to DFA",
                         questionText: "How to convert a non-deterministic finite automata to a deterministic finite automata? How to convert a non-deterministic finite automata to a deterministic finite automata? How to convert a non-deterministic finite automata to a deterministic finite automata? How to convert a non-deterministic finite automata to a deterministic finite automata? How to convert a non-deterministic finite automata to a deterministic finite automata? ",
                         username: "atunaysaka")
        let post2 = Post(courseName: "Functional Programming",
                         questionTitle: "Usage of MatchWith in Ocaml",
                         questionText: "Can anyone please explain how to use match with in Ocaml?",
                         username: "senaodabasi")
        let post3 = Post(courseName: "Dark Magic",
                         questionTitle: "Patronus Spell",
                         questionText: "How to cast the spell 'Expecto Patronum' to kill a dementor?",
                         username: "harrypotter")
        let post4 = Post(courseName: "Xavier Institute of Higher Learning",
                         questionTitle: "Mutants",
                         questionText: "How to make Wolverine mortal?",
                         username: "magneto")
        
        postArray.append(post1)
        postArray.append(post2)
        postArray.append(post3)
        postArray.append(post4)
    }
}
