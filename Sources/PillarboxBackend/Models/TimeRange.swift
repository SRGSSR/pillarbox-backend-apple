import Vapor

struct TimeRange: Content {
    let startTime: Int
    let endTime: Int
    let type: String
}
