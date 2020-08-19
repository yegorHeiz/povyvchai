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
    var poems: [Poem] = [
        Poem(author: "Сергей Есенин", poem: "Ты меня не любишь, не жалеешь", text: "Random Text 1"),
        Poem(author: "Сергей Есенин", poem: "Письмо к женщине", text: "Random Text 2")
    ]
    var selectedPoem: Poem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // TODO: Retrieve data from API based on searchText
    }
    
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
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedPoem = poems[indexPath.row]
        performSegue(withIdentifier: Constants.poemSegue, sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let poemViewController = segue.destination as! PoemViewController
        poemViewController.poem = selectedPoem!
    }
}
