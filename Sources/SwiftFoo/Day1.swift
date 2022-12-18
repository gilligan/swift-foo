import Foundation

public func splitBy(string: String, sep: String) -> [String] {
    return string.components(separatedBy: sep)
}

public func sumGroups(str: String) -> Int {
    return splitBy(string: str, sep: "\n")
        .flatMap { Int($0) }
        .reduce(0, +)
}

public func part1(str: String) -> Int {
    return splitBy(string: str, sep: "\n\n")
        .flatMap(sumGroups)
        .sorted(by: >)
        .first!
}

public func part2(str: String) -> Int {
    return splitBy(string: str, sep: "\n\n")
        .flatMap(sumGroups)
        .sorted(by: >)
        .prefix(3)
        .reduce(0, +)
}
