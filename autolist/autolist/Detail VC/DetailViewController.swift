//
//  DetailViewController.swift
//  autolist
//
//  Created by Marc Jesus on 03/12/2020.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailImage: UIImageView!
    
    var imageName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailImage.image = UIImage (named: self.imageName)
        
        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    func commonInit(_ imageName: String, title: String)
    {
        self.imageName = imageName
        self.title = title
    }

}
