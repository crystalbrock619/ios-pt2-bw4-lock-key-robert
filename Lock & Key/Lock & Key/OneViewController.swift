//
//  1ViewController.swift
//  Lock & Key
//
//  Created by Bobby Keffury on 2/28/20.
//  Copyright © 2020 Bobby Keffury. All rights reserved.
//

import UIKit

class OneViewController: UIViewController {

    //MARK: - Properties
    
    //MARK: - Outlets
    
    @IBOutlet weak var startTextView: UITextView!
    @IBOutlet weak var level1Button: UIButton!
    @IBOutlet weak var keysButton: UIButton!
    
    //MARK: - Views
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Methods
    
    //MARK: - Actions
    
    @IBAction func topMiddleButtonTapped(_ sender: Any) {
    }
    
    @IBAction func bottomRightButtonTapped(_ sender: Any) {
    }
    
    @IBAction func topRightButtonTapped(_ sender: Any) {
    }
    
    @IBAction func bottomLeftButtonTapped(_ sender: Any) {
    }
    
    @IBAction func homeButtonTapped(_ sender: Any) {
    }
    
    //MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }

}
