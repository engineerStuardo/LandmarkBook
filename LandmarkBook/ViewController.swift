//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Italo Stuardo on 22/3/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var landmarkName = [String]()
    var landmarkImages = [UIImage]()
    var selectedIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        landmarkName.append("Colosseum")
        landmarkName.append("Kremlin")
        landmarkName.append("Stonehenge")
        landmarkName.append("Taj Mahal")
        landmarkName.append("The Great Wall Of China")
        
        landmarkImages.append(UIImage(named: "colosseum.jpg")!)
        landmarkImages.append(UIImage(named: "kremlin.jpeg")!)
        landmarkImages.append(UIImage(named: "stonehenge.jpeg")!)
        landmarkImages.append(UIImage(named: "tajmahal.jpeg")!)
        landmarkImages.append(UIImage(named: "thegreatwall.jpg")!)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        //cell.textLabel?.text = "Testing"
        
        var content = cell.defaultContentConfiguration()
        content.text = landmarkName[indexPath.row]
        //ontent.secondaryText = "Subtitle"
        cell.contentConfiguration = content
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIndex = indexPath.row
        performSegue(withIdentifier: "toDetailVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC" {
            let destination = segue.destination as! DetailViewController
            destination.selectedLandmarkImage = landmarkImages[selectedIndex]
            destination.selectedLandmark = landmarkName[selectedIndex]
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            landmarkName.remove(at: indexPath.row)
            landmarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}

