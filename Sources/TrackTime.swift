import Foundation

open class TrackTime: CustomStringConvertible {
    
    var ti: TimeInterval!
    var caller: String
    
    public init(caller: String = #function) {
        self.caller = caller
        
        ti = setDate()
    }
    
    // static func Create(caller: String = #function) -> TrackTime {
    //     return self.init(caller: caller)
    //     //return TrackTime(caller: caller)
    // }
    
    func setDate() -> TimeInterval {
        return Date().timeIntervalSinceReferenceDate
    }
    
    func toString() -> String {
        let ms = Int((Date().timeIntervalSinceReferenceDate - ti) * 1000)
        
        return "\(caller) takes \(ms) ms.";
    }
    
    public var description: String {
        return toString()
    }
}