//
//  CafeTableViewController.swift
//  CafeWhere
//
//  Created by JillOU on 2020/8/17.
//  Copyright © 2020 Jillou. All rights reserved.
//

import UIKit

class CafeTableViewController: UITableViewController {
    var cafes = [Cafes]()
    override func viewDidLoad() {
        super.viewDidLoad()
        if let urlstring = "https://cafenomad.tw/api/v1.2/cafes".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed),
            let url = URL(string: urlstring){
            let decoder = JSONDecoder()
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                if let data = data, let caferesults = try? decoder.decode([Cafes].self, from: data){
                    self.cafes = caferesults
                    
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                    }
                }
            }.resume()
        }
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        print(cafes.count)
        return cafes.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cafeslist", for: indexPath) as! CafeTableViewCell
        let cafe = cafes[indexPath.row]
        cell.cafesnameLabel.text = cafe.name
        cell.cafesopentimeLabel.text = cafe.opentime
        cell.cafessocketLabel.text = cafe.socket
        cell.cafeslimitedtimeLabel.text = cafe.limitedtime
        cell.cafeswifiLabel.text = String(cafe.wifi)
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
