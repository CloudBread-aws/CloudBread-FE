//
//  HomeVC.swift
//  Pillzact
//
//  Created by Jini on 2024/02/09.
//

import UIKit

class HomeVC: UIViewController {
    // MARK: - Properties
    // 변수 및 상수, IBOutlet
    
    let welcomeLabel = UILabel()
    let nameLabel = UILabel()
    
    let pillzactImageView = UIView()
    
    let verifiedImageView = UIImageView(image: UIImage(named: "verified_icon"))
    let descLabel1 = UILabel()
    let descLabel2 = UILabel()
    let goButton = UIButton()
    let containerView = UIView()
    
    let searchLabel = UILabel()
    let searchTextfield = UITextField()
    let searchButton = UIButton()
    
    //let nutrient

    
    // MARK: - Lifecycle
    // 생명주기와 관련된 메서드 (viewDidLoad, viewDidDisappear...)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.pzLightMain
        
        setupWelcome()
        setupPillzact()
        setupCustomServiceView()
        setupSearchView()
        //setupSearchNutrient()
        //setupSearchPurpose()
    }
    
    
    // MARK: - Actions
    // IBAction 및 사용자 인터랙션과 관련된 메서드 정의
    
    func setupWelcome() {
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(welcomeLabel)
        view.addSubview(nameLabel)
        
        welcomeLabel.text = "반가워요!"
        welcomeLabel.font = UIFont.R24()
        
        nameLabel.text = "익명님"
        nameLabel.font = UIFont.B28()
        
        NSLayoutConstraint.activate([
            welcomeLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 5),
            welcomeLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 24),
            welcomeLabel.heightAnchor.constraint(equalToConstant: 25),
            
            nameLabel.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 10),
            nameLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 26),
            nameLabel.heightAnchor.constraint(equalToConstant: 30)
        ])
        
    }
    
    func setupPillzact() {
        pillzactImageView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(pillzactImageView)
        
        pillzactImageView.backgroundColor = UIColor.pzNeonYellow
        
        // 타원 모양 생성
        let path = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: 125, height: 237), cornerRadius: 80)
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        pillzactImageView.layer.mask = shapeLayer
        
        NSLayoutConstraint.activate([
            pillzactImageView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 5),
            pillzactImageView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            pillzactImageView.heightAnchor.constraint(equalToConstant: 237),
            pillzactImageView.widthAnchor.constraint(equalToConstant: 125)
        ])
    }
    
    func setupCustomServiceView() {
        containerView.translatesAutoresizingMaskIntoConstraints = false
        verifiedImageView.translatesAutoresizingMaskIntoConstraints = false
        descLabel1.translatesAutoresizingMaskIntoConstraints = false
        descLabel2.translatesAutoresizingMaskIntoConstraints = false
        goButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(containerView)
        containerView.addSubview(verifiedImageView)
        containerView.addSubview(descLabel1)
        containerView.addSubview(descLabel2)
        containerView.addSubview(goButton)
        
        containerView.backgroundColor = UIColor.white
        containerView.layer.cornerRadius = 20
        
        descLabel1.text = "필작이가 추천하는"
        descLabel1.font = UIFont.R20()
        
        descLabel2.text = "맞춤 영양제 서비스"
        descLabel2.font = UIFont.B24()
        
        let attributedString = NSMutableAttributedString(string: "바로가기")
        attributedString.addAttribute(NSAttributedString.Key.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributedString.length))
        goButton.setAttributedTitle(attributedString, for: .normal)
        goButton.titleLabel?.font = UIFont.R16()
        goButton.addTarget(self, action: #selector(goButtonTapped), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 80),
            containerView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 24),
            containerView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -24),
            containerView.heightAnchor.constraint(equalToConstant: 148),
            
            descLabel1.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 22),
            descLabel1.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
            descLabel1.heightAnchor.constraint(equalToConstant: 20),
            
            descLabel2.topAnchor.constraint(equalTo: descLabel1.bottomAnchor, constant: 10),
            descLabel2.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
            descLabel2.heightAnchor.constraint(equalToConstant: 25),
            
            goButton.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -20),
            goButton.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
            
            verifiedImageView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -20),
            verifiedImageView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20),
            verifiedImageView.heightAnchor.constraint(equalToConstant: 45),
            verifiedImageView.widthAnchor.constraint(equalToConstant: 45)
        ])
    }
    
    func setupSearchView() {
        searchLabel.translatesAutoresizingMaskIntoConstraints = false
        searchTextfield.translatesAutoresizingMaskIntoConstraints = false
        searchButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(searchLabel)
        view.addSubview(searchTextfield)
        searchTextfield.addSubview(searchButton)
        
        searchLabel.text = "영양제 검색"
        searchLabel.font = UIFont.B24()
        
        searchTextfield.backgroundColor = UIColor.white
        searchTextfield.layer.cornerRadius = 20
        
        let placeholderAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor(hexCode: "#7A7A7A", alpha: 0.66),
            .font: UIFont.R16()
        ]
        searchTextfield.attributedPlaceholder = NSAttributedString(string: "검색어를 입력해주세요", attributes: placeholderAttributes)
        
        let rightPaddingContainer = UIView(frame: CGRect(x: 0, y: 0, width: 60, height: 0))
        searchTextfield.rightView = rightPaddingContainer
        searchTextfield.rightViewMode = .always
        
        let leftPaddingContainer = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 0))
        searchTextfield.leftView = leftPaddingContainer
        searchTextfield.leftViewMode = .always
        
        searchButton.setImage(UIImage(named: "search_icon"), for: .normal)
        searchButton.addTarget(self, action: #selector(searchButtonTapped), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            searchLabel.topAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 30),
            searchLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 26),
            searchLabel.heightAnchor.constraint(equalToConstant: 25),
            
            searchTextfield.topAnchor.constraint(equalTo: searchLabel.bottomAnchor, constant: 12),
            searchTextfield.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 24),
            searchTextfield.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -24),
            searchTextfield.heightAnchor.constraint(equalToConstant: 60),
            
            searchButton.centerYAnchor.constraint(equalTo: searchTextfield.centerYAnchor),
            searchButton.trailingAnchor.constraint(equalTo: searchTextfield.trailingAnchor, constant: -20),
            searchButton.heightAnchor.constraint(equalToConstant: 32),
            searchButton.widthAnchor.constraint(equalToConstant: 32)
        ])
    }
    
    @objc func searchButtonTapped() {
        print("검색 버튼 클릭됨")
    }
    
    @objc func goButtonTapped() {
        print("바로가기 버튼 클릭됨")
    }
    
    func setupSearchNutrient() {
        
    }
    
    func setupSearchPurpose() {
        
    }
    
    
    // MARK: - Helpers
    // 설정, 데이터처리 등 액션 외의 메서드를 정의
    

}
