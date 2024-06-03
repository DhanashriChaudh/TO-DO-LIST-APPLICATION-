//
//  ViewController.swift
//  TodoList
//
//  Created by Dhanashri Chaudhari on 20/12/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var todoTableview: UITableView!
    
    var todoArray: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func navigateToAddTodoScreen(_ sender: UIBarButtonItem) {
        let vc = storyboard?.instantiateViewController(identifier:"AddTodoViewController") as! AddTodoViewController
        vc.passValueDelegate = self
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) ->
    Int {
        return todoArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
    UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = todoArray[indexPath.row]
        return cell!
    }
    
    
}

extension ViewController: PassValue{
    func addTodoInArray(title: String) {
        todoArray.append(title)
        todoTableview.reloadData()
    }
    
    
}
