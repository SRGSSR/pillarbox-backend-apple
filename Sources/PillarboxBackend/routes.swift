import Vapor

func routes(_ app: Application) throws {
    app.get { req async -> String in
        "🎬 Pillarbox Backend - use /media/:id to get media"
    }

    app.get("media", ":id") { req async throws -> PlayerData<Empty> in
        switch req.parameters.get("id") {
        case "pillarbox:apple-basic-16-9":
            PlayerDataController.appleBasic16_9()
        default:
            throw Abort(.notFound)
        }
    }
}
