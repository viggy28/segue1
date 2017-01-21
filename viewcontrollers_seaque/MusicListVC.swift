//
//  MusicListVC.swift
//  viewcontrollers_seaque
//
//  Created by Vignesh Ravichandran on 1/20/17.
//  Copyright © 2017 Vignesh Ravichandran. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.blue
    }
    
    @IBAction func BackbtnPressed(_ sender: Any) {
        dismiss(animated: true) {
            
        }
        
    }

    @IBAction func load3rdscreenbtnpressed(_ sender: Any) {
        let song_title = "Oh baby pull me closer"
        performSegue(withIdentifier: "SongVC", sender: song_title)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination_vc = segue.destination as? PlaySongVC {
            if let song = sender as? String
            {
                destination_vc.selectedsong = song
            }
           
            
        }
    }
    
    
   }
