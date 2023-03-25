//
//  DetailViewController.swift
//  LandmarkBook
//
//  Created by Italo Stuardo on 24/3/23.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var landmarkLabel: UILabel!
    @IBOutlet weak var landmarkImage: UIImageView!
    
    var selectedLandmark = ""
    var selectedLandmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        landmarkLabel.text = selectedLandmark
        landmarkImage.image = selectedLandmarkImage
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
