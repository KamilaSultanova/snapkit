//
//  ViewController.swift
//  snapkit_test
//
//  Created by Kamila Sultanova on 17.11.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let iv = UIImageView()
        let label1 = UILabel()
        let label2 = UILabel()
        let iv2 = UIImageView()
        let button = UIButton()
        
        
        view.addSubview(iv)
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(button)
        view.addSubview(iv2)
        
        
        iv.image = UIImage(named: "yoga1")
        iv.contentMode = .scaleAspectFill
        
        label1.text = "Easy Yoga"
        label1.font = UIFont(name: "Impact", size: 40)
        
        label2.text = "#1 Yoga \nApp"
        label2.numberOfLines = 2
        label2.textAlignment = .center
        label2.font = UIFont(name: "Copperplate", size: 14)
        label2.textColor = .black
   
        button.setTitle("Start now", for: .normal)
        button.titleLabel?.font = UIFont(name: "Impact", size: 24)
        button.backgroundColor = .systemGreen.withAlphaComponent(0.3)
        button.layer.cornerRadius = 12
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        iv2.image = UIImage(named: "laurel")
        
        
        iv.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            
        }
        
        label1.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(100)
            make.right.equalToSuperview().inset(35)
        }
        
        
        iv2.snp.makeConstraints { make in
            make.top.equalTo(label1.snp.bottom).offset(30)
            make.centerX.equalTo(label1)
            make.height.equalTo(80)
            make.width.equalTo(100)
        }
        
        label2.snp.makeConstraints { make in
            make.centerX.equalTo(iv2)
            make.centerY.equalTo(iv2)
        }
        
        button.snp.makeConstraints { make in
            make.bottom.equalTo(view.safeAreaLayoutGuide)
            make.horizontalEdges.equalToSuperview().inset(20)
            make.height.equalTo(56)
        }
    }
    
    @objc func buttonTapped(){
        let secondVC = SecondViewController()
        
        navigationController?.show(secondVC, sender: self)
    }
}
