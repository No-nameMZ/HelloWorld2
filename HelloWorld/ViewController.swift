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
        
        
        
        greetingButton.configuration = setupButton(with: "Show Greeting")
        
        /* greetingButton - это класс UIButton, у этой кнопки есть свойство configuration */
        
        /* configuration - когфигурация кнопки и именно в ней находятся все ее настройки, которые отвечают за внешний вид системной кнопки */
        
        // вызываем этот метод с параметром - setupButton(with: "Show Greeting")
    }

    @IBAction func greetingButtonDidTapped() {
        greetingLabel.isHidden.toggle()
        greetingButton.configuration = setupButton(
            with: greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting"
         )
        
        /* greetingButton.configuration = setupButton - присвоим результат
         работы метода setupButton и будем использовать тенальный оператор
         with: greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting"  */
        
        /* greetingButton.setTitle(
            greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting",
            for: .normal
         ) */
        
        /* 30 = setTitle - задаем заголовок, далее задаем условие с помощью
          тернального оператора */
        
        /* 31 = если greetingLabel.isHidden, ? то тогда будем отоброжать надпись
         Show Greeting, : а иначе отобразим Hide Greeting */
        
        // 32 = .normal - обычное состояние
        
        
        
    /* if greetingLabel.isHidden {
            greetingButton.setTitle("Show Greeting", for: .normal)
        } else {
            greetingButton.setTitle("Hide Greeting", for: .normal)
        } */
        
        
        // 45 = если greetingLabel скрыт - isHidden
        // 46 = то нужно отоброзить Show Greeting
        
        // setTitle - Установить заголовок, он принимает два параметра
         
        /* Первый параметр с типом string, чтоб задать заголовок нужно
         знать в каком состоянии мы находимя, для этого зададим небольшое
         условие */
        
        /* Второй параметр определяет состояние, у кнопки несколько состояний, 
         мы выбираем .normal - обычное состояние */
        
        // 47-48 = иначе, нужно отоброзить Hide Greeting
    }
    
    private func setupButton(with title: String) -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.title = title
        buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 0.702465117, green: 0.1852335334, blue: 0.1598517895, alpha: 1)
        buttonConfiguration.cornerStyle = .large
        buttonConfiguration.buttonSize = .large
        buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 24)
        return buttonConfiguration
    }
    
    // 68 = приватный метод, через который, мы будем настраивать внешний вид кнопки
     
    /* setupButton - метод, который будет возвращать нам объект с типом UIButton.Configuration новая конфигурация для кнопки */
    
    // создаем свойсво buttonConfiguration = UIButton.Configuration.filled()
    
    /* задаем название, которое будет меняться, поэтому название будем передавать через параметр метода setupButton(with title: String) с типом String */
    
    /* buttonConfiguration.title = title - мы обращаемся к конфигурации нашей
     кнопки, у конфигурации есть свойство title, мы возмем этот title из
     параметров и передадим */
    
    /* buttonConfiguration.baseBackgroundColor - меняем цвет, который выберем из палитры, для этого используем #colorLiteral( и выбираем бордовый цвет */
    
    /* buttonConfiguration.cornerStyle = .large - сгругление, выбираем large - большое сгругление */
    
    // buttonConfiguration.buttonSize = .large - сделали кнопку побольше
    
    /* buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 24)
     - увеличиваем шрифт.
     
     attributedTitle - атрибуты для заголовка
     font - штрифт
     UIFont - где находятся шрифты, сам штрифт менять не нужно, нам нужно
     изменить размер, поэтому берем системный шрифт с размером
     systemFont(ofSize: 24) и увеличиваем до 24 */
    
    // return buttonConfiguration - возвращаем
    
}

 
