//
//  PushedViewController.swift
//  week3_challenge_R
//
//  Created by 고하영 on 2022/10/06.
//

import UIKit

class PushedViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return fieldRoomData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ExpertPartCollectionViewCell", for: indexPath) as? ExpertPartCollectionViewCell else {return UICollectionViewCell() }
        cell.fieldButton = fieldRoomData[indexPath.row].fieldimage
    }
    
    
    open var shadowOffset : CGSize?
    open var shadowOpacity: Float?

    @IBOutlet weak var politicSocietyView: UIView!
    @IBOutlet weak var economyView: UIView!
    @IBOutlet weak var eduView: UIView!
    @IBOutlet weak var cultureView: UIView!
    @IBOutlet weak var healthView: UIView!
    @IBOutlet weak var lawView: UIView!
    @IBOutlet weak var etcView: UIView!
    @IBOutlet weak var scienceView: UIView!
    
    
    @IBOutlet weak var fieldCollectionView: UICollectionView!
    
    func setupCollectionView() {
        fieldCollectionView.delegate = self
        fieldCollectionView.dataSource = self
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
        
        setViewValue(view: politicSocietyView)
        setViewShadow(view: politicSocietyView)
        setViewValue(view: economyView)
        setViewShadow(view: economyView)
        setViewValue(view: eduView)
        setViewShadow(view: eduView)
        setViewValue(view: cultureView)
        setViewShadow(view: cultureView)
        setViewValue(view: healthView)
        setViewShadow(view: healthView)
        setViewValue(view: lawView)
        setViewShadow(view: lawView)
        setViewValue(view: etcView)
        setViewShadow(view: etcView)
        setViewValue(view: scienceView)
        setViewShadow(view: scienceView)
    }
    
    func setViewShadow(view : UIView) {
        view.layer.shadowOpacity = 0.1
        view.layer.shadowRadius = 10
    }
    
    func setViewValue(view : UIView) {
        view.layer.borderColor = UIColor.gray.cgColor
        view.layer.borderWidth = 0.2
        view.layer.cornerRadius = 10
    }
    
    @IBAction func societyBtnDidTap(_ sender: Any) {
        guard let applyViewController = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewController(withIdentifier: "ApplyViewController") as?
                ApplyViewController else {return}
        
        navigationController?.pushViewController(applyViewController, animated: true)
    }
    let fieldRoomData: [fieldRoomDataModel] = [
        fieldRoomDataModel(
            fieldimage: UIImage(systemName:"shield"),
            fieldName: "정치 / 사회"),
        fieldRoomDataModel(
            fieldimage: UIImage(systemName: "dollarsign.circle"),
            fieldName: "경제 / 금융"),
        fieldRoomDataModel(
            fieldimage: UIImage(systemName: "graduationcap"),
            fieldName: "교육"
        ),
        fieldRoomDataModel(
            fieldimage: UIImage(systemName: "paintpalette"),
            fieldName: "문화 / 예술"
        ),
        fieldRoomDataModel(
            fieldimage: "desktopcomputer",
            fieldName: "IT / 과학"
        ),
        fieldRoomDataModel(
            fieldimage: UIImage(systemName: "hammer"),
            fieldName: "법률"
        ),
        fieldRoomDataModel(
            fieldimage: UIImage(systemName: "cross.circle"),
            fieldName: "의료 / 복지"
        ),
        fieldRoomDataModel(
            fieldimage: UIImage(systemName: "plus.square"),
            fieldName: "기타"
        )]
    
}

struct fieldRoomDataModel {
    let fieldimage: UIImage?
    let fieldName: String
}
