import Nimble
import Quick
import SwiftFoo

class FooTest: QuickSpec {
    override func spec() {
        describe("SwiftFoo") {
            describe("Util") {
                describe("getInput") {
                    it("reads data from file") {
                        let fileData: String = getFileDataWith(filePath: "./data/test.txt")
                        expect(fileData).to(equal("hello\n"))
                    }
                    it("applies the function to the file contents if specified") {
                        let fileData: [String] = getFileDataWith(filePath: "./data/test.txt") { $0.components(separatedBy: "\n") }
                        expect(fileData).to(equal(["hello", ""]))
                    }
                }
                describe("composition") {
                    it("composes two functions") {
                        let inc = { $0 + 1 }
                        let double = { $0 * 2 }
                        let incThenDouble = inc >>> double
                        expect(incThenDouble(2)).to(equal(6))
                    }
                }
            }
            describe("Day1") {
                describe("part1") {
                    it("finds the total of the elve carrying the most calories") {
                        let fileData: String = getFileDataWith(filePath: "./data/day1.txt")
                        expect(part1(str: fileData)).to(equal(24000))
                    }
                }
                describe("part2") {
                    it("finds the sum of the top 3 elves") {
                        let fileData: String = getFileDataWith(filePath: "./data/day1.txt")
                        expect(part2(str: fileData)).to(equal(45000))
                    }
                }
            }
        }
    }
}
