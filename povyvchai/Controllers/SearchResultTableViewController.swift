//
//  SearchResultTableViewController.swift
//  povyvchai
//
//  Created by Yegor Heiz on 18.08.2020.
//  Copyright © 2020 Yegor Heiz. All rights reserved.
//

import UIKit

class SearchResultTableViewController: UITableViewController {
    
    var searchText: String!
    var poems: [SearchResult] = [
        SearchResult(author: "Сергей Есенин", poem: "Ты меня не любишь, не жалеешь"),
        SearchResult(author: "Сергей Есенин", poem: "Письмо к женщине")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // TODO: Retrieve data from API based on searchText
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return poems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        cell.textLabel?.text = poems[indexPath.row].poem
        cell.detailTextLabel?.text = poems[indexPath.row].author
        
        return cell
    }
}
