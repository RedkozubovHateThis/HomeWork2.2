//
//  ViewController.swift
//  homework2
//
//  Created by Anton Redkozubov on 02.02.2020.
//  Copyright © 2020 Anton Redkozubov. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var viewOut: UIView!
    
    @IBOutlet weak var redSliderOut: UISlider!
    @IBOutlet weak var greenSliderOut: UISlider!
    @IBOutlet weak var blueSliderOut: UISlider!
    
    @IBOutlet weak var redLabelOut: UILabel!
    @IBOutlet weak var greenLabelOut: UILabel!
    @IBOutlet weak var blueLabelOut: UILabel!
    
    @IBOutlet weak var redTfOut: UITextField!
    @IBOutlet weak var greenTfOut: UITextField!
    @IBOutlet weak var blueTfOut: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Slider
        // Red Slider
        redSliderOut.value = 0.05
        redSliderOut.minimumValue = 0.00
        redSliderOut.maximumValue = 1.00
        redSliderOut.minimumTrackTintColor = .red
        
        // Green Slider
        greenSliderOut.value = 0.27
        greenSliderOut.minimumValue = 0
        greenSliderOut.maximumValue = 1.00
        greenSliderOut.minimumTrackTintColor = .green
        
        // Blue Slider
        blueSliderOut.value = 0.49
        blueSliderOut.minimumValue = 0
        blueSliderOut.maximumValue = 1.00
        blueSliderOut.minimumTrackTintColor = .blue
        
        // Label
        redLabelOut.text = String(redSliderOut.value)
        greenLabelOut.text = String(greenSliderOut.value)
        blueLabelOut.text = String(blueSliderOut.value)
        
        
        // Text Fild
        redTfOut.text = String(redSliderOut.value)
        greenTfOut.text = String(greenSliderOut.value)
        blueTfOut.text = String(blueSliderOut.value)
        
        
        
        self.redTfOut.delegate = self
        self.greenTfOut.delegate = self
        self.blueTfOut.delegate = self
        
        // View
        viewOut.layer.cornerRadius = 10
        
    }
    

   
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()

        return true
    }
    
    
    @IBAction func sliderAction() {

        redLabelOut.text = String(format: "%.2f", redSliderOut.value)
        redTfOut.text = String(format: "%.2f", redSliderOut.value)

        greenLabelOut.text = String(format: "%.2f", greenSliderOut.value)
        greenTfOut.text = String(format: "%.2f", greenSliderOut.value)

        blueLabelOut.text = String(format: "%.2f", blueSliderOut.value)
        blueTfOut.text = String(format: "%.2f", blueSliderOut.value)
        
        
        self.viewOut.backgroundColor = UIColor(red: CGFloat(redSliderOut.value * 255.0)/255.0, green: CGFloat(greenSliderOut.value * 255.0)/255.0, blue: CGFloat(blueSliderOut.value * 255.0)/255.0, alpha: 1.0)
        
    
    }
    
}

