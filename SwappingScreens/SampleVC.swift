//
//  SampleVC.swift
//  SwappingScreens
//
//  Created by Rohan Thomas on 2016-10-16.
//  Copyright © 2016 Rohan Thomas. All rights reserved.
//

import UIKit

class SampleVC: UIViewController {

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

    @IBAction func rohanBtnPressed(_ sender: AnyObject) {
        let stringTitle = "You did it!!"
        performSegue(withIdentifier: "RohanVC", sender: stringTitle)

    }

    
    
    @IBOutlet weak var stringTitleLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stringTitleLbl.text = _selectedString
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as?
            RohanVC{
            if let mystring = sender as? String {
                destination.selectedString = mystring
            }
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
}
