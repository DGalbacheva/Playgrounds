import Cocoa
// 1
class Track {
    // 2
    let name: String
    let lengthInSeconds: Int
    let listensCount: Int
    
    init (
        name: String,
        lengthInSeconds: Int,
        listenCount: Int
    ) {
        self.name = name
        self.lengthInSeconds = lengthInSeconds
        self.listensCount = listenCount
    }
    
    // 3
    func descriptionString() -> String {
        let trackLengthString = makeTrackLengthString()
        let listensCountString = "played\(listensCount) times"
        return "\(name), \(trackLengthString), \(listensCountString)"
    }
    
    // вспомогательная функция, формирует строку с длительностью композиции
    func makeTrackLengthString() -> String {
        let minutes = lengthInSeconds / 60
        let remainingSeconds = lengthInSeconds - (minutes * 60)
        return "\(minutes):\(remainingSeconds)"
    }
}

// 4
class Musician {
    // 5
    let name: String
    let yearOfBirth: String
    let latestRelease: Track
    
    init (
        name: String,
        yearOfBirth: String,
        latestRelease: Track
    ) {
        self.name = name
        self.yearOfBirth = yearOfBirth
        self.latestRelease = latestRelease
    }
    
    // 6
    func descriptionString() -> String {
        let musicianInfoString = "Musician: \(name), born in \(yearOfBirth)"
        let latestReleaseDescription = "Latest release: \(latestRelease.descriptionString())"
        return "\(musicianInfoString)\n\(latestReleaseDescription)"
    }
}

// 7
let bennySings = Musician(
    name: "Benny Sings",
    yearOfBirth: "1977",
    latestRelease: Track(
        name: "Big Brown Eyes",
        lengthInSeconds: 225,
        listenCount: 100000
    )
)

// 8
print(bennySings.descriptionString())

