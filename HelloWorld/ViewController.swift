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
        if greetingLabel.isHidden {
            greetingButton.setTitle("Show Greeting", for: .normal)
        } else {
            greetingButton.setTitle("Hide Greeting", for: .normal)
        }
        
        // 30 = если greetingLabel скрыт - isHidden
        // 31 = то нужно отоброзить Show Greeting
        
        // setTitle - Установить заголовок, он принимает два параметра
         
        /* Первый параметр с типом string, чтоб задать заголовок нужно
         знать в каком состоянии мы находимя, для этого зададим небольшое
         условие */
        
        /* Второй параметр определяет состояние, у кнопки несколько состояний, 
         мы выбираем .normal - обычное состояние */
        
        // 32-33 = иначе, нужно отоброзить Hide Greeting
    }
    
}

 
