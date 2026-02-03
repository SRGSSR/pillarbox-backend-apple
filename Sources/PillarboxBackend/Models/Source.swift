import Vapor

struct Source: Content {
    let url: URL
    let type: `Type`?
    let mimeType: String?
    let videoFragments: String? // TODO: Check with Andre
    let audioFragments: String? // TODO: Same here
}

extension Source {
    enum `Type`: String, Content {
        case onDemand = "ON-DEMAND"
        case live = "LIVE"
        case dvr = "DVR"
    }
}
