//
//  Models.swift
//  Lesson-9-class
//
//  Created by Aleksandr Moroshovskyi on 18.03.2024.
//

import Foundation

class ClassA {
    
    var kilometers: Int = 0 {
        
        willSet {
            print("kilometers will be change to \(newValue)")
        }
        
        didSet {
            print("kilometers did change to \(kilometers), olv value: \(oldValue)")
        }
    }
    
    var meters: Int {
        
        get {
            return kilometers * 1000
        }
        
        set {
            kilometers = newValue / 1000
        }
    }
}


class MyBaseClass {

    func doSomething() {
        print("MyBaseClass -> doSomething")
    }
    
    func doAnotherAction() -> String {
        return "MyBaseClass"
    }
}

class MyClassA: MyBaseClass {
    
    override func doSomething() {
        super.doSomething()
        
        print("MyClassA -> doSomething")
    }
    
    override func doAnotherAction() -> String {
        var result = super.doAnotherAction()
        result += " MyClassA -> doAnotherAction"
        
        return result
    }
}

class MyClassB: MyClassA {
    
    override func doAnotherAction() -> String {
        //var result = super.doAnotherAction()
        let result = ", MyClassB -> doAnotherAction"
        
        return result
    }
}

class myClassC: MyBaseClass {
    
}
