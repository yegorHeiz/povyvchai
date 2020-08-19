//
//  PoemViewController.swift
//  povyvchai
//
//  Created by Yegor Heiz on 19.08.2020.
//  Copyright © 2020 Yegor Heiz. All rights reserved.
//

import UIKit

class PoemViewController: UIViewController {
    @IBOutlet weak var poemTitle: UILabel!
    @IBOutlet weak var poemAuthor: UILabel!
    @IBOutlet weak var poemText: UITextView!
    
    var poem: Poem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
    }
    
    func updateUI() {
        poemAuthor.text = poem!.author
        poemTitle.text = poem!.poem
        poemText.text = poem!.text
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
