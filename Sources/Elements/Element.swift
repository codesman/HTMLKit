struct Element {
    let tag: Tag
    let inner: String
    let attributes: [Attribute: String]

    init(_ tag: Tag, _ inner: String, _ attributes: [Attribute: String]?) throws {
        self.tag = tag
        self.inner = inner
        self.attributes = attributes ?? [Attribute: String]()

        let formatts: [Attribute] = [.method]
        for (key, _) in self.attributes {
            guard formatts.contains(key) else {
                throw AttributeError.attributeNotAllowed(key)
            }
        }
    }
    
    init(tag: Tag, inner: String, attributes: [Attribute: String]?) throws {
        self.tag = tag
        self.inner = inner
        self.attributes = attributes ?? [Attribute: String]()
        
        let formatts: [Attribute] = [.method]
        for (key, _) in self.attributes {
            guard formatts.contains(key) else {
                throw AttributeError.attributeNotAllowed(key)
            }
        }

    }
}
