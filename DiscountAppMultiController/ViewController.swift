//
//  ViewController.swift
//  DiscountAppMultiController
//
//  Created by Mallampati,Sreebharath on 3/22/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountOutlet: UITextField!
    @IBOutlet weak var discountOutlet: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var priceAfterDiscount = 0.00;

    @IBAction func onCalculateClick(_ sender: UIButton) {
        let amount = Double(amountOutlet.text!);
        
        let discountRate = Double(discountOutlet.text!);
        
        priceAfterDiscount = amount! - (amount! * discountRate!/100);
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "resultSegue"
        {
           //make ResulViewController as a destination
            let destination = segue.destination as! ResultViewController;
            destination.amount = amountOutlet.text!;
            destination.discRate = discountOutlet.text!;
            destination.priceAfterDisc = String(priceAfterDiscount);
        }
    }
}

