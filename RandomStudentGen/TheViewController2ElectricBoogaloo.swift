//
//  TheViewController2ElectricBoogaloo.swift
//  RandomStudentGen
//
//  Created by Tiger Coder on 3/21/21.
//

import UIKit

class TheViewController2ElectricBoogaloo: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var TableViewOutlet: UITableView!
    var studentarray = [String]()
    var length : Int!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return length
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TableViewOutlet.dequeueReusableCell(withIdentifier: "Dacell")!
        for studentname in studentarray {
            cell.textLabel?.text = studentname
        }
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TableViewOutlet.delegate = self
        TableViewOutlet.dataSource = self

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
