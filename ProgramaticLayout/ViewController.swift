//
//  ViewController.swift
//  ProgramaticLayout
//
//  Created by apple on 01/06/23.
//

import UIKit

class ViewController: UIViewController {
    
    var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpTableView()
    }
    
    func setUpTableView() {
        tableView = UITableView()
        
        tableView.backgroundColor = .red
//        tableView.fill(superview: view)
//        tableView.anchor(superview: view, top: view.safeAreaLayoutGuide.topAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, trailing: view.safeAreaLayoutGuide.trailingAnchor)
    }

}

