//
//  BookingScreenView.swift
//  desafio2
//
//  Created by unicred on 04/01/23.
//

import UIKit


class BookingScreenView: UIView {
    
    lazy var ruaTxtField: UITextField = {
        let rua = UITextField()
        rua.placeholder = "Street"
        rua.borderStyle = UITextField.BorderStyle.roundedRect
        rua.autocorrectionType = UITextAutocorrectionType.no
        rua.keyboardType = UIKeyboardType.default
        rua.returnKeyType = UIReturnKeyType.done
        rua.clearButtonMode = UITextField.ViewMode.whileEditing
        rua.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        rua.autocapitalizationType = .none

        return rua
    }()
    
    lazy var numeroTxtField: UITextField = {
        let numero = UITextField()
        numero.placeholder = "Number"
        numero.borderStyle = UITextField.BorderStyle.roundedRect
        numero.autocorrectionType = UITextAutocorrectionType.no
        numero.keyboardType = UIKeyboardType.default
        numero.returnKeyType = UIReturnKeyType.done
        numero.clearButtonMode = UITextField.ViewMode.whileEditing
        numero.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        numero.autocapitalizationType = .none

        return numero
    }()
    
    lazy var complementoTxtField: UITextField = {
        let complemento = UITextField()
        complemento.placeholder = "Complement"
        complemento.borderStyle = UITextField.BorderStyle.roundedRect
        complemento.autocorrectionType = UITextAutocorrectionType.no
        complemento.keyboardType = UIKeyboardType.default
        complemento.returnKeyType = UIReturnKeyType.done
        complemento.clearButtonMode = UITextField.ViewMode.whileEditing
        complemento.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        complemento.autocapitalizationType = .none

        return complemento
    }()
    
    lazy var dateTxtField: UITextField = {
        let date = UITextField()
        date.placeholder = "Date"
        date.borderStyle = UITextField.BorderStyle.roundedRect
        date.autocorrectionType = UITextAutocorrectionType.no
        date.keyboardType = UIKeyboardType.default
        date.returnKeyType = UIReturnKeyType.done
        date.clearButtonMode = UITextField.ViewMode.whileEditing
        date.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        date.autocapitalizationType = .none

        return date
    }()
    
    lazy var hourTxtField: UITextField = {
        let hour = UITextField()
        hour.placeholder = "Hour"
        hour.borderStyle = UITextField.BorderStyle.roundedRect
        hour.autocorrectionType = UITextAutocorrectionType.no
        hour.keyboardType = UIKeyboardType.default
        hour.returnKeyType = UIReturnKeyType.done
        hour.clearButtonMode = UITextField.ViewMode.whileEditing
        hour.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        hour.autocapitalizationType = .none

        return hour
    }()
    
    lazy var bookingConfirmLabel: UILabel = {
        let bookingConfirm = UILabel()
        bookingConfirm.text = "Confirm Your Booking"
        bookingConfirm.textColor = .black
        bookingConfirm.font = UIFont.systemFont(ofSize: 20)
        bookingConfirm.textAlignment = .center
        
        return bookingConfirm
    }()
    
    lazy var serviceTypeLabel: UILabel = {
        let serviceTypeLbl = UILabel()
        serviceTypeLbl.text = "Service Type"
        serviceTypeLbl.textColor = .black
        serviceTypeLbl.font = UIFont.systemFont(ofSize: 20)
        serviceTypeLbl.textAlignment = .center
        
        return serviceTypeLbl
    }()
    
    lazy var confirmBookingButton: UIButton = {
        let confirmBooking = UIButton(type: .custom)
        confirmBooking.setTitle("Confirm", for: .normal)
        confirmBooking.titleLabel?.font = UIFont(name: "Montserrat", size: 0)
        confirmBooking.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        confirmBooking.setTitleColor(.black, for: .normal)
        confirmBooking.layer.masksToBounds = true
        confirmBooking.layer.borderWidth = 2
        confirmBooking.layer.cornerRadius = 20
        
        return confirmBooking
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addConstraints() {
        addSubview(ruaTxtField)
        addSubview(numeroTxtField)
        addSubview(complementoTxtField)
        addSubview(hourTxtField)
        addSubview(dateTxtField)
        addSubview(bookingConfirmLabel)
        addSubview(serviceTypeLabel)
        addSubview(confirmBookingButton)
        
        bookingConfirmLabel.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: dateTxtField.topAnchor, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 50, right:0), size: .init(width: 200, height: 50))
        
