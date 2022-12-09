//
//  DoneSignUpViewController.swift
//  NavController test
//
//  Created by Mikhail Tedeev on 09.12.2022.
//

import UIKit

class DoneSignUpViewController: UIViewController {

    //MARK: - View Elements
    
    var doneButton = UIButton()
    var congratsLabel = UILabel()
    //var navigationBar = UINavigationBar()
    
    //MARK: - View did load
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        doneButtonAppearance()
        congratsLabelAppearance()
        navigationBarAppearance()
    }
    
    //MARK: - Setup View Methods
    
    func navigationBarAppearance() {
        title = "Congratulations!"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.hidesBackButton = true

    }
    
    func congratsLabelAppearance() {
        view.addSubview(congratsLabel)
        //Text
        congratsLabel.text = "Registration is complete!"
        
        //Position
        congratsLabel.frame = CGRect(x: 85, y: 290, width: 220, height: 40)
        
    }
    
    func doneButtonAppearance() {
        doneButton = UIButton(type: .system)
        view.addSubview(doneButton)
        
        //Title
        doneButton.setTitle("Done", for: .normal)
        doneButton.setTitleColor(.white, for: .normal)
        
        //Position
        doneButton.frame = CGRect(x: 135, y: 590, width: 120, height: 40)
        
        //Background
        doneButton.backgroundColor = .black
        doneButton.layer.cornerRadius = .pi
        
        doneButton.addTarget(self, action: #selector(doneButtonAction), for: .touchUpInside)
    }

    //MARK: - View Actions
    
    @objc func doneButtonAction() {
        self.navigationController?.popToRootViewController(animated: true)
    }


}
