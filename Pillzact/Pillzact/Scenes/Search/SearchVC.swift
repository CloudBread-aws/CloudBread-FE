//
//  SearchVC.swift
//  Pillzact
//
//  Created by Jini on 2024/02/09.
//

import UIKit

class SearchVC: UIViewController {
    // MARK: - Properties
    // 변수 및 상수, IBOutlet
    
    let titleLabel = UILabel()
    
    //let searchLabel = UILabel()
    let searchTextfield = UITextField()
    let searchButton = UIButton()

    
    // MARK: - Lifecycle
    // 생명주기와 관련된 메서드 (viewDidLoad, viewDidDisappear...)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.pzLightMain
        
        setupTitle()
        setupSearchView()
    }
    
    
    // MARK: - Actions
    // IBAction 및 사용자 인터랙션과 관련된 메서드 정의
    func setupTitle() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(titleLabel)
        
        titleLabel.text = "검색"
        titleLabel.font = UIFont.B24()
        
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 5),
            titleLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 24),
            titleLabel.heightAnchor.constraint(equalToConstant: 25)
        ])
        
    }
    
    func setupSearchView() {
        //searchLabel.translatesAutoresizingMaskIntoConstraints = false
        searchTextfield.translatesAutoresizingMaskIntoConstraints = false
        searchButton.translatesAutoresizingMaskIntoConstraints = false
        
        //view.addSubview(searchLabel)
        view.addSubview(searchTextfield)
        searchTextfield.addSubview(searchButton)
        
        //searchLabel.text = "영양제 검색"
        //searchLabel.font = UIFont.B24()
        
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
//            searchLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30),
//            searchLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 26),
//            searchLabel.heightAnchor.constraint(equalToConstant: 25),
            
            searchTextfield.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30),
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
    
    // MARK: - Helpers
    // 설정, 데이터처리 등 액션 외의 메서드를 정의
    

}

extension SearchVC {
    
}
