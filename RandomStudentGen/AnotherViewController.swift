//
//  AnotherViewController.swift
//  RandomStudentGen
//
//  Created by Tiger Coder on 3/22/21.
//

import UIKit

class AnotherViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
        @IBOutlet weak var TableViewOutlet: UITableView!
        var studentarray = [String]()
        var length : Int!
        var arrayclass : Int!
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return studentarray.count
        }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = TableViewOutlet.dequeueReusableCell(withIdentifier: "DaCell")!
            cell.textLabel?.text = studentarray[indexPath.row]
            return cell
        }
        override func viewDidLoad() {
            super.viewDidLoad()
            TableViewOutlet.delegate = self
            TableViewOutlet.dataSource = self
            // Do any additional setup after loading the view.
        }
    private func tableView(_ tableView: UITableViewController, commit editingstyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingstyle == .delete {
            studentarray.remove(at: indexPath.row)
            TableViewOutlet.deleteRows(at: [indexPath], with: .fade)
        }
    }
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        let nvc = unwindSegue.destination as! ViewController
        if arrayclass == 0 {
            nvc.studentsclass1 = studentarray
        }
        else if arrayclass == 1 {
            nvc.studentsclass2 = studentarray
        }
        else if arrayclass == 2 {
            nvc.studentsclass3 = studentarray
        }
        else if arrayclass == 3 {
            nvc.studentsclass4 = studentarray
        }
        else {
            nvc.studentsclass5 = studentarray
        }
    }
}
