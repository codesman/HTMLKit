extension Attribute: CustomStringConvertible {
    var description: String {
        switch self {
        case .htmlClass: return "class"
        case .htmlID: return "id"
        case .src: return "src"
        case .href: return "href"
        case .method: return "method"
        case .action: return "action"
        case .custom(let attribute): return "\(attribute)"
        }
    }
}
