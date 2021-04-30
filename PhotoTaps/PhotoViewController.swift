//
//  PhotoViewController.swift
//  PhotoTaps
//
//  Created by Бейбарыс Шагай on 3/31/21.
//  Copyright © 2021 Бейбарыс Шагай. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {
    @IBOutlet weak var photoImageView: UIImageView!
    
    var image: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        photoImageView.image = image
    }
    
    @IBAction func shareAction(_ sender: Any) {
        
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        
        shareController.completionWithItemsHandler = { _, bool, _, _ in
            if bool {
                print("Successful")
            }
        }
        
        present(shareController, animated: true, completion: nil)
    }
    
   

}
