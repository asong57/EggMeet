//
//  HomeNoticeVC.swift
//  EggMeet
//
//  Created by asong on 2022/01/17.
//

import Foundation
import UIKit

class HomeNoticeVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "알림";
        self.navigationController?.navigationBar.topItem?.title = ""
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = false
    }
}
