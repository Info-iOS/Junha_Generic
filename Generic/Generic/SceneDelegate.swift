import UIKit

enum AppViewController {
    case level1 // 기본 제네릭 함수
    case level2 // 제네릭 클래스
    case level3 // 제네릭 프로토콜
    case level4 // 제네릭과 타입 제약
    case level5 // 제네릭과 연관 타입
    
    func instance() -> UIViewController {
        switch self {
        case .level1:
            return LevelViewController1()
        case .level2:
            return LevelViewController2()
        case .level3:
            return LevelViewController3()
        case .level4:
            return LevelViewController4()
        case .level5:
            return LevelViewController5()
        }
    }
}

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        
        let rootViewController = AppViewController.level1.instance()
        window?.rootViewController = UINavigationController(rootViewController: rootViewController)
        window?.makeKeyAndVisible()
    }
}