        dateTxtField.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 45, left: 20, bottom: 445, right: 20), size: .init(width: 200, height: 35))
        
        hourTxtField.anchor(top: dateTxtField.bottomAnchor, leading: dateTxtField.leadingAnchor, bottom: nil, trailing: dateTxtField.trailingAnchor, padding: .init(top: 20, left: 0, bottom: 445, right: 0), size: .init(width: 200, height: 35))
        
        ruaTxtField.anchor(top: hourTxtField.bottomAnchor, leading: hourTxtField.leadingAnchor, bottom: nil, trailing: hourTxtField.trailingAnchor, padding: .init(top: 20, left: 0, bottom: 230, right: 0), size: .init(width: 200, height: 35))
        
        numeroTxtField.anchor(top: ruaTxtField.bottomAnchor, leading: ruaTxtField.leadingAnchor, bottom: nil, trailing: ruaTxtField.trailingAnchor, padding: .init(top: 20, left: 0, bottom: 180, right: 0), size: .init(width: 200, height: 35))
        
        complementoTxtField.anchor(top: numeroTxtField.bottomAnchor, leading: numeroTxtField.leadingAnchor, bottom: nil, trailing: numeroTxtField.trailingAnchor, padding: .init(top: 20, left: 0, bottom: 130, right: 0), size: .init(width: 200, height: 35))
        
        serviceTypeLabel.anchor(top: complementoTxtField.bottomAnchor, leading: bookingConfirmLabel.leadingAnchor, bottom: nil, trailing: bookingConfirmLabel.trailingAnchor, padding: .init(top: 10, left: 0, bottom: 50, right:0), size: .init(width: 200, height: 50))
        
        confirmBookingButton.anchor(top: serviceTypeLabel.bottomAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 270, left: 70, bottom: 0, right: 70), size: .init(width: 200, height: 50))
    }
    
    func addConstraintsMinimum() {
        
        lazy var servicesLabel: UILabel = {
            let servicesLbl = UILabel()
            servicesLbl.text = "Minimum Repair"
            servicesLbl.textColor = .black
            servicesLbl.font = UIFont.systemFont(ofSize: 18)
            servicesLbl.textAlignment = .center
            servicesLbl.layer.borderWidth = 2
            servicesLbl.layer.cornerRadius = 7
            
            return servicesLbl
        }()
        
        addSubview(servicesLabel)
        
        servicesLabel.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 370, left: 20, bottom: 0, right: 20), size: .init(width: 140, height: 220))
    }
    
    func addConstraintsStandard() {
        
        lazy var servicesLabel: UILabel = {
            let servicesLbl = UILabel()
            servicesLbl.text = "Standard Repair"
            servicesLbl.textColor = .black
            servicesLbl.font = UIFont.systemFont(ofSize: 18)
            servicesLbl.textAlignment = .center
            servicesLbl.layer.borderWidth = 2
            servicesLbl.layer.cornerRadius = 7
            
            return servicesLbl
        }()
        
        addSubview(servicesLabel)
        
        servicesLabel.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 370, left: 20, bottom: 0, right: 20), size: .init(width: 140, height: 220))
    }
    
    func addConstraintsMaximum() {
        
        lazy var servicesLabel: UILabel = {
            let servicesLbl = UILabel()
            servicesLbl.text = "Maximum Repair"
            servicesLbl.textColor = .black
            servicesLbl.font = UIFont.systemFont(ofSize: 18)
            servicesLbl.textAlignment = .center
            servicesLbl.layer.borderWidth = 2
            servicesLbl.layer.cornerRadius = 7
            
            return servicesLbl
        }()
        
        addSubview(servicesLabel)
        
        servicesLabel.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 370, left: 20, bottom: 0, right: 20), size: .init(width: 140, height: 220))
    }
    
}
