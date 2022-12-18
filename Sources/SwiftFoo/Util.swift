import Foundation

public func getFileDataWith<T>(filePath: String, transform: (String) -> T = { $0 as! T }) -> T {
    let contents = try! String(contentsOfFile: filePath)
    return transform(contents)
}

precedencegroup FunctionCompositionPrecedence {
    associativity: left
    higherThan: AdditionPrecedence
}

infix operator >>>: FunctionCompositionPrecedence
public func >>> <A, B, C>(f: @escaping (A) -> B, g: @escaping (B) -> C) -> (A) -> C {
    return { x in g(f(x)) }
}
