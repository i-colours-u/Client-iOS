//
//  StampCell.swift
//  Sopt-27th-HACKATHON-6th
//
//  Created by 송지훈 on 2020/11/21.
//

import UIKit

class StampCell: UICollectionViewCell {
    
    
    
    //MARK:- IBOutlet Part
    /// Label, ColelctionView, TextField, ImageView 등 @IBOutlet 변수들을 선언합니다.  // 변수명 lowerCamelCase 사용
    /// ex)  @IBOutlet weak var qnaTextBoxBackgroundImage: UIImageView!
    
    @IBOutlet weak var plateImageView: UIImageView!
    
    @IBOutlet weak var plateCountLabel: UILabel!
    
    //MARK:- Variable Part
    /// 뷰컨에 필요한 변수들을 선언합니다  // 변수명 lowerCamelCase 사용
    /// ex)  var imageViewList : [UIImageView] = []
    

    
    

    //MARK:- Constraint Part
    /// 스토리보드에 있는 layout 에 대한 @IBOutlet 을 선언합니다. (Height, Leading, Trailing 등등..)  // 변수명 lowerCamelCase 사용
    /// ex) @IBOutlet weak var lastImageBottomConstraint: NSLayoutConstraint!
    
    
    @IBOutlet weak var labelLeftConstraint: NSLayoutConstraint!
    
    //MARK:- Life Cycle Part
    /// 앱의 Life Cycle 부분을 선언합니다
    /// ex) override func viewWillAppear() { }

    //MARK:- IBAction Part
    /// 버튼과 같은 동작을 선언하는 @IBAction 을 선언합니다 , IBAction 함수 명은 동사 형태로!!  // 함수명 lowerCamelCase 사용
    /// ex) @IBAction func answerSelectedButtonClicked(_ sender: Any) {  code .... }
    
    
    
    //MARK:- default Setting Function Part
    /// 기본적인 세팅을 위한 함수 부분입니다 // 함수명 lowerCamelCase 사용
    /// ex) func tableViewSetting() {
    ///         myTableView.delegate = self
    ///         myTableView.datasource = self
    ///    }
    func settingCell(isMara : Bool, count : Int, isLevelUP : Bool,isFilled : Bool)
    {
        if isMara == true // 마라에서
        {
            if isLevelUP == false // 일반 그릇
            {
                
                if isFilled == true
                {
                    plateImageView.image = UIImage(named: "malaStampSelected")
                    plateCountLabel.isHidden = true
                }
                else
                {
                    plateImageView.image = UIImage(named: "malaStampUnselected")
                    plateCountLabel.isHidden = false
                }

                plateCountLabel.text = "\(count)마라"
                
                if count >= 10
                {
                    labelLeftConstraint.constant = 42

                }
                else
                {
                    labelLeftConstraint.constant = 46

                }
                
               
                
            }
            else //레벨업
            {
                if isFilled == true
                {
                    plateImageView.image = UIImage(named: "malaStampSelected")
                    plateCountLabel.isHidden = true
                }
                else
                {
                    plateImageView.image = UIImage(named: "malaStampLevelup")
                    plateCountLabel.isHidden = false
                    plateCountLabel.text = "level up!"
                }
           
                
                
                labelLeftConstraint.constant = 35
            }
        }
        else
        {
            if isLevelUP == false // 일반 그릇
            {
                
                
                if isFilled == true
                {
                    plateImageView.image = UIImage(named: "gukbapStampSelected")
                    plateCountLabel.isHidden = true
                }
                else
                {
                    plateImageView.image = UIImage(named: "gukbapStampUnselected")
                    plateCountLabel.isHidden = false
                }

                plateCountLabel.text = "\(count)국밥"
                if count >= 10
                {
                    labelLeftConstraint.constant = 42

                }
                else
                {
                    labelLeftConstraint.constant = 46

                }
            }
            else //레벨업
            {
                
                if isFilled == true
                {
                    plateImageView.image = UIImage(named: "gukbapStampSelected")
                    plateCountLabel.isHidden = true
                }
                else
                {
                    plateImageView.image = UIImage(named: "gukbapStampLevelup")
                    plateCountLabel.isHidden = false
                    plateCountLabel.text = "level up!"
                }
           
                
                
                labelLeftConstraint.constant = 35
                
                


            }
        }
        
        plateCountLabel.transform = CGAffineTransform(rotationAngle: -CGFloat.pi/12)

        
    }

    //MARK:- Function Part
    /// 로직을 구현 하는 함수 부분입니다. // 함수명 lowerCamelCase 사용
    /// ex) func tableViewSetting() {
    ///         myTableView.delegate = self
    ///         myTableView.datasource = self
    ///    }


}



//MARK:- extension 부분
/// UICollectionViewDelegate 부분 처럼 외부 프로토콜을 채택하는 경우나, 외부 클래스 확장 할 때,  extension을 작성하는 부분입니다
/// ex) extension ViewController : UICollectionViewDelegate {  code .... }
