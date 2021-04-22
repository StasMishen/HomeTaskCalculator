//
//  ViewController.swift
//  calculator
//
//  Created by Стас on 17.04.2021.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var resultLabel: UILabel = {
        var label = UILabel()
        label.font = .systemFont(ofSize: Metric.fontSize)
        label.text = "0"
        label.textAlignment = .right
        label.textColor = .white
        return label
    }()
    
    private lazy var divisionButton: UIButton = {
        var button = UIButton(type: .system)
        return createButton(button: button, title: "/", color: .white, backgroundColor: .systemOrange)
    }()
    
    private lazy var multiplyButton: UIButton = {
        var button = UIButton(type: .system)
        return createButton(button: button, title: "X", color: .white, backgroundColor: .systemOrange)
    }()
    
    private lazy var substractButton: UIButton = {
        var button = UIButton(type: .system)
        return createButton(button: button, title: "-", color: .white, backgroundColor: .systemOrange)
    }()
    
    private lazy var summButton: UIButton = {
        var button = UIButton(type: .system)
        return createButton(button: button, title: "+", color: .white, backgroundColor: .systemOrange)
    }()
    
    private lazy var equallyButton: UIButton = {
        var button = UIButton(type: .system)
        return createButton(button: button, title: "=", color: .white, backgroundColor: .systemOrange)
    }()
    
    private lazy var percentButton: UIButton = {
        var button = UIButton(type: .system)
        return createButton(button: button, title: "%", color: .black, backgroundColor: .systemGray2)
    }()
    
    private lazy var nineButton: UIButton = {
        var button = UIButton(type: .system)
        return createButton(button: button, title: "9", color: .white, backgroundColor: .darkGray)
    }()
    
    private lazy var sixButton: UIButton = {
        var button = UIButton(type: .system)
        return createButton(button: button, title: "6", color: .white, backgroundColor: .darkGray)
    }()
    
    private lazy var threeButton: UIButton = {
        var button = UIButton(type: .system)
        return createButton(button: button, title: "3", color: .white, backgroundColor: .darkGray)
    }()
    
    private lazy var pointButton: UIButton = {
        var button = UIButton(type: .system)
        return createButton(button: button, title: ".", color: .white, backgroundColor: .darkGray)
    }()
    
    private lazy var giveOrTakeButton: UIButton = {
        var button = UIButton(type: .system)
        return createButton(button: button, title: "+/-", color: .black, backgroundColor: .systemGray2)
    }()
    
    private lazy var eigthButton: UIButton = {
        var button = UIButton(type: .system)
        return createButton(button: button, title: "8", color: .white, backgroundColor: .darkGray)
    }()
    
    private lazy var fiveButton: UIButton = {
        var button = UIButton(type: .system)
        return createButton(button: button, title: "5", color: .white, backgroundColor: .darkGray)
    }()
    
    private lazy var twoButton: UIButton = {
        var button = UIButton(type: .system)
        return createButton(button: button, title: "2", color: .white, backgroundColor: .darkGray)
    }()
    
    private lazy var zeroButton: UIButton = {
        var button = UIButton(type: .system)
        return createButton(button: button, title: "0", color: .white, backgroundColor: .darkGray)
    }()
    
    private lazy var clearButton: UIButton = {
        var button = UIButton(type: .system)
        return createButton(button: button, title: "AC", color: .black, backgroundColor: .systemGray2)
    }()
    
    private lazy var sevenButton: UIButton = {
        var button = UIButton(type: .system)
        return createButton(button: button, title: "7", color: .white, backgroundColor: .darkGray)
    }()
    
    private lazy var fourButton: UIButton = {
        var button = UIButton(type: .system)
        return createButton(button: button, title: "4", color: .white, backgroundColor: .darkGray)
    }()
    
    private lazy var oneButton: UIButton = {
        var button = UIButton(type: .system)
        return createButton(button: button, title: "1", color: .white, backgroundColor: .darkGray)
    }()
    
    // MARK: -Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    override func didRotate(from fromInterfaceOrientation: UIInterfaceOrientation) {
        switch UIDevice.current.orientation{
        case .portrait:
            view.clearConstraints()
            setupHierarchy()
            setupLayout()
        case .portraitUpsideDown:
            view.clearConstraints()
            setupHierarchy()
            setupLayout()
        case .landscapeLeft:
            view.clearConstraints()
            setupHierarchy()
            setupLayoutLandscape()
        case .landscapeRight:
            view.clearConstraints()
            setupHierarchy()
            setupLayoutLandscape()
        default:
            view.clearConstraints()
            setupHierarchy()
            setupLayout()
        }
    }
    
    // MARK: -Settings
    
    private func setupHierarchy() {
        view.addSubview(zeroButton)
        view.addSubview(pointButton)
        view.addSubview(equallyButton)
        view.addSubview(oneButton)
        view.addSubview(twoButton)
        view.addSubview(threeButton)
        view.addSubview(summButton)
        view.addSubview(fourButton)
        view.addSubview(fiveButton)
        view.addSubview(sixButton)
        view.addSubview(substractButton)
        view.addSubview(sevenButton)
        view.addSubview(eigthButton)
        view.addSubview(nineButton)
        view.addSubview(multiplyButton)
        view.addSubview(clearButton)
        view.addSubview(giveOrTakeButton)
        view.addSubview(percentButton)
        view.addSubview(divisionButton)
        view.addSubview(resultLabel)
    }
    
    // MARK: -Portrait orientation
    private func setupLayout() {
        
        // 0
        zeroButton.translatesAutoresizingMaskIntoConstraints = false
        zeroButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: Metric.leftAnchorView).isActive = true
        zeroButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: Metric.bottomAnchorView).isActive = true
        buttonAnchorSize(to: zeroButton, height: Metric.heightAnchorButton, width: Metric.widthAnchorButtonZero)
        
        // .
        pointButton.translatesAutoresizingMaskIntoConstraints = false
        pointButton.leftAnchor.constraint(equalTo: zeroButton.rightAnchor, constant: Metric.leftAnchorButton).isActive = true
        pointButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: Metric.bottomAnchorView).isActive = true
        buttonAnchorSize(to: pointButton, height: Metric.heightAnchorButton, width: Metric.widthAnchorButton)
        
        // =
        equallyButton.translatesAutoresizingMaskIntoConstraints = false
        equallyButton.leftAnchor.constraint(equalTo: pointButton.rightAnchor, constant: Metric.leftAnchorButton).isActive = true
        equallyButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: Metric.bottomAnchorView).isActive = true
        buttonAnchorSize(to: equallyButton, height: Metric.heightAnchorButton, width: Metric.widthAnchorButton)
        
        // 1
        oneButton.translatesAutoresizingMaskIntoConstraints = false
        oneButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: Metric.leftAnchorView).isActive = true
        oneButton.bottomAnchor.constraint(equalTo: zeroButton.topAnchor, constant: Metric.bottomAnchorButton).isActive = true
        buttonAnchorSize(to: oneButton, height: Metric.heightAnchorButton, width: Metric.widthAnchorButton)
        
        // 2
        twoButton.translatesAutoresizingMaskIntoConstraints = false
        twoButton.leftAnchor.constraint(equalTo: oneButton.rightAnchor, constant: Metric.leftAnchorButton).isActive = true
        twoButton.bottomAnchor.constraint(equalTo: zeroButton.topAnchor, constant: Metric.bottomAnchorButton).isActive = true
        buttonAnchorSize(to: twoButton, height: Metric.heightAnchorButton, width: Metric.widthAnchorButton)
        
        // 3
        threeButton.translatesAutoresizingMaskIntoConstraints = false
        threeButton.leftAnchor.constraint(equalTo: twoButton.rightAnchor, constant: Metric.leftAnchorButton).isActive = true
        threeButton.bottomAnchor.constraint(equalTo: pointButton.topAnchor, constant: Metric.bottomAnchorButton).isActive = true
        buttonAnchorSize(to: threeButton, height: Metric.heightAnchorButton, width: Metric.widthAnchorButton)
        
        // +
        summButton.translatesAutoresizingMaskIntoConstraints = false
        summButton.leftAnchor.constraint(equalTo: threeButton.rightAnchor, constant: Metric.leftAnchorButton).isActive = true
        summButton.bottomAnchor.constraint(equalTo: equallyButton.topAnchor, constant: Metric.bottomAnchorButton).isActive = true
        buttonAnchorSize(to: summButton, height: Metric.heightAnchorButton, width: Metric.widthAnchorButton)
        
        
        // 4
        fourButton.translatesAutoresizingMaskIntoConstraints = false
        fourButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: Metric.leftAnchorView).isActive = true
        fourButton.bottomAnchor.constraint(equalTo: oneButton.topAnchor, constant: Metric.bottomAnchorButton).isActive = true
        buttonAnchorSize(to: fourButton, height: Metric.heightAnchorButton, width: Metric.widthAnchorButton)
        
        // 5
        fiveButton.translatesAutoresizingMaskIntoConstraints = false
        fiveButton.leftAnchor.constraint(equalTo: fourButton.rightAnchor, constant: Metric.leftAnchorButton).isActive = true
        fiveButton.bottomAnchor.constraint(equalTo: twoButton.topAnchor, constant: Metric.bottomAnchorButton).isActive = true
        buttonAnchorSize(to: fiveButton, height: Metric.heightAnchorButton, width: Metric.widthAnchorButton)
        
        // 6
        sixButton.translatesAutoresizingMaskIntoConstraints = false
        sixButton.leftAnchor.constraint(equalTo: fiveButton.rightAnchor, constant: Metric.leftAnchorButton).isActive = true
        sixButton.bottomAnchor.constraint(equalTo: threeButton.topAnchor, constant: Metric.bottomAnchorButton).isActive = true
        buttonAnchorSize(to: sixButton, height: Metric.heightAnchorButton, width: Metric.widthAnchorButton)
        
        // -
        substractButton.translatesAutoresizingMaskIntoConstraints = false
        substractButton.leftAnchor.constraint(equalTo: sixButton.rightAnchor, constant: Metric.leftAnchorButton).isActive = true
        substractButton.bottomAnchor.constraint(equalTo: summButton.topAnchor, constant: Metric.bottomAnchorButton).isActive = true
        buttonAnchorSize(to: substractButton, height: Metric.heightAnchorButton, width: Metric.widthAnchorButton)
        
        // 7
        sevenButton.translatesAutoresizingMaskIntoConstraints = false
        sevenButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: Metric.leftAnchorView).isActive = true
        sevenButton.bottomAnchor.constraint(equalTo: fourButton.topAnchor, constant: Metric.bottomAnchorButton).isActive = true
        buttonAnchorSize(to: sevenButton, height: Metric.heightAnchorButton, width: Metric.widthAnchorButton)
        
        // 8
        eigthButton.translatesAutoresizingMaskIntoConstraints = false
        eigthButton.leftAnchor.constraint(equalTo: sevenButton.rightAnchor, constant: Metric.leftAnchorButton).isActive = true
        eigthButton.bottomAnchor.constraint(equalTo: fiveButton.topAnchor, constant: Metric.bottomAnchorButton).isActive = true
        buttonAnchorSize(to: eigthButton, height: Metric.heightAnchorButton, width: Metric.widthAnchorButton)
        
        // 9
        nineButton.translatesAutoresizingMaskIntoConstraints = false
        nineButton.leftAnchor.constraint(equalTo: eigthButton.rightAnchor, constant: Metric.leftAnchorButton).isActive = true
        nineButton.bottomAnchor.constraint(equalTo: sixButton.topAnchor, constant: Metric.bottomAnchorButton).isActive = true
        buttonAnchorSize(to: nineButton, height: Metric.heightAnchorButton, width: Metric.widthAnchorButton)
        
        // *
        multiplyButton.translatesAutoresizingMaskIntoConstraints = false
        multiplyButton.leftAnchor.constraint(equalTo: nineButton.rightAnchor, constant: Metric.leftAnchorButton).isActive = true
        multiplyButton.bottomAnchor.constraint(equalTo: substractButton.topAnchor, constant: Metric.bottomAnchorButton).isActive = true
        buttonAnchorSize(to: multiplyButton, height: Metric.heightAnchorButton, width: Metric.widthAnchorButton)
        
        // AC
        clearButton.translatesAutoresizingMaskIntoConstraints = false
        clearButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: Metric.leftAnchorView).isActive = true
        clearButton.bottomAnchor.constraint(equalTo: sevenButton.topAnchor, constant: Metric.bottomAnchorButton).isActive = true
        buttonAnchorSize(to: clearButton, height: Metric.heightAnchorButton, width: Metric.widthAnchorButton)
        
        // +/-
        giveOrTakeButton.translatesAutoresizingMaskIntoConstraints = false
        giveOrTakeButton.leftAnchor.constraint(equalTo: clearButton.rightAnchor, constant: Metric.leftAnchorButton).isActive = true
        giveOrTakeButton.bottomAnchor.constraint(equalTo: eigthButton.topAnchor, constant: Metric.bottomAnchorButton).isActive = true
        buttonAnchorSize(to: giveOrTakeButton, height: Metric.heightAnchorButton, width: Metric.widthAnchorButton)
        
        // %
        percentButton.translatesAutoresizingMaskIntoConstraints = false
        percentButton.leftAnchor.constraint(equalTo: giveOrTakeButton.rightAnchor, constant: Metric.leftAnchorButton).isActive = true
        percentButton.bottomAnchor.constraint(equalTo: nineButton.topAnchor, constant: Metric.bottomAnchorButton).isActive = true
        buttonAnchorSize(to: percentButton, height: Metric.heightAnchorButton, width: Metric.widthAnchorButton)
        
        // /
        divisionButton.translatesAutoresizingMaskIntoConstraints = false
        divisionButton.leftAnchor.constraint(equalTo: percentButton.rightAnchor, constant: Metric.leftAnchorButton).isActive = true
        divisionButton.bottomAnchor.constraint(equalTo: multiplyButton.topAnchor, constant: Metric.bottomAnchorButton).isActive = true
        buttonAnchorSize(to: divisionButton, height: Metric.heightAnchorButton, width: Metric.widthAnchorButton)
        
        // label
        resultLabel.translatesAutoresizingMaskIntoConstraints = false
        resultLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: Metric.rightAnchorLabel).isActive = true
        resultLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: Metric.leftAnchorLabel).isActive = true
        resultLabel.bottomAnchor.constraint(equalTo: divisionButton.topAnchor, constant: Metric.bottomAnchorLabel).isActive = true
        resultLabel.heightAnchor.constraint(equalToConstant: Metric.heightAnchorLayer).isActive = true
        resultLabel.widthAnchor.constraint(equalToConstant: Metric.widthAnchorLayer).isActive = true
    }
    
    // MARK: -Landscape orientation
    
    private func setupLayoutLandscape() {
        
        // 0
        zeroButton.translatesAutoresizingMaskIntoConstraints = false
        zeroButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: MetricLandscape.leftAnchorView).isActive = true
        zeroButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: MetricLandscape.bottomAnchorView).isActive = true
        buttonAnchorSizeLandscape(to: zeroButton, height: MetricLandscape.heightAnchorButton, width: MetricLandscape.widthAnchorButtonZero)
        
        // .
        pointButton.translatesAutoresizingMaskIntoConstraints = false
        pointButton.leftAnchor.constraint(equalTo: zeroButton.rightAnchor, constant: MetricLandscape.leftAnchorButton).isActive = true
        pointButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: MetricLandscape.bottomAnchorView).isActive = true
        buttonAnchorSizeLandscape(to: pointButton, height: MetricLandscape.heightAnchorButton, width: MetricLandscape.widthAnchorButton)
        
        // =
        equallyButton.translatesAutoresizingMaskIntoConstraints = false
        equallyButton.leftAnchor.constraint(equalTo: pointButton.rightAnchor, constant: MetricLandscape.leftAnchorButton).isActive = true
        equallyButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: MetricLandscape.bottomAnchorView).isActive = true
        buttonAnchorSizeLandscape(to: equallyButton, height: MetricLandscape.heightAnchorButton, width: MetricLandscape.widthAnchorButton)
        
        // 1
        oneButton.translatesAutoresizingMaskIntoConstraints = false
        oneButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: MetricLandscape.leftAnchorView).isActive = true
        oneButton.bottomAnchor.constraint(equalTo: zeroButton.topAnchor, constant: MetricLandscape.bottomAnchorButton).isActive = true
        buttonAnchorSizeLandscape(to: oneButton, height: MetricLandscape.heightAnchorButton, width: MetricLandscape.widthAnchorButton)
        
        // 2
        twoButton.translatesAutoresizingMaskIntoConstraints = false
        twoButton.leftAnchor.constraint(equalTo: oneButton.rightAnchor, constant: MetricLandscape.leftAnchorButton).isActive = true
        twoButton.bottomAnchor.constraint(equalTo: zeroButton.topAnchor, constant: MetricLandscape.bottomAnchorButton).isActive = true
        buttonAnchorSizeLandscape(to: twoButton, height: MetricLandscape.heightAnchorButton, width: MetricLandscape.widthAnchorButton)
        
        // 3
        threeButton.translatesAutoresizingMaskIntoConstraints = false
        threeButton.leftAnchor.constraint(equalTo: twoButton.rightAnchor, constant: MetricLandscape.leftAnchorButton).isActive = true
        threeButton.bottomAnchor.constraint(equalTo: pointButton.topAnchor, constant: MetricLandscape.bottomAnchorButton).isActive = true
        buttonAnchorSizeLandscape(to: threeButton, height: MetricLandscape.heightAnchorButton, width: MetricLandscape.widthAnchorButton)
        
        // +
        summButton.translatesAutoresizingMaskIntoConstraints = false
        summButton.leftAnchor.constraint(equalTo: threeButton.rightAnchor, constant: MetricLandscape.leftAnchorButton).isActive = true
        summButton.bottomAnchor.constraint(equalTo: equallyButton.topAnchor, constant: MetricLandscape.bottomAnchorButton).isActive = true
        buttonAnchorSizeLandscape(to: summButton, height: MetricLandscape.heightAnchorButton, width: MetricLandscape.widthAnchorButton)
        
        // 4
        fourButton.translatesAutoresizingMaskIntoConstraints = false
        fourButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: MetricLandscape.leftAnchorView).isActive = true
        fourButton.bottomAnchor.constraint(equalTo: oneButton.topAnchor, constant: MetricLandscape.bottomAnchorButton).isActive = true
        buttonAnchorSizeLandscape(to: fourButton, height: MetricLandscape.heightAnchorButton, width: MetricLandscape.widthAnchorButton)
        
        // 5
        fiveButton.translatesAutoresizingMaskIntoConstraints = false
        fiveButton.leftAnchor.constraint(equalTo: fourButton.rightAnchor, constant: MetricLandscape.leftAnchorButton).isActive = true
        fiveButton.bottomAnchor.constraint(equalTo: twoButton.topAnchor, constant: MetricLandscape.bottomAnchorButton).isActive = true
        buttonAnchorSizeLandscape(to: fiveButton, height: MetricLandscape.heightAnchorButton, width: MetricLandscape.widthAnchorButton)
        
        // 6
        sixButton.translatesAutoresizingMaskIntoConstraints = false
        sixButton.leftAnchor.constraint(equalTo: fiveButton.rightAnchor, constant: MetricLandscape.leftAnchorButton).isActive = true
        sixButton.bottomAnchor.constraint(equalTo: threeButton.topAnchor, constant: MetricLandscape.bottomAnchorButton).isActive = true
        buttonAnchorSizeLandscape(to: sixButton, height: MetricLandscape.heightAnchorButton, width: MetricLandscape.widthAnchorButton)
        
        // -
        substractButton.translatesAutoresizingMaskIntoConstraints = false
        substractButton.leftAnchor.constraint(equalTo: sixButton.rightAnchor, constant: MetricLandscape.leftAnchorButton).isActive = true
        substractButton.bottomAnchor.constraint(equalTo: summButton.topAnchor, constant: MetricLandscape.bottomAnchorButton).isActive = true
        buttonAnchorSizeLandscape(to: substractButton, height: MetricLandscape.heightAnchorButton, width: MetricLandscape.widthAnchorButton)
        
        // 7
        sevenButton.translatesAutoresizingMaskIntoConstraints = false
        sevenButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: MetricLandscape.leftAnchorView).isActive = true
        sevenButton.bottomAnchor.constraint(equalTo: fourButton.topAnchor, constant: MetricLandscape.bottomAnchorButton).isActive = true
        buttonAnchorSizeLandscape(to: sevenButton, height: MetricLandscape.heightAnchorButton, width: MetricLandscape.widthAnchorButton)
        
        // 8
        eigthButton.translatesAutoresizingMaskIntoConstraints = false
        eigthButton.leftAnchor.constraint(equalTo: sevenButton.rightAnchor, constant: MetricLandscape.leftAnchorButton).isActive = true
        eigthButton.bottomAnchor.constraint(equalTo: fiveButton.topAnchor, constant: MetricLandscape.bottomAnchorButton).isActive = true
        buttonAnchorSizeLandscape(to: eigthButton, height: MetricLandscape.heightAnchorButton, width: MetricLandscape.widthAnchorButton)
        
        // 9
        nineButton.translatesAutoresizingMaskIntoConstraints = false
        nineButton.leftAnchor.constraint(equalTo: eigthButton.rightAnchor, constant: MetricLandscape.leftAnchorButton).isActive = true
        nineButton.bottomAnchor.constraint(equalTo: sixButton.topAnchor, constant: MetricLandscape.bottomAnchorButton).isActive = true
        buttonAnchorSizeLandscape(to: nineButton, height: MetricLandscape.heightAnchorButton, width: MetricLandscape.widthAnchorButton)
        
        // *
        multiplyButton.translatesAutoresizingMaskIntoConstraints = false
        multiplyButton.leftAnchor.constraint(equalTo: nineButton.rightAnchor, constant: MetricLandscape.leftAnchorButton).isActive = true
        multiplyButton.bottomAnchor.constraint(equalTo: substractButton.topAnchor, constant: MetricLandscape.bottomAnchorButton).isActive = true
        buttonAnchorSizeLandscape(to: multiplyButton, height: MetricLandscape.heightAnchorButton, width: MetricLandscape.widthAnchorButton)
        
        // AC
        clearButton.translatesAutoresizingMaskIntoConstraints = false
        clearButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: MetricLandscape.leftAnchorView).isActive = true
        clearButton.bottomAnchor.constraint(equalTo: sevenButton.topAnchor, constant: MetricLandscape.bottomAnchorButton).isActive = true
        buttonAnchorSizeLandscape(to: clearButton, height: MetricLandscape.heightAnchorButton, width: MetricLandscape.widthAnchorButton)
        
        // +/-
        giveOrTakeButton.translatesAutoresizingMaskIntoConstraints = false
        giveOrTakeButton.leftAnchor.constraint(equalTo: clearButton.rightAnchor, constant: MetricLandscape.leftAnchorButton).isActive = true
        giveOrTakeButton.bottomAnchor.constraint(equalTo: eigthButton.topAnchor, constant: MetricLandscape.bottomAnchorButton).isActive = true
        buttonAnchorSizeLandscape(to: giveOrTakeButton, height: MetricLandscape.heightAnchorButton, width: MetricLandscape.widthAnchorButton)
        
        // %
        percentButton.translatesAutoresizingMaskIntoConstraints = false
        percentButton.leftAnchor.constraint(equalTo: giveOrTakeButton.rightAnchor, constant: MetricLandscape.leftAnchorButton).isActive = true
        percentButton.bottomAnchor.constraint(equalTo: nineButton.topAnchor, constant: MetricLandscape.bottomAnchorButton).isActive = true
        buttonAnchorSizeLandscape(to: percentButton, height: MetricLandscape.heightAnchorButton, width: MetricLandscape.widthAnchorButton)
        
        // /
        divisionButton.translatesAutoresizingMaskIntoConstraints = false
        divisionButton.leftAnchor.constraint(equalTo: percentButton.rightAnchor, constant: MetricLandscape.leftAnchorButton).isActive = true
        divisionButton.bottomAnchor.constraint(equalTo: multiplyButton.topAnchor, constant: MetricLandscape.bottomAnchorButton).isActive = true
        buttonAnchorSizeLandscape(to: divisionButton, height: MetricLandscape.heightAnchorButton, width: MetricLandscape.widthAnchorButton)
        
        // label
        resultLabel.translatesAutoresizingMaskIntoConstraints = false
        resultLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        resultLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: MetricLandscape.rightAnchorLabel).isActive = true
        resultLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: MetricLandscape.leftAnchorLabel).isActive = true
        resultLabel.bottomAnchor.constraint(equalTo: divisionButton.topAnchor, constant: MetricLandscape.bottomAnchorLabel).isActive = true
        resultLabel.heightAnchor.constraint(equalToConstant: MetricLandscape.heightAnchorLayer).isActive = true
        resultLabel.widthAnchor.constraint(equalToConstant: MetricLandscape.widthAnchorLayer).isActive = true
    }
    
    private func setupView() {
        view.backgroundColor = .black
    }
    
    // MARK: -Privat func
    
    private func buttonAnchorSize (to button: UIButton, height: CGFloat, width: CGFloat) {
        button.heightAnchor.constraint(equalToConstant: height).isActive = true
        button.widthAnchor.constraint(equalToConstant: width).isActive = true
        button.layer.masksToBounds = true
        button.layer.cornerRadius = Metric.cornerRadius
    }
    
    private func buttonAnchorSizeLandscape (to button: UIButton, height: CGFloat, width: CGFloat) {
        button.heightAnchor.constraint(equalToConstant: height).isActive = true
        button.widthAnchor.constraint(equalToConstant: width).isActive = true
        button.layer.masksToBounds = true
        button.layer.cornerRadius = MetricLandscape.cornerRadius
    }
    
    private func createButton (button: UIButton, title: String, color: UIColor, backgroundColor: UIColor) -> UIButton {
        button.setTitle(title, for: .normal)
        button.setTitleColor(color, for: .normal)
        button.backgroundColor = backgroundColor
        button.titleLabel?.font = UIFont.systemFont(ofSize: Metric.fontSizeButton)
        return button
    }
}
// MARK: - Constant

