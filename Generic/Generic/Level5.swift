//
//  Generic
//  level5 제네릭과 연관 타입
//
//  Created by 박준하 on 5/28/24.
//

import Foundation
import UIKit
import Then
import SnapKit

protocol Container {
    associatedtype Item
    var items: [Item] { get set }
    mutating func addItem(_ item: Item)
}

class StringContainer: Container {
    var items = [String]()
    
    func addItem(_ item: String) {
        items.append(item)
    }
}

class LevelViewController5: UIViewController {
    let container = StringContainer()
    let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        attribute()
        layout()
        populateContainer()
    }
    
    private func attribute() {
        view.backgroundColor = .white
    }
    
    private func populateContainer() {
        container.addItem("Hello")
        container.addItem("World")
        
        label.text = container.items.joined(separator: " ")
    }
    
    private func layout() {
        view.addSubview(label)
        
        label.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
    }
}
