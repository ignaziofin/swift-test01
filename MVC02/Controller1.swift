//
//  Controller1.swift
//  MVC02
//
//  Created by Ignazio Finizio on 20/01/2017.
//  Copyright © 2017 Ignazio Finizio. All rights reserved.
//

import UIKit

class Controller1: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var selectedModel = WishList()
    
    @IBOutlet var ListTable: UITableView!
    
    @IBOutlet var ControllerSegment: UISegmentedControl!
    
    @IBOutlet var ViewSegment: UISegmentedControl!
    
    
    @IBOutlet var ModelSegment: UISegmentedControl!

    
    @IBAction func ControllerChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex==1 {
            if ViewSegment.selectedSegmentIndex == 0 {
                performSegue(withIdentifier: "C1V1toC2V1", sender: self)
            } else{
                performSegue(withIdentifier: "C1V2toC2V2", sender: self)
            }
        }
    }

    @IBAction func modelChanged(_ sender: UISegmentedControl) {
          selectModel(modelIndex: sender.selectedSegmentIndex)
    }
    
    
    @IBAction func ViewChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex==1 {
            performSegue(withIdentifier: "C1V1toC1V2", sender: self)
        } else {
            performSegue(withIdentifier: "C1V2toC1V1", sender: self)
        }
    }
    
    private func selectModel(modelIndex: Int){
        switch modelIndex {
        case 0:
            selectedModel = WishList1()
            selectedIndexModel = modelIndex
            ModelSegment.selectedSegmentIndex = modelIndex
        case 1:
            selectedModel = WishList2()
            selectedIndexModel = modelIndex
            ModelSegment.selectedSegmentIndex = modelIndex
        default:
            break;
        }
        ListTable.reloadData()
    }
    

 // MARK: - TableView

 
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        ListTable.delegate = self
        ListTable.dataSource = self
        
        selectModel(modelIndex: selectedIndexModel)
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
        cell.textLabel?.text = selectedModel.name(indexPath.row)
        cell.detailTextLabel?.text = String(selectedModel.ext1(indexPath.row))
        cell.imageView?.image = UIImage(named: selectedModel.thumbnail(indexPath.row))
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
