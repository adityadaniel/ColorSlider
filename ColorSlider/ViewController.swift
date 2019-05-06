//
//  ViewController.swift
//  ColorSlider
//
//  Created by Daniel Aditya Istyana on 06/05/19.
//  Copyright © 2019 Daniel Aditya Istyana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBAction func redSliderChanged(_ sender: UISlider) {
        let color = generateColor(red: CGFloat(sender.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value))
        colorView.backgroundColor = color
    }
    
    @IBAction func greenSliderChanged(_ sender: UISlider) {
        let color =  generateColor(red: CGFloat(redSlider.value), green: CGFloat(sender.value), blue: CGFloat(blueSlider.value))
        colorView.backgroundColor = color
    }
    
    @IBAction func blueSliderChanged(_ sender: UISlider) {
        let color =  generateColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(sender.value))
        colorView.backgroundColor = color
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        colorView.backgroundColor = .black
        redSlider.value = 0
        blueSlider.value = 0
        greenSlider.value = 0
    }
    
    
    @IBAction func redSwitchChanged(_ sender: UISwitch) {
        if sender.isOn {
            redSlider.isEnabled = true
        } else {
            redSlider.isEnabled = false
            redSlider.value = 0
        }
    }
    
    @IBAction func greenSwitchChanged(_ sender: UISwitch) {
        if sender.isOn {
            blueSlider.isEnabled = true
        } else {
            blueSlider.isEnabled = false
            blueSlider.value = 0
        }
    }
    
    @IBAction func blueSwitchChanged(_ sender: UISwitch) {
        if sender.isOn {
            greenSlider.isEnabled = true
        } else {
            greenSlider.isEnabled = false
            greenSlider.value = 0
        }
    }
    
    // Function to generate color, return UIColor
    func generateColor(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSwitch.onTintColor = .red
        greenSwitch.onTintColor = .green
        blueSwitch.onTintColor = .blue
        
        
        redSlider.tintColor = .red
        greenSlider.tintColor = .green
        blueSlider.tintColor = .blue
        
        redSlider.maximumValue = 255
        blueSlider.maximumValue = 255
        greenSlider.maximumValue = 255
        
        let redColor = CGFloat(redSlider.value)
        let greenColor = CGFloat(greenSlider.value)
        let blueColor = CGFloat(blueSlider.value)

        colorView.backgroundColor = UIColor(red: redColor/255, green: greenColor/255, blue: blueColor/255, alpha: 1)
        colorView.layer.borderColor = UIColor.black.cgColor
        colorView.layer.borderWidth = 10

    }


}

