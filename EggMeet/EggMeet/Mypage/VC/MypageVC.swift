//
//  MypageVC.swift
//  EggMeet
//
//  Created by 황지우 on 2022/01/22.
//

import UIKit

class MypageVC: UIViewController {

    @IBOutlet weak var MyPageTitle: UILabel!
    @IBOutlet weak var MenuContainerView: UIView!
    @IBOutlet weak var MyProfileImage: UIImageView!
    @IBOutlet weak var MyProfileNickname: UILabel!
    @IBOutlet weak var MyGrowthPointImage: UIImageView!
    @IBOutlet weak var MyGrowthStageLabel: UILabel!
    @IBOutlet weak var MyPossessGrowthPoint: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // MyPageTitle.adjustsFontSizeToFitWidth = true
        MyProfileNickname.adjustsFontSizeToFitWidth = true
        // userimage를 원형으로 crop
        MyProfileImage.layer.cornerRadius = MyProfileImage.frame.height/2
        MyProfileImage.layer.borderWidth = 1
        MyProfileImage.clipsToBounds = true
        MyProfileImage.layer.borderColor = UIColor.clear.cgColor
        //원형 이미지의 테두리 제거
        setProfileData()
        MyPossessGrowthPoint.adjustsFontSizeToFitWidth = true
        setGrowthpointData()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goToSeeMyProfile(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "SeeMyProfile", sender: self)
        
    }
        
    @IBAction func GoToSeeGrowthStages(_ sender: UIButton) {
        
       
    }
    
    func setProfileData(){
            MypageNetwork.shared.getMypageData() { data in
                
                self.MyProfileNickname.text = data.nickname
                
                }
        
        
        }
    
 
    
    func setGrowthpointData(){
        MypageNetwork.shared.getMypageData() { data in
            
            self.MyPossessGrowthPoint.text = "\(data.growthPoint)"
            
            }
            
           
    }
        
       
    }



