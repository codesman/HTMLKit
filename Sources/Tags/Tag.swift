enum Tag {
    case form, input, p, h2
}

extension Tag: CustomStringConvertible {
    var description: String {
        switch self {
        case .form: return "form"
        case .input: return "input"
        case .p: return "p"
        case .h2: return "h2"
        }
    }
}
