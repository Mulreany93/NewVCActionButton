//
//  ViewControllerHome.swift
//  KDCircularProgressExample
//
//  Created by Joseph Mulreany on 16/08/2016.
//  Copyright © 2016 Kaan Dedeoglu. All rights reserved.
//

import UIKit
import Foundation

class ViewControllerHome: UIViewController {

   
    
    
    @IBOutlet weak var scorelbl: UILabel!
    @IBOutlet weak var scorebutton: UIButton!
    
    var scorestart = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func showProgressActn(sender: UIButton) {
        
        let viewScene = self.navigationController?.storyboard?.instantiateViewControllerWithIdentifier("ViewControllerVC_ID") as! ViewController
        
        viewScene.labeltext = String(scorestart)
        
        self.navigationController?.pushViewController(viewScene, animated: true)
    }


    @IBAction func counter(sender: AnyObject) {
        scorestart += 1
        scorelbl.text = NSString(format: "%i", scorestart) as String
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let DestViewController : ViewController = segue.destinationViewController as! ViewController
        DestViewController.scoretext = scorelbl
        

        
    }
    
    }
        
    