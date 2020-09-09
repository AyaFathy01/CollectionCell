//
//  ViewController.swift
//  CollectionCell
//
//  Created by Wael Moharram on 6/16/20.
//  Copyright © 2020 aya fathy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var table: UITableView!
    
    var models: [Model] = [
        Model(text: "First", image: "image_1"),
        Model(text: "Second", image: "image_1"),
        Model(text: "First", image: "image_1"),
        Model(text: "First", image: "image_1"),
        Model(text: "First", image: "image_1"),
        Model(text: "First", image: "image_1"),
        Model(text: "First", image: "image_1"),
        Model(text: "First", image: "image_1"),
        Model(text: "First", image: "image_1"),
        Model(text: "First", image: "image_1")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.register(CollectionTableViewCell.nib(), forCellReuseIdentifier: "CollectionTableViewCell")
        table.delegate = self
        table.dataSource = self
        table.reloadData()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "CollectionTableViewCell", for: indexPath) as! CollectionTableViewCell
        cell.configure(item: models)
        return cell
    }
}
