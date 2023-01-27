//
//  BookingScreenViewController.swift
//  desafio2
//
//  Created by unicred on 02/01/23.
//

import UIKit

class BookingScreenViewController: UIViewController {
    
    var addConstrainsBooking = BookingScreenView()
    
    override func loadView() {
        view = addConstrainsBooking
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func receiveTypeService(id: Int) {
        switch id {
        case 2:
            addConstrainsBooking.addConstraintsStandard()
            break
        case 3:
            addConstrainsBooking.addConstraintsMaximum()
            break
        default:
            addConstrainsBooking.addConstraintsMinimum()
        }
    }
}
