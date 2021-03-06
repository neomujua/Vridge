//
//  TabBarController.swift
//  Vridge
//
//  Created by Kang Mingu on 2020/10/02.
//

import UIKit

class TabBarController: UITabBarController {
    
    // MARK: - Properties
    
    private lazy var postButton: UIButton = {
        let button = UIButton(type: .system)
        button.clipsToBounds = true
        button.imageView?.clipsToBounds = true
        button.backgroundColor = .systemGreen
        button.setImage(UIImage(systemName: "camera"), for: .normal)
        button.imageView?.contentMode = .scaleToFill
        button.tintColor = .red
        button.addTarget(self, action: #selector(handleButtonTapped), for: .touchUpInside)
        return button
    }()
    
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.barTintColor = UIColor.white.withAlphaComponent(1)

        view.addSubview(postButton)
        
        postButton.centerX(inView: view)
        postButton.anchor(bottom: view.safeAreaLayoutGuide.bottomAnchor, paddingBottom: 8)
//        postButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.2).isActive = true
//        postButton.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.2).isActive = true
        postButton.widthAnchor.constraint(equalToConstant: 65).isActive = true
        postButton.heightAnchor.constraint(equalToConstant: 65).isActive = true
        postButton.layer.cornerRadius = 65 / 2
    }
    
    
    // MARK: - Selectors
    
    @objc func handleButtonTapped() {
        let controller = PostingViewController()
        let nav = UINavigationController(rootViewController: controller)
        nav.modalPresentationStyle = .fullScreen
        
//        let nav = LoginViewController()
        
        present(nav, animated: true, completion: nil)
    }

}
