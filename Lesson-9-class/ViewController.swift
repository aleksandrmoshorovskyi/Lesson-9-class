//
//  ViewController.swift
//  Lesson-9-class
//
//  Created by Aleksandr Moroshovskyi on 18.03.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func doSomething(_ sender: Any) {
    
        let classA = ClassA()
        
        classA.meters = 12000
        //classA.kilometers = 5
        print(classA.meters)
        print(classA.kilometers)
    }
    
    @IBAction func doSomething2(_ sender: Any) {
    
        let myBaseClass = MyBaseClass()
        myBaseClass.doSomething()
        
        let myClassA = MyClassA()
        myClassA.doSomething()
    }
    
    @IBAction func doSomething3(_ sender: Any) {
        let myClassA = MyClassA()
        print("\(myClassA.doAnotherAction())")
        
        let myClassB = MyClassB()
        print("\(myClassB.doAnotherAction())")
    }
    
    @IBAction func doSomething4(_ sender: Any) {
        
        let myClassA = MyClassA()
        let myClassB = MyClassB()
        
        let array: [MyBaseClass] = [myClassA, myClassB]
        array.forEach { $0.doSomething() }
        
        print("result")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
