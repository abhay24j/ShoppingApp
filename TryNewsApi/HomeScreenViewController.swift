//
//  HomeScreenViewController.swift
//  TryNewsApi
//
//  Created by Abhay Kmar on 23/06/22.
//

import UIKit

class HomeScreenViewController: UIViewController {

    @IBOutlet weak var topImageView: UIImageView!
    @IBOutlet weak var categoryImageView: UIImageView!
    
    @IBOutlet weak var homeBtn: UIButton!
    @IBOutlet weak var mobileBtn: UIButton!
    @IBOutlet weak var newsBtn: UIButton!
    @IBOutlet weak var offersBtn: UIButton!
    @IBOutlet weak var homeLbl: UILabel!
    @IBOutlet weak var mobileLbl: UILabel!
    @IBOutlet weak var newsLbl: UILabel!
    @IBOutlet weak var offerLbl: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func homeButton(_ sender: Any) {
    }
    
    @IBAction func mobileButton(_ sender: Any) {
    }
    @IBAction func newsButton(_ sender: Any) {
        let storyboard2 = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard2.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func offersButton(_ sender: Any) {
    }
    
    
    
    
    
    
    @IBAction func newsBtn(_ sender: Any) {
        let storyboard2 = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard2.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
