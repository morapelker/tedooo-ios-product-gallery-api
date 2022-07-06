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
    let coverPhoto: String?
    let imageUrls: [String]
}

public protocol ProductGalleryScreen {
    
    func create(id: String, coverPhoto: String?, urls: [String], owned: Bool, shopOwner: ShopOwner?, imagesChanged: PassthroughSubject<ProductChangeUpdate, Never>?) -> UIViewController
    func createFromNotification(linkId: String) -> AnyPublisher<UIViewController, ProductScreenError>
    
}
