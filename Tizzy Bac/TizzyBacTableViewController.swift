//
//  TizzyBacTableViewController.swift
//  Tizzy Bac
//
//  Created by Chang Sophia on 12/7/18.
//  Copyright © 2018 Chang Sophia. All rights reserved.
//

import UIKit
import SDWebImage

class TizzyBacTableViewController: UITableViewController {

 
    var songs = [Song]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let urlStr = "https://itunes.apple.com/search?term=Tizzy Bac&media=music".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed), let url = URL(string: urlStr) {
            let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
                let decorder = JSONDecoder()
                if let data = data, let songResults = try? decorder.decode(SongResults.self, from: data){
                    
                    self.songs = songResults.results
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                    }
                }
            }
            task.resume()
            
        }
    }
    
    // MARK: - Table view data source
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return songs.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "songCell", for: indexPath) as? SongTableViewCell else {
            return UITableViewCell()
        }
        let song = songs[indexPath.row]
        cell.nameLabel?.text = song.trackName
        cell.priceLabel.text = song.trackPrice?.description
        cell.songImageView.sd_setImage(with: song.artworkUrl100,placeholderImage: UIImage(named:"TB"),options:[], completed: nil)
        
        return cell
    }
    
    
}
