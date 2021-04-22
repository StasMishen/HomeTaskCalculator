//
//  IBViewController.swift
//  calculator
//
//  Created by Стас on 18.04.2021.
//

import UIKit

class IBViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var giveOrTakeButton: UIButton!
    @IBOutlet weak var percentButton: UIButton!
    @IBOutlet weak var divisionButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var eigthButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var substractButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var summButton: UIButton!
    @IBOutlet weak var pointButton: UIButton!
    @IBOutlet weak var equallyButton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
    
    // MARK: -Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    override func didRotate(from fromInterfaceOrientation: UIInterfaceOrientation) {
        
        switch UIDevice.current.orientation{
        case .portrait:
            setupView()
        case .portraitUpsideDown:
            setupView()
        case .landscapeLeft:
            setupView()
        case .landscapeRight:
            setupView()
        default:
            setupView()
        }
        
    }
    
    // MARK: -Settings
    
    private func setupView() {
        addCornerRadius(for: [clearButton, giveOrTakeButton, percentButton, divisionButton, sevenButton, eigthButton, nineButton, multiplyButton, fourButton, fiveButton, sixButton, substractButton, oneButton, twoButton, threeButton, summButton, zeroButton, pointButton, equallyButton])
    }
    
    
    // MARK: -Privat func
    
    private func addCornerRadius(for buttons: [UIButton]) {
        buttons.forEach {
            $0.layer.masksToBounds = true
            $0.layer.cornerRadius = $0.frame.height / 2
        }
    }

}
