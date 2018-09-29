//
//  ViewController.swift
//  exerciseGenerator
//
//  Created by OSX on 6/29/18.
//  Copyright © 2018 OSX. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var chestLbl: UILabel!
    @IBOutlet weak var bicepsLbl: UILabel!
    @IBOutlet weak var tricepsLbl: UILabel!
    @IBOutlet weak var backLbl: UILabel!
    @IBOutlet weak var shoulderLbl: UILabel!
    @IBOutlet weak var legsLbl: UILabel!
    @IBOutlet weak var absLbl: UILabel!
    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var labelsConstraint: NSLayoutConstraint!    
    @IBOutlet weak var leftBtnConstraint: NSLayoutConstraint!
    @IBOutlet weak var rightBtnConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        leftBtnConstraint.constant = 16
        rightBtnConstraint.constant = 16
        btn.alpha = 0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        animateButton(btn: btn, leftConstraint: leftBtnConstraint, rightConstraint: rightBtnConstraint)
    }

    @IBAction func generatePressed(_ sender: Any) {
        
        let labelsList = [chestLbl, bicepsLbl,tricepsLbl,backLbl,shoulderLbl,legsLbl,absLbl]
        fadeOutLabels(labelsList: labelsList as! [UILabel], constraint: labelsConstraint)
        
        let chestExercise = DataService.instance.getChestExercise()
        let bicepsExercise = DataService.instance.getBicepsExercise()
        let tricepsExercise = DataService.instance.getTricepsExercise()
        let backExercise = DataService.instance.getBackExercise()
        let shoulderExercise = DataService.instance.getShoulderExercise()
        let legExercise = DataService.instance.getLegExercise()
        let absExercise = DataService.instance.getAbsExercise()
        
        updateAllLabels(chest: chestExercise, biceps: bicepsExercise, triceps: tricepsExercise, back: backExercise, shoulder: shoulderExercise, legs: legExercise, abs: absExercise)
        
        fadeInLabels(labelsList: labelsList as! [UILabel], constraint: labelsConstraint)
    }
    
  
    func updateAllLabels(chest: String, biceps: String, triceps: String, back: String, shoulder: String, legs: String, abs: String) {
        chestLbl.text = chest
        bicepsLbl.text = biceps
        tricepsLbl.text = triceps
        backLbl.text = back
        shoulderLbl.text = shoulder
        legsLbl.text = legs
        absLbl.text = abs
    }
    
    func fadeOutLabels(labelsList: [UILabel], constraint: NSLayoutConstraint) {
        UIView.animate(withDuration: 0.1) {
            labelsList.forEach { (label) in
                label.alpha = 0
            }
            constraint.constant = 36
            self.view.layoutIfNeeded()
        }
    }
    
    func fadeInLabels(labelsList: [UILabel], constraint: NSLayoutConstraint) {
        UIView.animate(withDuration: 0.8) {
            labelsList.forEach { (label) in
                label.alpha = 1
            }
            constraint.constant = 16
            self.view.layoutIfNeeded()
        }
    }
    
    func animateButton(btn: UIButton, leftConstraint: NSLayoutConstraint, rightConstraint: NSLayoutConstraint) {
        UIView.animate(withDuration: 1, delay: 0.3, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.3, options: UIViewAnimationOptions.curveEaseInOut, animations: {
            btn.alpha = 1
            leftConstraint.constant = 40
            rightConstraint.constant = 40
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
    
    
    
}

