//
//  Generic
//  level 기본 제네릭 함수
//
//  Created by 박준하 on 5/28/24.
//

import UIKit
import Foundation
import SnapKit
import Then

class LevelViewController1: UIViewController {
    let label = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
                
        attribute()
        layout()
        label.text = "\(add(a: 5, b: 10))"
    }
    
    func attribute() {
        view.backgroundColor = .white
    }
    
    func layout() {
        view.addSubview(label)
        
        label.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
    }
    
    func add<T: Numeric>(a: T, b: T) -> T {
        return a + b
    }
}
