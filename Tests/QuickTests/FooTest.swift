import Nimble
import Quick

class FooTest: QuickSpec {
    override func spec() {
        describe("quick swift") {
            it("works") {
                let foo = "foo"
                expect(foo).to(equal("foo"))
            }
        }
    }
}
