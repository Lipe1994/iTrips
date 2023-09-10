//
//  HomeTableViewHeader.swift
//  Itrips
//
//  Created by Filipe Ferreira on 08/09/23.
//

import UIKit

class HomeTableViewHeader: UIView {
    @IBOutlet weak var backgroundBlue: UIView!
    
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var bannerView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    
    
    
    
    func configureView(){
        headerView.backgroundColor = UIColor(red: 30/255, green: 59/255, blue: 119/255, alpha: 1);
        
        bannerView.layer.cornerRadius = 12.0;
        bannerView.layer.masksToBounds = true;
        
        backgroundBlue.layer.cornerRadius = 500;
        backgroundBlue.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner];
        
    }
}
