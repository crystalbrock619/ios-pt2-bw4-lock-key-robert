//
//  2ViewController.swift
//  Lock & Key
//
//  Created by Bobby Keffury on 2/28/20.
//  Copyright © 2020 Bobby Keffury. All rights reserved.
//

import UIKit

class TwoViewController: UIViewController {

    //MARK: - Properties
    
    //MARK: - Outlets
    
    @IBOutlet weak var level2Button: UIButton!
    @IBOutlet weak var topMiddleSwipeView: UIView!
    @IBOutlet weak var centerMiddleSwipeView: UIView!
    @IBOutlet weak var middleLeftSwipeView: UIView!
    @IBOutlet weak var middleRightSwipeView: UIView!
    @IBOutlet weak var bottomMiddleSwipeView: UIView!
    
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var keysButton: UIButton!
    
    //MARK: - Views
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Methods
    
    //MARK: - Actions
    
    @IBAction func homeButtonTapped(_ sender: Any) {
    }
    
    @IBAction func level2ButtonTapped(_ sender: Any) {
    }
    
    //MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }

}