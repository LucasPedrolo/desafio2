//
//  HomeScreenViewController.swift
//  desafio2
//
//  Created by unicred on 02/01/23.
//

import UIKit

class HomeScreenViewController: UIViewController {
    
    var addConstraintsHome = HomeScreenView()
    var test = SignUpViewController()
    
    override func loadView() {
        view = addConstraintsHome
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addConstraintsHome.minimumButton.addTarget(self, action: #selector(minimumButtonFunction), for: .touchUpInside)
        addConstraintsHome.standardButton.addTarget(self, action: #selector(standardButtonFunction), for: .touchUpInside)
        addConstraintsHome.maximumButton.addTarget(self, action: #selector(maximumButtonFunction), for: .touchUpInside)
    }
    
    @objc func minimumButtonFunction() {
        navigationToBooking(id: 1)
    }
    
    @objc func standardButtonFunction() {
        navigationToBooking(id: 2)
    }
    
    @objc func maximumButtonFunction() {
        navigationToBooking(id: 3)
    }
    
    func navigationToBooking(id: Int) {
        let bookingViewController = BookingScreenViewController()
        
        bookingViewController.receiveTypeService(id: id)
        
        self.navigationController?.pushViewController(bookingViewController, animated: true)
    }
}
