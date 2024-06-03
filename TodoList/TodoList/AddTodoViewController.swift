//
//  AddTodoViewController.swift
//  TodoList
//
//  Created by Dhanashri Chaudhari on 20/12/23.
//

import UIKit

protocol PassValue {
    func addTodoInArray(title: String)
}

class AddTodoViewController: UIViewController {

    @IBOutlet weak var todoTF: UITextField!
    
    var passValueDelegate: PassValue!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

    @IBAction func saveTodo(_ sender: UIButton) {
        passValueDelegate.addTodoInArray(title: todoTF.text!)
        navigationController?.popViewController(animated: true)
    }
    

}
