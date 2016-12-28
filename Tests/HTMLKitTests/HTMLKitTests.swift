import XCTest
@testable import Elements

class HTMLKitTests: XCTestCase {
    func testNoAttributes() {
        do {
            let element = try Element(tag: .p, inner: "Dookie", attributes: nil)
            XCTAssertEqual(element.inner, "Dookie")
        } catch {
            XCTFail()
        }
        
        
    }
    
    func testinvalidAttribute() {
        do {
            let element = try Element(tag: .p, inner: "Dookie", attributes: [.custom("invalid"): ""])
             XCTFail()
        } catch {
            print(error)
           
        }
        
        
    }

    static var allTests : [(String, (HTMLKitTests) -> () throws -> Void)] {
        return [
            ("testNoAttributes", testNoAttributes),
            ("testinvalidAttribute", testinvalidAttribute)
        ]
    }
}
