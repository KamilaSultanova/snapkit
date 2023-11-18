//
//  SecondViewController.swift
//  snapkit_test
//
//  Created by Kamila Sultanova on 18.11.2023.
//

import UIKit
import SnapKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let iv = UIImageView()
        let desciption = UILabel()
        
        
        view.addSubview(iv)
        view.addSubview(desciption)

        iv.image = UIImage(named: "yoga2")
        iv.contentMode = .scaleAspectFill
        
        desciption.text = "Yoga is a mind and body practice that can build strength and flexibility. It may also help manage pain and reduce stress."
        desciption.textAlignment = .justified
        desciption.numberOfLines = 10
        desciption.textColor = .systemBrown
        desciption.font = UIFont(name: "Helvetica", size: 18)
        
        iv.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            
        }
        
        desciption.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).inset(20)
            make.horizontalEdges.equalToSuperview().inset(24)
        }
    }
    

 

}
