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
    
    @IBOutlet weak var MainTextField: UITextField!
    @IBOutlet weak var LabelOutlet1: UILabel!
    @IBOutlet weak var LabelOutlet2: UILabel!
    @IBOutlet weak var LabelOutlet3: UILabel!
    @IBOutlet weak var LabelOutlet4: UILabel!
    @IBOutlet weak var LabelOutlet5: UILabel!
    @IBOutlet weak var LabelOutlet6: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        LabelOutlet1.isHidden = true
        LabelOutlet2.isHidden = true
        LabelOutlet3.isHidden = true
        LabelOutlet4.isHidden = true
        LabelOutlet5.isHidden = true
        LabelOutlet6.isHidden = true
    }
    @IBAction func StudentAdd(_ sender: UIButton) {
        //add a student to the array
        students[count] = MainTextField.text
        count = count+1
    }
    @IBAction func GenerateButton(_ sender: UIButton) {
        //randomly picking students, filing into labels
        var count2 = 0
        var count3 = 0
        var count4 = 0
        var count5 = 0
        var count6 = 0
        var count7 = 0
        let alert = UIAlertController(title: "No Students", message: "There are no students entered", preferredStyle: .alert)
        let ExitAlert = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(ExitAlert)
        for finder in students {
            let randomgroup = Int.random(in: 1...groups)
            if randomgroup == 1 {
                group1[count2] = finder.value
                count2 = count2 + 1
            }
            else if randomgroup == 2 {
                group2[count3] = finder.value
                count3 = count3 + 1
            }
            else if randomgroup == 3 {
                group3[count4] = finder.value
                count4 = count4 + 1
            }
            else if randomgroup == 4 {
                group4[count5] = finder.value
                count5 = count5 + 1
            }
            else if randomgroup == 5 {
                group5[count6] = finder.value
                count6 = count6 + 1
            }
            else {
                group6[count7] = finder.value
                count7 = count6 + 1
            }
            LabelOutlet1.isHidden = false
            LabelOutlet2.isHidden = false
            if group3 != nil {
                LabelOutlet3.isHidden = false
                var count8 = 0
                while couunt8 < group3.count {
                    <#code#>
                }
            }
            if group4 != nil {
                LabelOutlet4.isHidden = false
            }
            if group5 != nil {
                LabelOutlet5.isHidden = false
            }
            if group6 != nil {
                LabelOutlet6.isHidden = false
            }
            
        }
        
    }
    @IBAction func GroupAmount(_ sender: UISegmentedControl) {
        //set the amount of students per group
        let DaGroup = sender.selectedSegmentIndex
        groups = DaGroup
    }
    

}

