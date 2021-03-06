//
//  BlogViewController.swift
//  HonorCollegeSAUProJ
//
//  Created by Favour Ori on 9/3/17.
//  Copyright © 2017 Favour Ori. All rights reserved.
//

import UIKit

class BlogViewController: UIViewController {

    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    
    @IBOutlet weak var loadBlog: UIWebView!
    
    @IBAction func back(_ sender: UIButton) {
        loadBlog.goBack()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sideMenu()
        
        
        
        
        let url = URL(string: "https://sauhc.blogspot.com")
        loadBlog.loadRequest(URLRequest(url: url!))

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    
    
    func  sideMenu() {
        
        if revealViewController() != nil {
            menuButton.target = revealViewController()
            
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            
            revealViewController().rearViewRevealWidth = 300
            
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
            
        }
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
