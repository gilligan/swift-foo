import Foundation

public func part1(str: String) -> Int {
    return str.components(separatedBy: "\n\n")
        .map { $0.components(separatedBy: "\n")
            .compactMap { Int($0) }
            .reduce(0, +)
        }
        .sorted(by: >)
        .first!
}

public func part2(str: String) -> Int {
    return str.components(separatedBy: "\n\n")
        .map { $0.components(separatedBy: "\n")
            .compactMap { Int($0) }
            .reduce(0, +)
        }
        .sorted(by: >)
        .prefix(3)
        .reduce(0, +)
}
