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
        refreshNumLabel()
    }
    @IBAction func downButtonTapped(_ sender: Any) {
        counter.countDown()
        refreshNumLabel()
    }
    @IBOutlet weak var countNumLabel: UILabel!
    
    private func refreshNumLabel() {
        self.countNumLabel.text = "\(counter.countNum)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refreshNumLabel()
        
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
