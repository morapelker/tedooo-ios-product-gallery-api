import Combine

public struct ShopOwner {
    public init(id: String, username: String, avatar: String) {
        self.id = id
        self.username = username
        self.avatar = avatar
    }
    
    public let id: String
    public let username: String
    public let avatar: String
}

public protocol ProductGalleryScreen {
    
    func instantiate(id: String, coverPhoto: String?, urls: [String], owned: Bool, shopOwner: ShopOwner?) -> UIViewController
    func instantiateFromNotification(linkId: String, navController: UINavigationController)
    
}
