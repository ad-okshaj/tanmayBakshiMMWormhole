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
    let wormhole = MMWormhole(applicationGroupIdentifier: "group.com.sclera.WormholeExample", optionalDirectory: nil)
    
    @IBOutlet weak var outputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wormhole.listenForMessage(withIdentifier: "numberclicked")
        {
            (result) in
            if let finalResult = result
            {
                self.outputLabel.text = "New Wormhole Message: \(finalResult)"
                
            }
        }
    }
    
    @IBAction func button1clicked(_ sender: Any)
    {
        wormhole.passMessageObject("1".toNS, identifier: "numberclicked")
    }
    
    
    @IBAction func button2clicked(_ sender: Any)
    {
        wormhole.passMessageObject("2".toNS, identifier: "numberclicked")
    }
    
    
    @IBAction func button3clicked(_ sender: Any)
    {
        wormhole.passMessageObject("3".toNS, identifier: "numberclicked")
    }
    
}
