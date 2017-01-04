//
//  ViewController.swift
//  map kit
//
//  Created by Parth Changela on 02/01/17.
//  Copyright © 2017 Parth Changela. All rights reserved.
//

import UIKit
import MapKit


class ViewController: UIViewController {


    @IBOutlet weak var map: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let location = CLLocationCoordinate2DMake(22.309155, 70.782242)

        let span = MKCoordinateSpanMake(0.2,0.2)
        let region = MKCoordinateRegion(center: location, span: span)
        map.setRegion(region, animated: true)

        let dropPin = MKPointAnnotation()
        dropPin.coordinate = location
        dropPin.title = "PC Mex"
        dropPin.subtitle = "youtube"
        map.addAnnotation(dropPin)
        


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

