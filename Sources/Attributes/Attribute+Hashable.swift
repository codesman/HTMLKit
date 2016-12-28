extension Attribute: Hashable {
    var hashValue: Int {
        switch self {
        case .htmlClass: return 0
        case .htmlID: return 1
        case .src: return 2
        case .href: return 3
        case .method: return 4
        case .action: return 5
        case .custom(_): return 6
        }
    }

    static func == (lhs: Attribute, rhs: Attribute) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
}