extension ViewController {
    enum Metric {
        static var fontSize: CGFloat = 70
        static var leftAnchorView: CGFloat = 28
        static var bottomAnchorView: CGFloat = -40
        static var bottomAnchorButton: CGFloat = -18
        static var leftAnchorButton: CGFloat = 18
        static var rightAnchorButton: CGFloat = -18
        static var heightAnchorButton: CGFloat = 80
        static var widthAnchorButtonZero: CGFloat = 178
        static var widthAnchorButton: CGFloat = 80
        static var fontSizeButton: CGFloat = 28
        static var rightAnchorLabel: CGFloat = -28
        static var leftAnchorLabel: CGFloat = 28
        static var bottomAnchorLabel: CGFloat = -20
        static var cornerRadius: CGFloat = 40
        static var heightAnchorLayer: CGFloat = 100
        static var widthAnchorLayer: CGFloat = 500
    }
    
    enum MetricLandscape {
        static var fontSize: CGFloat = 70
        static var leftAnchorView: CGFloat = 100
        static var bottomAnchorView: CGFloat = -20
        static var bottomAnchorButton: CGFloat = -20
        static var leftAnchorButton: CGFloat = 20
        static var rightAnchorButton: CGFloat = -20
        static var heightAnchorButton: CGFloat = 40
        static var widthAnchorButtonZero: CGFloat = 356
        static var widthAnchorButton: CGFloat = 168
        static var fontSizeButton: CGFloat = 20
        static var rightAnchorLabel: CGFloat = -100
        static var leftAnchorLabel: CGFloat = 100
        static var bottomAnchorLabel: CGFloat = -20
        static var cornerRadius: CGFloat = 20
        static var heightAnchorLayer: CGFloat = 100
        static var widthAnchorLayer: CGFloat = 1000
    }
}

extension UIView {
    func clearConstraints() {
        for subview in self.subviews {
            subview.clearConstraints()
        }
        self.removeConstraints(self.constraints)
    }
}
