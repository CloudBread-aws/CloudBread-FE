//
//  RecommendVC.swift
//  Pillzact
//
//  Created by Jini on 2024/02/09.
//

import UIKit

class RecommendVC: UIViewController {
    // MARK: - Properties
    // 변수 및 상수, IBOutlet

    
    // MARK: - Lifecycle
    // 생명주기와 관련된 메서드 (viewDidLoad, viewDidDisappear...)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
    }
    
    
    // MARK: - Actions
    // IBAction 및 사용자 인터랙션과 관련된 메서드 정의
    func setupLayout() {
        view.backgroundColor = UIColor.yellow
    }
    
    // MARK: - Helpers
    // 설정, 데이터처리 등 액션 외의 메서드를 정의
    

}

extension RecommendVC {
    
}
