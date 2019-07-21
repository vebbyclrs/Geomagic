//
//  InformationPageViewController.swift
//  Geomagic
//
//  Created by Vebby Clarissa on 09/07/19.
//  Copyright © 2019 Geomecin. All rights reserved.
//

import UIKit

class InformationPageViewController: UIViewController {
    @IBOutlet private weak var owlImage: UIImageView!
    @IBOutlet  var titleLabel: UILabel!
    @IBOutlet var shapeImageContainer: UIView!
    @IBOutlet var shapeImage: UIImageView!
    @IBOutlet var informationLabel1: UILabel!
    @IBOutlet var informationLabel2: UILabel!
    @IBOutlet var containerInfo1: UIView!
    @IBOutlet var containerInfo2: UIView!
    
    
    var shapePassed : ShapeType? {
        didSet {
            print(shapePassed!.rawValue)
        }
    }
    var segitigaType : SegitigaTypes? {
        didSet {
            shapePassed = .segitiga
            print (segitigaType!.rawValue)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        constructView()
    }
    
    func constructView () {
        self.view.backgroundColor = UIColor(patternImage: (UIImage(named: "background.png")!))
        updateTitleAndContent()
        containerInfo1.layer.cornerRadius = 30.0
        containerInfo2.layer.cornerRadius = 30.0
    }
    
    func updateTitleAndContent() {
        //update title
        let shapeName:String
        if shapePassed == .segitiga {
            shapeName = segitigaType!.rawValue.lowercased()
        } else {
            shapeName = shapePassed!.rawValue.lowercased()
        }
        titleLabel.text = "Ciri-ciri \(shapeName): "
        updateContent()
    }
    
    func updateContent () {
        //update image content
        showImageContent()
        
        //update text content
        switch shapePassed! {
        case .persegi:
            informationLabel1.text = "Coming soon! We are under development"
            informationLabel2.text = "Coming soon! We are under development"
        case .persegiPanjang:
            let info1 = NSMutableAttributedString()
            info1.append(makeItRegularStyle(text: "Memiliki dua pasang sisi yang sama panjang\n",size: 23.0))
            info1.append(makeItBoldStyle(text: "AB = DC dan AD = BC",size: 23.0))
            informationLabel1.attributedText = info1
            
            let info2 = NSMutableAttributedString()
            info2.append(makeItRegularStyle(text: "Memiliki 4 sudut yang sama besar, masing-masing besarnya ",size: 23.0))
            info2.append(makeItBoldStyle(text: "90ᵒ",size: 23.0))
            informationLabel2.attributedText = info2
        case .segitiga:
            writeSegitigaContent()
        case .belahketupat:
            informationLabel1.text = "Coming soon! We are under development"
            informationLabel2.text = "Coming soon! We are under development"
        case .layangLayang:
            informationLabel1.text = "Coming soon! We are under development"
            informationLabel2.text = "Coming soon! We are under development"
        case .jajarGenjang:
            informationLabel1.text = "Coming soon! We are under development"
            informationLabel2.text = "Coming soon! We are under development"
        case .trapesium:
            informationLabel1.text = "Coming soon! We are under development"
            informationLabel2.text = "Coming soon! We are under development"
        case .lingkaran:
            informationLabel1.text = "Coming soon! We are under development"
            informationLabel2.text = "Coming soon! We are under development"
        }
    }
    
    func showImageContent() {
        let name:String?
        if shapePassed == .some(.segitiga){
            name = segitigaType!.rawValue.lowercased()}
        else {name = shapePassed!.rawValue.lowercased()}
        
        if let image = UIImage(named: "ciri \(name!)") {
            shapeImage.image = image
        }
        shapeImage.adjustsImageSizeForAccessibilityContentSizeCategory = true
    }
    
    func writeSegitigaContent() {
        switch segitigaType! {
        case .segitigaSamaSisi:
            let info1 = NSMutableAttributedString()
            info1.append(makeItRegularStyle(text: "Memiliki 3 buah sisi yang sama panjang\n",size: 23.0))
            info1.append(makeItBoldStyle(text: "AB = BC = CA",size: 23.0))
            informationLabel1.attributedText = info1
            
            let info2 = NSMutableAttributedString()
            info2.append(makeItRegularStyle(text: "Memiliki 3 buah sudut yang sama besar, masing-masing besarnya ",size: 23.0))
            info2.append(makeItBoldStyle(text: "60ᵒ",size: 23.0))
            informationLabel2.attributedText = info2
            
        case .segitigaSamaKaki:
            let info1 = NSMutableAttributedString()
            info1.append(makeItRegularStyle(text: "Memiliki 2 buah sisi yang sama panjang\n",size: 23.0))
            info1.append(makeItBoldStyle(text: "AB = AC",size: 23.0))
            informationLabel1.attributedText = info1
            
            let info2 = NSMutableAttributedString()
            info2.append(makeItRegularStyle(text: "Memiliki 2 sudut ",size: 23.0))
            info2.append(makeItBoldStyle(text: "berhadapan",size: 23.0))
            info2.append(makeItRegularStyle(text: " yang sama besar ",size: 23.0))
            informationLabel2.attributedText = info2
            
        case .segitigaSembarang:
            let info1 = NSMutableAttributedString()
            info1.append(makeItBoldStyle(text: "Semua",size: 23.0))
            info1.append(makeItRegularStyle(text: " sisinya memiliki panjang yang ",size: 23.0))
            info1.append(makeItBoldStyle(text: "berbeda",size: 23.0))
            informationLabel1.attributedText = info1
            
            let info2 = NSMutableAttributedString()
            info2.append(makeItBoldStyle(text: "Semua",size: 23.0))
            info2.append(makeItRegularStyle(text: " sudutnya memiliki besar yang ",size: 23.0))
            info2.append(makeItBoldStyle(text: "berbeda",size: 23.0))
            informationLabel2.attributedText = info2

        case .segitigaLancip:
            let info1 = NSMutableAttributedString()
            info1.append(makeItRegularStyle(text: "Ketiga sudutnya lancip, kurang dari 90°",size: 23.0))
            informationLabel1.attributedText = info1

            informationLabel2.isHidden = true
            containerInfo2.isHidden = true
        case .segitigaSikuSiku:
            let info1 = NSMutableAttributedString()
            info1.append(makeItRegularStyle(text: "Salah satu sudutnya siku-siku atau 90°",size: 23.0))
            informationLabel1.attributedText = info1
            
            informationLabel2.isHidden = true
            containerInfo2.isHidden = true
        case .segitigaTumpul:
            let info1 = NSMutableAttributedString()
            info1.append(makeItRegularStyle(text: "Salah satu sudutnya tumpul, lebih dari 90°",size: 23.0))
            informationLabel1.attributedText = info1
            
            informationLabel2.isHidden = true
            containerInfo2.isHidden = true
        }
    }
    
    func makeItBoldStyle(text:String,size:CGFloat) -> NSAttributedString {
        let boldAttributes = [NSAttributedString.Key.font: UIFont(name: "ChalkboardSE-Bold", size: size)!]
        return  NSAttributedString(string: text, attributes: boldAttributes)
    }
    
    func makeItRegularStyle (text:String,size:CGFloat) -> NSAttributedString {
        let regularAttributes = [NSAttributedString.Key.font: UIFont(name: "ChalkboardSE-Regular", size: size)!]
        return NSAttributedString(string: text, attributes: regularAttributes)
    }
    
    func BirdMove(){
        let images: [UIImage] = [UIImage(named: "Owl1")!, UIImage(named: "Owl2")!]
        
        owlImage.animationImages = images
        owlImage.animationDuration = 0.3
        owlImage.startAnimating()
        
    }
    @IBAction func backButtonTapped(_ sender: Any) {
        self.performSegueToReturnBack()
    }
    
}
