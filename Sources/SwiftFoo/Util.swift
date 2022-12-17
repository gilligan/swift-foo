import Foundation

public func getFileDataWith<T>(filePath: String, transform: (String) -> T = { $0 as! T }) -> T {
    let contents = try! String(contentsOfFile: filePath)
    return transform(contents)
}
