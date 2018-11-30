//
//  ViewController.swift
//  BlurryScrollyView
//
//  Created by Jared Anderton on 11/29/2018.
//  Copyright (c) 2018 Jared Anderton. All rights reserved.
//

import UIKit
import BlurryScrollyView

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    let blurryScrollyView = BlurryScrollyView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        blurryScrollyView.imageToBlur = UIImage(named: "sunset")
        blurryScrollyView.delegateScrollView = scrollView
        view.addSubview(blurryScrollyView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 
    @IBAction func zoomingSwitch(_ sender: UISwitch) {
        blurryScrollyView.enableZoom = sender.isOn
    }
    
    @IBAction func maxZoomSliderAction(_ sender: UISlider) {
        blurryScrollyView.maxImageZoom = Double(sender.value)
    }
    

}

