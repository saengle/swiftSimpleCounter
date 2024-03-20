//
//  ViewController.swift
//  simpleCounter
//
//  Created by 쌩 on 3/20/24.
//

import UIKit

class ViewController: UIViewController {
    let counter = Counter()
    @IBAction func upButtonTapped(_ sender: Any) {
        counter.countUp()
        self.countNumLabel.text = "\(counter.countNum)"
    }
    @IBAction func downButtonTapped(_ sender: Any) {
        counter.countDown()
        self.countNumLabel.text = "\(counter.countNum)"
    }
    @IBOutlet weak var countNumLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }


}

class Counter {
    var countNum: Int = 0
    func countUp() {
        countNum += 1
    }
    func countDown() {
        countNum -= 1
    }
}
