import Combine

public struct ShopOwner {
    public init(id: String, username: String, avatar: String?) {
        self.id = id
        self.username = username
        self.avatar = avatar
    }
    
    public let id: String
    public let username: String
    public let avatar: String?
}

public enum ProductScreenError: Error {
    case invalidLink
}

public struct ProductChangeUpdate {
    
    public let coverPhoto: String?
    public let imageUrls: [String]
    
    public init(coverPhoto: String?, imageUrls: [String]) {
        self.coverPhoto = coverPhoto
        self.imageUrls = imageUrls
    }
    
}

public protocol ProductGalleryScreen {
    
    func create(id: String, coverPhoto: String?, urls: [String], owned: Bool, shopOwner: ShopOwner?, imagesChanged: PassthroughSubject<ProductChangeUpdate, Never>?) -> UIViewController
    func createFromNotification(in vc: UINavigationController, linkId: String) -> AnyPublisher<Any?, ProductScreenError>
    
}
