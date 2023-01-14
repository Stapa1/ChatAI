//
//  ViewController.swift
//  ChatAI
//
//  Created by Vishnu vardhan on 14/12/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    
    private let field: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Type here..."
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .red
        return textField
    }()
    
    private var models = [String]()
    
    private let table : UITableView = {
        
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        super.viewDidLoad()
        view.addSubview(field)
        view.addSubview(table)
        table.delegate = self
        table.dataSource = self
        NSLayoutConstraint.activate([
            
            field.heightAnchor.constraint(equalToConstant: 50),
            field.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 10),
            field.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -10),
            field.bottomAnchor.constraint(equalTo: view.keyboardLayoutGuide.topAnchor),
            
            table.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            table.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            table.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            table.bottomAnchor.constraint(equalTo: field.topAnchor)
    
        ])
        
   
        
        
        }
    //tableview
    
        func tableview(_ tableView: UITableView, numberOfRowsInSection section: Int)->{
                return models.count
        
        }
    
        func tableview(_ tableView: UITableView, numberOfRowsInSection section: Int)->{
           
        }
        
    


}

