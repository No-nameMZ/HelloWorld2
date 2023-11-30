//
//  ViewController.swift
//  HelloWorld
//
//  Created by No name on 29.11.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var greetingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.isHidden.toggle()
         
        /* isHidden - утвеждение (greetingLabel - скрыт)
          toggle() - противоположно */
        
        greetingButton.layer.cornerRadius = 10
        
        /* layer - слой, есть у каждого элемента интерфейса
         cornerRadius = 10 - сглугление угла на 10 поинтов */
    }

    @IBAction func greetingButtonDidTapped() {
        greetingLabel.isHidden.toggle()
        greetingButton.setTitle("Show Greeting", for: <#T##UIControl.State#>)
        /* setTitle - Установить заголовок  */
    }
    
}

 
