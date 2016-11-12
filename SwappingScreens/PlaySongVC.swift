//
//  PlaySongVC.swift
//  SwappingScreens
//
//  Created by Rohan Thomas on 2016-10-02.
//  Copyright © 2016 Rohan Thomas. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {

    
    private var _selectedSong:String!
    
    var selectedSong: String {
        get{
            return _selectedSong
        } set {
            _selectedSong = newValue
        }
    }

    @IBAction func BackBtnPressed(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }

    

    @IBOutlet weak var SongTitleLbl: UILabel!

    @IBAction func ForwardBtnPressed(_ sender: AnyObject) {
        let stringTitle = "Created by RT"
        performSegue(withIdentifier: "SampleVC", sender: stringTitle)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        SongTitleLbl.text = _selectedSong!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as?
            SampleVC{
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
