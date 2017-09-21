//
//  TeaViewController.swift
//  BREWBABU XCODE
//
//  Created by LAW on 30/08/2017.
//  Copyright © 2017 LAW. All rights reserved.
//

import UIKit

class TeaViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    var teaCategories = [TeaCategoryArray]()
    var label0text = "BREW BLACK"
    var label1text = "BREW GREEN"
    var label2text = "BREW WHITE"
    var label3text = "BREW HERBAL"
    var label4text = "BREW ICE"
    var label5text = "WELLNESS RANGE"
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var howDoYouBrewTextField: UITextField!
    @IBOutlet weak var teaTitle: UITextField!
    
    func characterSpacingTeaTitle() {
        
        let attributedString = NSMutableAttributedString(string: teaTitle.text!)
        attributedString.addAttribute(NSKernAttributeName, value: 5.0, range: NSRange(location: 0, length: attributedString.length - 1))
        teaTitle.attributedText = attributedString
    }
    
    func characterSpacingHowDoYouBrew() {
        
        let attributedString = NSMutableAttributedString(string: howDoYouBrewTextField.text!)
        attributedString.addAttribute(NSKernAttributeName, value: 4.3, range: NSRange(location: 0, length: attributedString.length - 1))
        howDoYouBrewTextField.attributedText = attributedString
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        characterSpacingHowDoYouBrew()
        characterSpacingTeaTitle()
        
        let t1 = TeaCategoryArray(teaCategoryLabel: "BREW BLACK")
        let t2 = TeaCategoryArray(teaCategoryLabel: "BREW GREEN")
        let t3 = TeaCategoryArray(teaCategoryLabel: "BREW WHITE")
        let t4 = TeaCategoryArray(teaCategoryLabel: "BREW HERBAL")
        let t5 = TeaCategoryArray(teaCategoryLabel: "BREW ICE")
        let t6 = TeaCategoryArray(teaCategoryLabel: "WELLNESS RANGE")
        
        teaCategories.append(t1)
        teaCategories.append(t2)
        teaCategories.append(t3)
        teaCategories.append(t4)
        teaCategories.append(t5)
        teaCategories.append(t6)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "101", for: indexPath) as? TeaCategoryCell {
            
            let teaCategory = teaCategories[indexPath.row]
            
            cell.updateUI(teaCategory: teaCategory)
            
            return cell
        } else {
        return UITableViewCell()
        }
    }
    
}
