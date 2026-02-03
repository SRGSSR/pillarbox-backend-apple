import Vapor

struct Subtitle: Content {
    let label: String
    let kind: String // TODO: Why do we need this field?
    let language: String
    let url: String
}
