//
//  SearchViewController.swift
//  povyvchai
//
//  Created by Yegor Heiz on 18.08.2020.
//  Copyright © 2020 Yegor Heiz. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var searchTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchTextField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let searchText = searchTextField.text, searchText.count > 1 {
            view.endEditing(true)
            return true
        } else {
            return false
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        performSegue(withIdentifier: Constants.searchResultSegue, sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let searchResult = segue.destination as! SearchResultTableViewController
        searchResult.searchText = searchTextField.text!
    }
    
}
