//
//  ViewController.swift
//  WormholeExample
//
//  Created by apple on 11/05/23.
//

import UIKit
import MMWormhole

extension String
{
    var toNS: NSString
    {
        get
        {
            return (self as NSString)
        }
    }
}

class ViewController: UIViewController
{
    let wormhole = MMWormhole(applicationGroupIdentifier: "group.com.sclera.WormholeExample", optionalDirectory: "wormholeexample")
    @IBOutlet weak var outputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wormhole.listenForMessage(withIdentifier: "numberclicked")
        {
            (result) in
            if let finalResult = result
            {
                self.display(result: (finalResult as! String))
            }
        }
    }
    
    func display(result: String)
    {
        outputLabel.text = "New Wormhole Message: \(result)"
    }
    
    @IBAction func button1clicked(_ sender: Any)
    {
        
    }
    
    
    @IBAction func button2clicked(_ sender: Any)
    {
        
    }
    
    
    @IBAction func button3clicked(_ sender: Any)
    {
        
    }
    
}
