//
//  TimerViewController.swift
//  TimerRefactor
//
//  Created by Vladimir Banushkin on 19.04.2020.
//  Copyright © 2020 Vladimir Banushkin. All rights reserved.
//

import UIKit
class TimerViewController: UIViewController {
  var container: SalaryTimer?
  var moneyGatheredSinceNow: Double = 0
  @IBOutlet weak var gatheredSinceLastPayLabel: UILabel!
  
  @IBOutlet weak var gatheredSinceNowLabel: UILabel!
  
  @objc func counter() {
    print(container!.salaryPerSecond)
    print(container!.moneyGatheredSinceLastPay)
    let textForGSLPL = container!.moneyGatheredSinceLastPay + moneyGatheredSinceNow
    gatheredSinceLastPayLabel.text = String(format: "%.3f", textForGSLPL)
    gatheredSinceNowLabel.text = String(format: "%.3f", self.moneyGatheredSinceNow)
    moneyGatheredSinceNow += container?.salaryPerSecond ?? 0.0
    
  }
  override func viewDidLoad() {
    super.viewDidLoad()
   let timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(counter), userInfo: nil, repeats: true)
}
}
