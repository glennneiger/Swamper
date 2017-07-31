//
//  PhotosViewController.swift
//  Swamper
//
//  Created by Lakshmi on 7/30/17.
//  Copyright © 2017 com.arunsivakumar. All rights reserved.
//

import Foundation


import UIKit
import RealmSwift


import UIKit
import RealmSwift

class PhotosViewController: UIViewController{
    
    var notes:Results<Note>!
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
    }
    
    func loadData(){
        notes = RealmHelper.fetchNotes()
    }
}

//MARK:- Table View Data Source

extension PhotosViewController: UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NotesCell", for: indexPath)  as! NotesCell
        cell.note = notes[indexPath.row]
        return cell
    }
    
}

//MARK:- Table View Delegate

extension PhotosViewController: UITableViewDelegate{
    
    
    
}

//MARK:- Navigation
extension PhotosViewController{
    
    
}