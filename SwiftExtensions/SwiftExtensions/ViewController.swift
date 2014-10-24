//
//  ViewController.swift
//  SwiftExtensions
//
//  Created by Daniel Love on 24/10/2014.
//  Copyright (c) 2014 Daniel Love. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let arrayOne = [0, 1, 2, 3, 4, 5]
        let arrayTwo = [0, 1, 2, 3, 4, 5]
        
        NSLog("Array One: \(arrayOne)")
        NSLog("Array One: \(arrayTwo)")
        
        // Result: [0, 2, 4, 6, 8, 10]
        NSLog("Combined: \(arrayOne.combineValues(arrayTwo))")
        
        // Result: [0, 1, 2, 4, 6, 8, 4, 5]
        NSLog("Offseted: \(arrayOne.combineValues(arrayTwo, offset: 2))")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

