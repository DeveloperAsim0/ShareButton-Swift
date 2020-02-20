//
//  ViewController.swift
//  ShareButton-iOS
//
//  Created by Mihir Vyas on 19/02/20.
//  Copyright © 2020 Mihir Vyas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let image: UIImageView = {
        let images = UIImageView()
        images.layer.borderWidth = 2
        let color: UIColor = UIColor.cyan
        images.layer.borderColor = color.cgColor
        images.clipsToBounds = true
        images.image = #imageLiteral(resourceName: "pexels-photo-3589903")
        images.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
        images.contentMode = .scaleAspectFill
        return images
    } ()
    
    let button: UIButton = {
        let myButton = UIButton()
        myButton.frame = CGRect(x: 100, y: 369, width: 200, height: 40)
        myButton.layer.cornerRadius = 4
        myButton.clipsToBounds = true
        myButton.backgroundColor = .white
        myButton.setTitle("Share", for: .normal)
        myButton.setTitleColor(.black, for: .normal)
        myButton.titleLabel?.font = UIFont(name: "Futura", size: 19)
        myButton.addTarget(self, action: #selector(shareButton), for: .touchUpInside)
        return myButton
    } ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .black
        self.view.addSubview(image)
        self.view.addSubview(button)
        // Do any additional setup after loading the view, typically from a nib.
    }

    @objc func shareButton() {
        let activityVC = UIActivityViewController(activityItems: [self.image.image], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = self.view
        self.present(activityVC, animated: true, completion: nil)
        print("hurray !!!!!!")
    }
    
    
}

