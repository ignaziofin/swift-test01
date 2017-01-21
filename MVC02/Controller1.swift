//
//  Controller1.swift
//  MVC02
//
//  Created by Ignazio Finizio on 20/01/2017.
//  Copyright © 2017 Ignazio Finizio. All rights reserved.
//

import UIKit

class Controller1: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var selectedModel = Model()
    
    @IBOutlet var ListTable: UITableView!
    
    @IBOutlet var LabelC1: UILabel!
    
    
    @IBOutlet var Segmented: UISegmentedControl!

    
    @IBAction func SegmentedChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex
        {
        case 0:
            selectedModel = Model1()
            self.ListTable.reloadData()
            LabelC1.text = selectedModel.value(0)
        case 1:
            selectedModel = Model2()
            self.ListTable.reloadData()
            LabelC1.text = selectedModel.value(0)
        default:
            break; 
        }
    }

    private func selectModel(modelIndex: Int){ //
        switch modelIndex {
        case 0:
            selectedModel = Model1()
        case 1:
            selectedModel = Model2()
        default:
            break;
        }
        ListTable.reloadData()
        LabelC1.text = selectedModel.modelName()
    }
    
    

 // MARK: - TableView

 
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        ListTable.delegate = self
        ListTable.dataSource = self
        self.ListTable.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return selectedModel.count()
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = ListTable.dequeueReusableCell(withIdentifier: "Cell")! as UITableViewCell
        cell.textLabel?.text = selectedModel.value(indexPath.row)
        
        return cell
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
