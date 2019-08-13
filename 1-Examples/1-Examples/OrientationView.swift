//
//  OrientationView.swift
//  1-Examples
//
//  Created by Jonathan Rasmusson Work Pro on 2019-08-13.
//  Copyright © 2019 Jonathan Rasmusson. All rights reserved.
//

import UIKit

class OrientationView: UIViewController {
    
    var stackView: UIStackView
    
    init() {
        stackView = makeStackView(withOrientation: .vertical)
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {

        
        super.viewDidLoad()
        
        registerForOrientationChanges()
        setupViews()
    }
    
    func registerForOrientationChanges() {
        NotificationCenter.default.addObserver(self, selector: #selector(OrientationView.rotated), name: UIDevice.orientationDidChangeNotification, object: nil)
    }
    
    func setupViews() {
        navigationItem.title = "Orientations"
        
        let emailTextField = makeTextField(withPlaceholderText: "email address")
        let passwordTextField = makeTextField(withPlaceholderText: "password")
        let loginButton = makeButton(withText: "Login")
        
        stackView.addArrangedSubview(emailTextField)
        stackView.addArrangedSubview(passwordTextField)
        stackView.addArrangedSubview(loginButton)
        
        view.addSubview(stackView)
        
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    @objc func rotated() {
        if UIDevice.current.orientation.isLandscape {
            print("Landscape")
            stackView.axis = .horizontal
        } else {
            print("Portrait")
            stackView.axis = .vertical
        }
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
//    - (void)orientationChanged:(BOOL)isPortrait
//    {
//    if (isPortrait) {
//    self.stackView.axis = UILayoutConstraintAxisVertical;
//    [self.innerView adjustForPortrait];
//    } else {
//    self.stackView.axis = UILayoutConstraintAxisHorizontal;
//    [self.innerView adjustForLandscape];
//    }
//    }

}
