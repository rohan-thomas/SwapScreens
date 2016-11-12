//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by Rohan Thomas on 2016-10-02.
//  Copyright © 2016 Rohan Thomas. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.red
        
        
    }

    @IBAction func BackBtnPressed(_ sender: AnyObject) {dismiss(animated: true, completion: nil)
    
    }


/*
    @IBAction func BackBtnPressed(_ sender: AnyObject) {dismiss(animated: true, completion: nil)
    }
    
*/
    @IBAction func Load3rdScreenPressed(_ sender: AnyObject) {
        let songTitle = "Oh Canada!"
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as?
            PlaySongVC{
            if let song = sender as? String {
                destination.selectedSong = song
            }
        }
        
        
    }

}
