// Album.swift

import Foundation

struct Album {
    var name: String
    var image: String
    var songs: [Song]
}

extension Album {
    static func get() -> [Album] {
        return [
            Album(name: "Acoustic", image: "acoustic", songs: [
                Song(name: "Acoustic Breeze", image: "acoustic", artist: "Bensound", fileName: "bensound-acousticbreeze"),
                Song(name: "Buddy", image: "acoustic", artist: "Bensound", fileName: "bensound-buddy"),
                Song(name: "Cute", image: "acoustic", artist: "Bensound", fileName: "bensound-cute"),
                Song(name: "Sunny", image: "acoustic", artist: "Bensound", fileName: "bensound-sunny"),
                Song(name: "Tenderness", image: "acoustic", artist: "Bensound", fileName: "bensound-tenderness"),
                Song(name: "Ukulele", image: "acoustic", artist: "Bensound", fileName: "bensound-ukulele"),
            ]),
            Album(name: "Cinematic", image: "cinematic", songs: [
                Song(name: "Adventure", image: "cinematic", artist: "Bensound", fileName: "bensound-adventure"),
                Song(name: "Better Days", image: "cinematic", artist: "Bensound", fileName: "bensound-betterdays"),
                Song(name: "Epic", image: "cinematic", artist: "Bensound", fileName: "bensound-epic"),
                Song(name: "Memories", image: "cinematic", artist: "Bensound", fileName: "bensound-memories"),
                Song(name: "Once Again", image: "cinematic", artist: "Bensound", fileName: "bensound-onceagain"),
                Song(name: "Slow Motion", image: "cinematic", artist: "Bensound", fileName: "bensound-slowmotion"),
                Song(name: "Tomorrow", image: "cinematic", artist: "Bensound", fileName: "bensound-tomorrow"),
            ]),
            Album(name: "Jazz", image: "jazz", songs: [
                Song(name: "All That", image: "jazz", artist: "Bensound", fileName: "bensound-allthat"),
                Song(name: "Jazz Comedy", image: "jazz", artist: "Bensound", fileName: "bensound-jazzcomedy"),
                Song(name: "Jazz Frenchy", image: "jazz", artist: "Bensound", fileName: "bensound-jazzfrenchy"),
                Song(name: "Love", image: "jazz", artist: "Bensound", fileName: "bensound-love"),
                Song(name: "Romantic", image: "jazz", artist: "Bensound", fileName: "bensound-romantic"),
                Song(name: "The Jazz Piano", image: "jazz", artist: "Bensound", fileName: "bensound-thejazzpiano"),
                Song(name: "The Lounge", image: "jazz", artist: "Bensound", fileName: "bensound-thelounge"),
            ]),
        ]
    }
}
