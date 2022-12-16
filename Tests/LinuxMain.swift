import Quick
import XCTest

@testable import QuickTests
@main enum Main {
    static func main() {
        Quick.QCKMain([
            FooTest.self,
        ])
    }
}
