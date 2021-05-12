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
    var count2 = 0
    var count3 = 0
    var count4 = 0
    var count5 = 0
    var clicked = -1
    var clicked2 = -1
    var clicked3 = -1
    var clicked4 = -1
    var clicked5 = -1
    var studentclass: Int = 0
    var backupstudents1 = [String]()
    var backupstudents2 = [String]()
    var backupstudents3 = [String]()
    var backupstudents4 = [String]()
    var backupstudents5 = [String]()
    var studentsclass1 = [String]()
    var studentsclass2 = [String]()
    var studentsclass3 = [String]()
    var studentsclass4 = [String]()
    var studentsclass5 = [String]()
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
        if studentclass == 0 {
            studentsclass1.append(MainTextField.text!)
            backupstudents1.append(MainTextField.text!)
            count = count+1
        }
        else if studentclass == 1 {
            studentsclass2.append(MainTextField.text!)
            backupstudents2.append(MainTextField.text!)
            count2 = count2+1
        }
        else if studentclass == 2 {
            studentsclass3.append(MainTextField.text!)
            backupstudents3.append(MainTextField.text!)
            count3 = count3+1
        }
        else if studentclass == 3 {
            studentsclass4.append(MainTextField.text!)
            backupstudents4.append(MainTextField.text!)
            count4 = count4+1
        }
        else if studentclass == 4 {
            studentsclass5.append(MainTextField.text!)
            backupstudents5.append(MainTextField.text!)
            count5 = count5+1
        }
        MainTextField.text = ""
        MainTextField.resignFirstResponder()
        clicked = clicked+1
    }
    @IBAction func SegmentController2ElectricBoogaloo(_ sender: UISegmentedControl) {
        studentclass = sender.selectedSegmentIndex
    }
    @IBAction func GenerateButton(_ sender: UIButton) {
        //randomly picking students, filing into labels
        count = studentsclass1.count
        let alert = UIAlertController(title: "No Students", message: "There are no students entered", preferredStyle: .alert)
        let ExitAlert = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(ExitAlert)
        if studentclass == 0 {
            if count == 0 || clicked == studentsclass1.count+1 {
                self.present(alert, animated: true)
        }
            else {
                let randomstudent = Int.random(in: 0...count-1)
                LabelOutlet3.isHidden = false
                LabelOutlet3.text = "\(String(describing: studentsclass1[randomstudent]))"
                studentsclass1.remove(at : randomstudent)
            }
        }
        else if studentclass == 1 {
            if studentsclass2.count == 0 || clicked2 == studentsclass2.count+1 {
                self.present(alert, animated: true)
            }
            else {
                let randomstudent = Int.random(in: 0...studentsclass2.count-1)
                LabelOutlet3.isHidden = false
                LabelOutlet3.text = "\(String(describing: studentsclass2[randomstudent]))"
                studentsclass2.remove(at: randomstudent)
            }
        }
        else if studentclass == 2 {
            if count3 == 0 || clicked3 == studentsclass3.count+1 {
                self.present(alert, animated: true)
            }
            else {
                let randomstudent = Int.random(in: 0...studentsclass3.count-1)
                LabelOutlet3.isHidden = false
                LabelOutlet3.text = "\(String(describing: studentsclass3[randomstudent]))"
                clicked3 = clicked3 + 1
                studentsclass3.remove(at: randomstudent)
            }
        }
        else if studentclass == 3 {
            if count4 == 0 || clicked4 == studentsclass4.count+1 {
                self.present(alert, animated: true)
            }
            else {
                let randomstudent = Int.random(in: 0...studentsclass4.count-1)
                LabelOutlet3.isHidden = false
                LabelOutlet3.text = "\(String(describing: studentsclass4[randomstudent]))"
                studentsclass4.remove(at: randomstudent)
            }
        }
        else if studentclass == 4 {
            if count5 == 0 || clicked == studentsclass4.count+1 {
                self.present(alert,animated: true)
            }
            else {
                let randomstudent = Int.random(in: 0...studentsclass5.count-1)
                LabelOutlet3.isHidden = false
                LabelOutlet3.text = "\(String(describing: studentsclass5[randomstudent]))"
                studentsclass5.remove(at: randomstudent)
            }
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! AnotherViewController
        if (studentclass == 0) {
        nvc.studentarray = studentsclass1
            nvc.length = studentsclass1.capacity
        }
        else if (studentclass == 1) {
            nvc.studentarray = studentsclass2
            nvc.length = studentsclass2.capacity
        }
        else if (studentclass == 2) {
            nvc.studentarray = studentsclass3
            nvc.length = studentsclass3.capacity
        }
        else if (studentclass == 3) {
            nvc.studentarray = studentsclass4
            nvc.length = studentsclass4.capacity
        }
        else {
            nvc.studentarray = studentsclass5
            nvc.length = studentsclass5.capacity
        }
        nvc.arrayclass = studentclass
    }
    @IBAction func Refresh(_ sender: UIButton) {
        if studentclass == 0 {
            studentsclass1 = backupstudents1
            clicked = -1
        }
        else if studentclass == 1 {
            studentsclass2 = backupstudents2
            clicked2 = -1
        }
        else if studentclass == 2 {
            studentsclass3 = backupstudents3
            clicked3 = -1
        }
        else if studentclass == 3 {
            studentsclass4 = backupstudents4
            clicked4 = -1
        }
        else {
            studentsclass5 = backupstudents5
            clicked = -1
        }
    }
    @IBAction func RefreshAllButton(_ sender: UIButton) {
        studentsclass1 = backupstudents1
        studentsclass2 = backupstudents2
        studentsclass3 = backupstudents3
        studentsclass4 = backupstudents4
        studentsclass5 = backupstudents5
        clicked = -1
        clicked2 = -1
        clicked3 = -1
        clicked4 = -1
        clicked5 = -1
    }
}
//why advanced mobile apps is the best class at Crystal Lake Central
    //Great Teacher
    //Great content
    //freedom
    //Mr. Seaver is the best
    //Fun
    //
