//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var view1: UIView!
  @IBOutlet weak var view2: UIView!
  @IBOutlet weak var view3: UIView!
  @IBOutlet weak var view4: UIView!
  @IBOutlet weak var view5: UIView!
  @IBOutlet weak var view6: UIView!
  @IBOutlet weak var view7: UIView!

  @IBOutlet weak var label1: UILabel!
  @IBOutlet weak var label2: UILabel!
  @IBOutlet weak var label3: UILabel!
  @IBOutlet weak var label4: UILabel!
  @IBOutlet weak var label5: UILabel!
  @IBOutlet weak var label6: UILabel!

  @IBOutlet weak var dice: UIButton!

  @IBOutlet weak var totalScore: UILabel!
  @IBOutlet weak var score: UILabel!

  @IBOutlet weak var playAgain: UIButton!

  var scoreCount : Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
      view1.isHidden = true
      view2.isHidden = true
      view3.isHidden = true
      view4.isHidden = true
      view5.isHidden = true
      view6.isHidden = true
      view7.isHidden = true

      label1.isHidden = true
      label2.isHidden = true
      label3.isHidden = true
      label4.isHidden = true
      label5.isHidden = true
      label6.isHidden = true
      playAgain.isHidden = true
      score.text = "0"





    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
      var int = 0

      int = randomDiceRoll()
      scoreCount += int
      score.text = String(scoreCount)

      switch int {
      case 1:
        view1.isHidden = true
        view2.isHidden = true
        view3.isHidden = true
        view4.isHidden = true
        view5.isHidden = true
        view6.isHidden = true
        view7.isHidden = false
        break
      case 2:
        view1.isHidden = false
        view2.isHidden = true
        view3.isHidden = true
        view4.isHidden = true
        view5.isHidden = true
        view6.isHidden = false
        view7.isHidden = true
        break
      case 3:
        view1.isHidden = false
        view2.isHidden = true
        view3.isHidden = true
        view4.isHidden = true
        view5.isHidden = true
        view6.isHidden = false
        view7.isHidden = false
        break
      case 4:
        view1.isHidden = false
        view2.isHidden = true
        view3.isHidden = false
        view4.isHidden = false
        view5.isHidden = true
        view6.isHidden = false
        view7.isHidden = true
        break
      case 5:
        view1.isHidden = false
        view2.isHidden = true
        view3.isHidden = false
        view4.isHidden = false
        view5.isHidden = true
        view6.isHidden = false
        view7.isHidden = false
        break
      case 6:
        view1.isHidden = false
        view2.isHidden = false
        view3.isHidden = false
        view4.isHidden = false
        view5.isHidden = false
        view6.isHidden = false
        view7.isHidden = true
        break
      default:
        print("somethin ain't right")
      }

      updateLabelWithRoll(roll: int )
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

  func updateLabelWithRoll(roll: Int) {

    let diceScore = String(roll)

    if label1.isHidden {
      label1.text = diceScore
      label1.isHidden = false
    } else if label2.isHidden {
      label2.text = diceScore
      label2.isHidden = false
    } else if label3.isHidden {
      label3.text = diceScore
      label3.isHidden = false
    } else if label4.isHidden {
      label4.text = diceScore
      label4.isHidden = false
    } else if label5.isHidden {
      label5.text = diceScore
      label5.isHidden = false
    } else if label6.isHidden {
      label6.text = diceScore
      label6.isHidden = false
      playAgain.isHidden = false
      dice.isEnabled = false
    }

    // .. and so on
  }

  @IBAction func reset(_ sender: Any) {
    view1.isHidden = true
    view2.isHidden = true
    view3.isHidden = true
    view4.isHidden = true
    view5.isHidden = true
    view6.isHidden = true
    view7.isHidden = true

    label1.isHidden = true
    label2.isHidden = true
    label3.isHidden = true
    label4.isHidden = true
    label5.isHidden = true
    label6.isHidden = true
    playAgain.isHidden = true
    score.text = "0"
    scoreCount = 0
  }
}
