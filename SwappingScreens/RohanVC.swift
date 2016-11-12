//
//  RohanVC.swift
//  SwappingScreens
//
//  Created by Rohan Thomas on 2016-10-16.
//  Copyright © 2016 Rohan Thomas. All rights reserved.
//

import UIKit

class RohanVC: UIViewController {
    
    private var _selectedString:String!
    
    var selectedString: String {
        get{
            return _selectedString
        } set {
            _selectedString = newValue
        }
    }
    @IBAction func BackBtnPressed(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }

    @IBOutlet weak var stringlabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.orange
        stringlabel.text = _selectedString
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
