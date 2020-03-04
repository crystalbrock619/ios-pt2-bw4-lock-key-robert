//
//  4ViewController.swift
//  Lock & Key
//
//  Created by Bobby Keffury on 2/28/20.
//  Copyright © 2020 Bobby Keffury. All rights reserved.
//

import UIKit

class FourViewController: UIViewController {

    //MARK: - Properties
    
    let sharedController = SharedController()
    
    //MARK: - Outlets
    
    @IBOutlet weak var level4Button: UIButton!
    @IBOutlet weak var keysButton: UIButton!
    
    @IBOutlet weak var topLeftButton: UIButton!
    @IBOutlet weak var topRightButton: UIButton!
    
    @IBOutlet weak var bottomLeftHoldView: UIView!
    @IBOutlet weak var bottomRightHoldView: UIView!
    @IBOutlet weak var swipeView: UIView!
    
    @IBOutlet var bottomLeftHoldRecognizer: UILongPressGestureRecognizer!
    @IBOutlet var bottomRightHoldRecognizer: UILongPressGestureRecognizer!
    @IBOutlet var swipeRightRecognizer: UISwipeGestureRecognizer!
    
    //MARK: - Views
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIApplication.shared.isIdleTimerDisabled = true
        self.view.alpha = 0
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        sharedController.fadeViewIn(view: self.view)
        bordersOn()
    }
    
    //MARK: - Methods
    
    private func bordersOn() {
        sharedController.setupButtonBorders(for: topLeftButton)
        sharedController.setupButtonBorders(for: topRightButton)
        
        sharedController.setUpHoldViewBorders(for: bottomLeftHoldView)
        sharedController.setUpHoldViewBorders(for: bottomRightHoldView)
        
        sharedController.setupSwipeViewBorders(for: swipeView)
    }
    
    //MARK: - Actions
    
    @IBAction func level4ButtonTapped(_ sender: Any) {
        sharedController.addRiddleAlert(riddle: "", answer: "", clue: "Tap Square", viewController: self, button: topLeftButton, gesture: nil, view: nil, segue: "openingSegue")
    }
    
    @IBAction func topLeftButtonTapped(_ sender: Any) {
        sharedController.shadowOff(for: topLeftButton, or: nil)
        sharedController.fadeKeysIn(for: keysButton)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0, execute: {
            self.sharedController.addRiddleAlert(riddle: "", answer: "", clue: "Tap Square", viewController: self, button: self.topRightButton, gesture: nil, view: nil, segue: "openingSegue")
        })
    }
    
    @IBAction func topRightButtonTapped(_ sender: Any) {
        sharedController.shadowOff(for: topRightButton, or: nil)
        sharedController.rotateKeysLeft(for: keysButton)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0, execute: {
            self.sharedController.addRiddleAlert(riddle: "", answer: "", clue: "Hold for Three", viewController: self, button: nil, gesture: self.bottomLeftHoldRecognizer, view: self.bottomLeftHoldView, segue: "openingSegue")
        })
    }
    
    @IBAction func bottomLeftHoldComplete(_ sender: Any) {
        sharedController.shadowOff(for: nil, or: bottomLeftHoldView)
        sharedController.rotateKeysDown(for: keysButton)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0, execute: {
            self.sharedController.addRiddleAlert(riddle: "", answer: "", clue: "Hold for Three", viewController: self, button: nil, gesture: self.bottomRightHoldRecognizer, view: self.bottomRightHoldView, segue: "openingSegue")
        })
    }
    
    @IBAction func bottomRightHoldComplete(_ sender: Any) {
        sharedController.shadowOff(for: nil, or: bottomRightHoldView)
        sharedController.rotateKeysRight(for: keysButton)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0, execute: {
            self.sharedController.addRiddleAlert(riddle: "", answer: "", clue: "Swipe Right", viewController: self, button: nil, gesture: self.swipeRightRecognizer, view: self.swipeView, segue: "openingSegue")
        })
    }
    
    @IBAction func swipeRightComplete(_ sender: Any) {
        sharedController.shadowOff(for: nil, or: swipeView)
        sharedController.rotateKeysUp(for: keysButton)
        
        UserDefaults.standard.set(true, forKey: "isOn5")
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0, execute: {
            self.sharedController.addTransitionRiddleAlert(riddle: "", answer: "", viewController: self, segue: "5Segue", level: "4", homeSegue: "openingSegue")
        })
    }
    
    @IBAction func homeButtonTapped(_ sender: Any) {
        sharedController.fadeViewOut(view: self.view)
        sharedController.segueAfterFadeOut(viewController: self, segue: "openingSegue")
    }

}
