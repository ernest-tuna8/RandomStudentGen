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
    var badcount: Int!
    var students = [String]()
    var students2 = [String]()
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
        let alert = UIAlertController(title: "Nothing entered", message: "There are no names entered in the text field", preferredStyle: .alert)
        let ExitAlert = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(ExitAlert)
        if MainTextField.text == "" {
            self.present(alert, animated: true)
        }
        students[count] = MainTextField.text!
        students2[count] = MainTextField.text!
        count = count+1
        badcount = count-1
        MainTextField.text = ""
        MainTextField.resignFirstResponder()
    }
    
    @IBAction func GenerateButton(_ sender: UIButton) {
        //randomly picking students, filing into labels
        
        let alert = UIAlertController(title: "No Students", message: "There are no students entered", preferredStyle: .alert)
        let ExitAlert = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(ExitAlert)
        if count == 0 || badcount == -1 {
            self.present(alert, animated: true)
        }
        else {
            badcount = badcount-1
            let randomstudent = Int.random(in: 0...count-1)
        LabelOutlet3.isHidden = false
        LabelOutlet3.text = "\(String(describing: students[randomstudent]))"
            students.remove(at : randomstudent)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! TheViewController2ElectricBoogaloo
        nvc.length = count
        print(count)
        nvc.studentarray = students
    }
    
    @IBAction func Refresh(_ sender: UIButton) {
        students = students2
    }
}

