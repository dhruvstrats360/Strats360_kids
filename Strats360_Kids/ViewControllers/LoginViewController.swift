//
//  ViewController.swift
//  Strats360_Kids
//
//  Created by Strats 360 on 26/12/22.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var imgLogoCover: UIImageView!
    @IBOutlet weak var imgDisplaytoons: UIImageView!
    @IBOutlet weak var btnSignUp: UIButton!
    @IBOutlet weak var btnLogin: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationItem.hidesSearchBarWhenScrolling = true
        imgLogoCover.layer.cornerRadius = 20
        editbtn(btn: btnLogin)
        editbtn(btn: btnSignUp)
        
        // some edit spl for SignUp btn.
        
        btnSignUp.layer.borderWidth = 1.6
        btnSignUp.layer.borderColor = UIColor.red.cgColor
        self.navigationController?.isNavigationBarHidden = true
    }
    
    func editbtn(btn: UIButton){
        btn.layer.shadowColor = UIColor.black.cgColor
        btn.layer.shadowPath = CGPath(rect: CGRect(x: 5, y: 35, width: 290, height: 10), transform: .none)
        btn.layer.shadowRadius = 5
        btn.layer.shadowOpacity = 2
        btn.layer.cornerRadius = 10
    }
    
    @IBAction func LoginBtnPressed(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: Bundle.main)
        let secondVC = sb.instantiateViewController(identifier: "GenderViewController")
               self.navigationController?.pushViewController(secondVC, animated: true)

    }
    @IBAction func SignUPBtnPressed(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: Bundle.main)
        let secondVC = sb.instantiateViewController(identifier: "GenderViewController")
               self.navigationController?.pushViewController(secondVC, animated: true)
    }
}
