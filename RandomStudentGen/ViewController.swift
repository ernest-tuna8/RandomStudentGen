//
//  ViewController.swift
//  RandomStudentGen
//
//  Created by Tiger Coder on 3/9/21.
//

import UIKit

class ViewController: UIViewController {
    var groups = 2
    var count = 0
    var students = [Int:String]()
    var group1 = [Int:String]()
    var group2 = [Int:String]()
    var group3 = [Int:String]()
    var group4 = [Int:String]()
    var group5 = [Int:String]()
    var group6 = [Int:String]()
    @IBOutlet weak var UpperImage: UIImageView!
    @IBOutlet weak var LowerImage: UIImageView!
    
    @IBOutlet weak var MainTextField: UITextField!
   
    @IBOutlet weak var LabelOutlet3: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        LabelOutlet3.isHidden = true
        UpperImage.image = UIImage(named: "thecrew")
        LowerImage.image = UIImage(named: "Choose")
    }
    @IBAction func StudentAdd(_ sender: UIButton) {
        //add a student to the array
        students[count] = MainTextField.text
        count = count+1
        MainTextField.text = ""
        MainTextField.resignFirstResponder()
    }
    
    @IBAction func GenerateButton(_ sender: UIButton) {
        //randomly picking students, filing into labels
        
        let alert = UIAlertController(title: "No Students", message: "There are no students entered", preferredStyle: .alert)
        let ExitAlert = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(ExitAlert)
            let randomstudent = Int.random(in: 1...students.capacity)
        LabelOutlet3.text = "\(students[randomstudent])"
    }
    
    @IBAction func GroupAmount(_ sender: UISegmentedControl) {
        //set the amount of students per group
        let DaGroup = sender.selectedSegmentIndex
        groups = DaGroup
    }
    

}

