//
//  ViewController.swift
//  Itrips
//
//  Created by Filipe Ferreira on 08/09/23.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var tripsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad();
        configureTable();
    }
    
    func configureTable()
    {
        let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        if let statusBarFrame = scene?.windows.first?.windowScene?.statusBarManager?.statusBarFrame {
            let statusBarView = UIView(frame: statusBarFrame);
            statusBarView.backgroundColor = UIColor(red: 30/255, green: 59/255, blue: 119/255, alpha: 1);
            view.addSubview(statusBarView);
        }
        
        tripsTableView.backgroundColor = UIColor(red: 30/255, green: 59/255, blue: 119/255, alpha: 1);
        tripsTableView.sectionHeaderTopPadding = 0;
        self.extendedLayoutIncludesOpaqueBars = true;
        
        tripsTableView.dataSource = self;
        tripsTableView.delegate = self;
        
        tripsTableView.register(UINib(nibName: "TripTableViewCell", bundle: nil), forCellReuseIdentifier: "TripTableViewCell");
    }
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .darkContent
    }
}


extension HomeViewController : UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TripTableViewCell") as? TripTableViewCell else{
            fatalError("error to create table");
        };
        
        return cell;
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 440;
    }
}

extension HomeViewController : UITableViewDelegate
{
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = Bundle.main.loadNibNamed("HomeTableViewHeader", owner: self, options: nil)?.first as? HomeTableViewHeader;
        
        headerView?.configureView();
        return headerView;
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 300;
    }
    
}
