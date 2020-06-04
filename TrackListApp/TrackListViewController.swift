//
//  TrackListViewController.swift
//  TrackListApp
//
//  Created by Павел on 04.06.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

class TrackListViewController: UITableViewController {

    let trackList = [
    "Dave Wincent - Red Eye (Original Mix)",
    "E-Spectro - End Station (Original Mix)",
    "John Baptiste - Mycelium (Original Mix)",
    "Lane 8 - Fingerprint (Original Mix)",
    "Veerus, Maxie Devine - Nightmare (Original Mix)"
    ]
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return trackList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TrackName", for: indexPath)

        cell.textLabel?.text = trackList[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        cell.imageView?.image = UIImage(named: trackList[indexPath.row])

        return cell
    }

 // MARK: - Table view deligate

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
