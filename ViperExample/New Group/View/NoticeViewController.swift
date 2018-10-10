//
//  ViewController.swift
//  ViperExample
//
//  Created by Miguel Mexicano Herrera on 08/10/18.
//  Copyright © 2018 Miguel Mexicano Herrera. All rights reserved.
//

import UIKit

class NoticeViewController: UIViewController {
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



class NoticeCell: UITableViewCell {
    @IBOutlet weak var id: UILabel!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var brief: UILabel!
    @IBOutlet weak var file_source: UILabel!
    
    
}

