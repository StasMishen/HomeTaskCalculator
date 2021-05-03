//
//  ViewController.swift
//  calculator
//
//  Created by Стас on 17.04.2021.
//

import UIKit

class ViewController: UIViewController {

    var orientation: Bool = true
    
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
        return createButton(title: "/", color: .white, backgroundColor: .systemOrange)
    }()
    
    private lazy var multiplyButton: UIButton = {
        var button = UIButton(type: .system)
        return createButton(title: "X", color: .white, backgroundColor: .systemOrange)
    }()
    
    private lazy var substractButton: UIButton = {
        var button = UIButton(type: .system)
        return createButton(title: "-", color: .white, backgroundColor: .systemOrange)
    }()
    
    private lazy var summButton: UIButton = {
        var button = UIButton(type: .system)
        return createButton(title: "+", color: .white, backgroundColor: .systemOrange)
    }()
    
    private lazy var equallyButton: UIButton = {
        var button = UIButton(type: .system)
        return createButton(title: "=", color: .white, backgroundColor: .systemOrange)
    }()
    
    private lazy var percentButton: UIButton = {
        var button = UIButton(type: .system)
        return createButton(title: "%", color: .black, backgroundColor: .systemGray2)
    }()
    
    private lazy var nineButton: UIButton = {
        var button = UIButton(type: .system)
        return createButton(title: "9", color: .white, backgroundColor: .darkGray)
    }()
    
    private lazy var sixButton: UIButton = {
        var button = UIButton(type: .system)
        return createButton(title: "6", color: .white, backgroundColor: .darkGray)
    }()
    
    private lazy var threeButton: UIButton = {
        var button = UIButton(type: .system)
        return createButton(title: "3", color: .white, backgroundColor: .darkGray)
    }()
    
    private lazy var pointButton: UIButton = {
        var button = UIButton(type: .system)
        return createButton(title: ".", color: .white, backgroundColor: .darkGray)
    }()
    
    private lazy var giveOrTakeButton: UIButton = {
        var button = UIButton(type: .system)
        return createButton(title: "+/-", color: .black, backgroundColor: .systemGray2)
    }()
    
    private lazy var eigthButton: UIButton = {
        var button = UIButton(type: .system)
        return createButton(title: "8", color: .white, backgroundColor: .darkGray)
    }()
    
    private lazy var fiveButton: UIButton = {
        var button = UIButton(type: .system)
        return createButton(title: "5", color: .white, backgroundColor: .darkGray)
    }()
    
    private lazy var twoButton: UIButton = {
        var button = UIButton(type: .system)
        return createButton(title: "2", color: .white, backgroundColor: .darkGray)
    }()
    
    private lazy var zeroButton: UIButton = {
        var button = UIButton(type: .system)
        return createButton(title: "0", color: .white, backgroundColor: .darkGray)
    }()
    
    private lazy var clearButton: UIButton = {
        var button = UIButton(type: .system)
        return createButton(title: "AC", color: .black, backgroundColor: .systemGray2)
    }()
    
    private lazy var sevenButton: UIButton = {
        var button = UIButton(type: .system)
        return createButton(title: "7", color: .white, backgroundColor: .darkGray)
    }()
    
    private lazy var fourButton: UIButton = {
        var button = UIButton(type: .system)
        return createButton(title: "4", color: .white, backgroundColor: .darkGray)
    }()
    
    private lazy var oneButton: UIButton = {
        var button = UIButton(type: .system)
        return createButton(title: "1", color: .white, backgroundColor: .darkGray)
    }()
    
    // MARK: -Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: -Settings

    override func didRotate(from fromInterfaceOrientation: UIInterfaceOrientation) {
        switch UIDevice.current.orientation{
        case .portrait:
            orientation = true
            view.clearConstraints()
            setupLayout()
        case .portraitUpsideDown:
            orientation = true
            view.clearConstraints()
            setupLayout()
        case .landscapeLeft:
            orientation = false
            view.clearConstraints()
            setupLayout()
        case .landscapeRight:
            orientation = false
            view.clearConstraints()
            setupLayout()
        default:
            view.clearConstraints()
            setupLayout()
        }
    }
    
    private func setupHierarchy() {
        view.addSubviews(zeroButton, pointButton, equallyButton, oneButton, twoButton, threeButton, summButton, fourButton, fiveButton, sixButton, substractButton, sevenButton, eigthButton, nineButton, multiplyButton, clearButton, giveOrTakeButton, percentButton, divisionButton, resultLabel)
    }

    private func setupLayout() {

        if orientation == true {
            Metric.fontSize = 70
            Metric.leftAnchorView = 28
            Metric.bottomAnchorView = 40
            Metric.bottomAnchorButton = 18
            Metric.leftAnchorButton = 18
            Metric.fontSizeButton = 28
            Metric.rightAnchorLabel = 28
            Metric.leftAnchorLabel = 28
            Metric.bottomAnchorLabel = 20
        } else {
            Metric.fontSize = 60
            Metric.leftAnchorView = 50
            Metric.bottomAnchorView = 40
            Metric.bottomAnchorButton = 10
            Metric.leftAnchorButton = 10
            Metric.fontSizeButton = 20
            Metric.rightAnchorLabel = 50
            Metric.leftAnchorLabel = 50
            Metric.bottomAnchorLabel = 10
        }
        
        // 0
        zeroButton.addConstraints(left: view.leadingAnchor,
                                  paddingLeft: Metric.leftAnchorView,
                                  bottom: view.bottomAnchor,
                                  paddingBottom: Metric.bottomAnchorView,
                                  width: sizeButtonWidth() * 2 + Metric.leftAnchorButton,
                                  height: sizeButtonHeigth(),
                                  cornerRadius: buttonCornerRadius())

        // .
        pointButton.addConstraints(left: zeroButton.trailingAnchor,
                                   paddingLeft: Metric.leftAnchorButton,
                                   bottom: view.bottomAnchor,
                                   paddingBottom: Metric.bottomAnchorView,
                                   width: sizeButtonWidth(),
                                   height: sizeButtonHeigth(),
                                   cornerRadius: buttonCornerRadius())

        // =
        equallyButton.addConstraints(left: pointButton.trailingAnchor,
                                     paddingLeft: Metric.leftAnchorButton,
                                     bottom: view.bottomAnchor,
                                     paddingBottom: Metric.bottomAnchorView,
                                     width: sizeButtonWidth(),
                                     height: sizeButtonHeigth(),
                                     cornerRadius: buttonCornerRadius())

        // 1
        oneButton.addConstraints(left: view.leadingAnchor,
                                 paddingLeft: Metric.leftAnchorView,
                                 bottom: zeroButton.topAnchor,
                                 paddingBottom: Metric.bottomAnchorButton,
                                 width: sizeButtonWidth(),
                                 height: sizeButtonHeigth(),
                                 cornerRadius: buttonCornerRadius())

        // 2
        twoButton.addConstraints(left: oneButton.trailingAnchor,
                                 paddingLeft: Metric.leftAnchorButton,
                                 bottom: zeroButton.topAnchor,
                                 paddingBottom: Metric.bottomAnchorButton,
                                 width: sizeButtonWidth(),
                                 height: sizeButtonHeigth(),
                                 cornerRadius: buttonCornerRadius())
        // 3
        threeButton.addConstraints(left: twoButton.trailingAnchor,
                                   paddingLeft: Metric.leftAnchorButton,
                                   bottom: pointButton.topAnchor,
                                   paddingBottom: Metric.bottomAnchorButton,
                                   width: sizeButtonWidth(),
                                   height: sizeButtonHeigth(),
                                   cornerRadius: buttonCornerRadius())
        // +
        summButton.addConstraints(left: threeButton.trailingAnchor,
                                  paddingLeft: Metric.leftAnchorButton,
                                  bottom: equallyButton.topAnchor,
                                  paddingBottom: Metric.bottomAnchorButton,
                                  width: sizeButtonWidth(),
                                  height: sizeButtonHeigth(),
                                  cornerRadius: buttonCornerRadius())

        // 4
        fourButton.addConstraints(left: view.leadingAnchor,
                                  paddingLeft: Metric.leftAnchorView,
                                  bottom: oneButton.topAnchor,
                                  paddingBottom: Metric.bottomAnchorButton,
                                  width: sizeButtonWidth(),
                                  height: sizeButtonHeigth(),
                                  cornerRadius: buttonCornerRadius())

        // 5
        fiveButton.addConstraints(left: fourButton.trailingAnchor,
                                  paddingLeft: Metric.leftAnchorButton,
                                  bottom: twoButton.topAnchor,
                                  paddingBottom: Metric.bottomAnchorButton,
                                  width: sizeButtonWidth(),
                                  height: sizeButtonHeigth(),
                                  cornerRadius: buttonCornerRadius())

        // 6
        sixButton.addConstraints(left: fiveButton.trailingAnchor,
                                 paddingLeft: Metric.leftAnchorButton,
                                 bottom: threeButton.topAnchor,
                                 paddingBottom: Metric.bottomAnchorButton,
                                 width: sizeButtonWidth(),
                                 height: sizeButtonHeigth(),
                                 cornerRadius: buttonCornerRadius())

        // -
        substractButton.addConstraints(left: sixButton.trailingAnchor,
                                       paddingLeft: Metric.leftAnchorButton,
                                       bottom: summButton.topAnchor,
                                       paddingBottom: Metric.bottomAnchorButton,
                                       width: sizeButtonWidth(),
                                       height: sizeButtonHeigth(),
                                       cornerRadius: buttonCornerRadius())

        // 7
        sevenButton.addConstraints(left: view.leadingAnchor,
                                   paddingLeft: Metric.leftAnchorView,
                                   bottom: fourButton.topAnchor,
                                   paddingBottom: Metric.bottomAnchorButton,
                                   width: sizeButtonWidth(),
                                   height: sizeButtonHeigth(),
                                   cornerRadius: buttonCornerRadius())

        // 8
        eigthButton.addConstraints(left: sevenButton.trailingAnchor,
                                   paddingLeft: Metric.leftAnchorButton,
                                   bottom: fiveButton.topAnchor,
                                   paddingBottom: Metric.bottomAnchorButton,
                                   width: sizeButtonWidth(),
                                   height: sizeButtonHeigth(),
                                   cornerRadius: buttonCornerRadius())

        // 9
        nineButton.addConstraints(left: eigthButton.trailingAnchor,
                                  paddingLeft: Metric.leftAnchorButton,
                                  bottom: sixButton.topAnchor,
                                  paddingBottom: Metric.bottomAnchorButton,
                                  width: sizeButtonWidth(),
                                  height: sizeButtonHeigth(),
                                  cornerRadius: buttonCornerRadius())

        // *
        multiplyButton.addConstraints(left: nineButton.trailingAnchor,
                                      paddingLeft: Metric.leftAnchorButton,
                                      bottom: substractButton.topAnchor,
                                      paddingBottom: Metric.bottomAnchorButton,
                                      width: sizeButtonWidth(),
                                      height: sizeButtonHeigth(),
                                      cornerRadius: buttonCornerRadius())

        // AC
        clearButton.addConstraints(left: view.leadingAnchor,
                                   paddingLeft: Metric.leftAnchorView,
                                   bottom: sevenButton.topAnchor,
                                   paddingBottom: Metric.bottomAnchorButton,
                                   width: sizeButtonWidth(),
                                   height: sizeButtonHeigth(),
                                   cornerRadius: buttonCornerRadius())
        // +/-
        giveOrTakeButton.addConstraints(left: clearButton.trailingAnchor,
                                        paddingLeft: Metric.leftAnchorButton,
                                        bottom: eigthButton.topAnchor,
                                        paddingBottom: Metric.bottomAnchorButton,
                                        width: sizeButtonWidth(),
                                        height: sizeButtonHeigth(),
                                        cornerRadius: buttonCornerRadius())

        // %
        percentButton.addConstraints(left: giveOrTakeButton.trailingAnchor,
                                     paddingLeft: Metric.leftAnchorButton,
                                     bottom: nineButton.topAnchor,
                                     paddingBottom: Metric.bottomAnchorButton,
                                     width: sizeButtonWidth(),
                                     height: sizeButtonHeigth(),
                                     cornerRadius: buttonCornerRadius())
        // /
        divisionButton.addConstraints(left: percentButton.trailingAnchor,
                                      paddingLeft: Metric.leftAnchorButton,
                                      bottom: multiplyButton.topAnchor,
                                      paddingBottom: Metric.bottomAnchorButton,
                                      width: sizeButtonWidth(),
                                      height: sizeButtonHeigth(),
                                      cornerRadius: buttonCornerRadius())

        // label
        resultLabel.addConstraints(left: view.leadingAnchor,
                                   paddingLeft: Metric.leftAnchorLabel,
                                   right: view.trailingAnchor,
                                   paddingRight: Metric.rightAnchorLabel,
                                   bottom: divisionButton.topAnchor,
                                   paddingBottom: Metric.bottomAnchorLabel,
                                   width: view.frame.size.width - Metric.leftAnchorLabel - Metric.rightAnchorLabel,
                                   height: Metric.heightAnchorLayer)
    }

    private func setupView() {
        view.backgroundColor = .black
    }
    
    // MARK: -Privat func

    private func sizeButtonWidth() -> CGFloat {
        return (view.frame.size.width - (Metric.leftAnchorButton * 3) - (Metric.leftAnchorView * 2)) / 4
    }

    private func sizeButtonHeigth() -> CGFloat {
        if orientation == true {
        return (view.frame.size.width - (Metric.leftAnchorButton * 3) - (Metric.leftAnchorView * 2)) / 4
        } else {
            return ((view.frame.size.width - (Metric.leftAnchorButton * 3) - (Metric.leftAnchorView * 2)) / 4) / 5
        }
    }
    private func buttonCornerRadius() -> CGFloat {
        if orientation == true {
        return ((view.frame.size.width - (Metric.leftAnchorButton * 3) - (Metric.leftAnchorView * 2)) / 4) / 2
        } else {
            return ((view.frame.size.width - (Metric.leftAnchorButton * 3) - (Metric.leftAnchorView * 2)) / 4) / 10
        }
    }
    
    private func createButton(title: String, color: UIColor, backgroundColor: UIColor) -> UIButton {
        let button = UIButton()
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
        static var bottomAnchorView: CGFloat = 40
        static var bottomAnchorButton: CGFloat = 18
        static var leftAnchorButton: CGFloat = 18
        static var fontSizeButton: CGFloat = 28
        static var rightAnchorLabel: CGFloat = 28
        static var leftAnchorLabel: CGFloat = 28
        static var bottomAnchorLabel: CGFloat = 20
        static var heightAnchorLayer: CGFloat = 100
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
