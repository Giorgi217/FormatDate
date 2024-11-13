// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public protocol FormatDateProtocol {
    func formatingDate(T: String) -> String
}

public class FormatDate: FormatDateProtocol {
    
    public init() { }
    
    public func formatingDate(T: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"

        if let date = dateFormatter.date(from: T) {
            dateFormatter.dateFormat = "EEEE, dd MMMM yyyy"
            let formattedDate = dateFormatter.string(from: date)
            return formattedDate
        } else {
            return ""
        }
    }
}
