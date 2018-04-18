//
//  ScheduleInterfaceController.swift
//  Watch Extension
//
//  Created by user on 4/17/18.
//  Copyright © 2018 Mic Pringle. All rights reserved.
//

import WatchKit

class ScheduleInterfaceController: WKInterfaceController {

    @IBOutlet var flightsTable: WKInterfaceTable!
    
    var flights = Flight.allFlights()
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        flightsTable.setNumberOfRows(flights.count, withRowType: "FlightRow")
    }
}
