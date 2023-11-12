import Foundation

class BusinessLogic{
    let numberBoard = [[1,2,3],
                      [4,5,6],
                      [7,8,0]]
    // learning : resolved "'self' used in method call 'shuffleArray' before all stored properties are initialized" by using "lazy" variables
    lazy var shuffledNumberBoard: [[Int]] = {
        return getShuffleBoard(boardToShuffle: numberBoard)
    }()
    lazy var currentPlayingBoard: [[Int]] = shuffledNumberBoard
    
    func getShuffleBoard(boardToShuffle: [[Int]]) -> [[Int]]{
        var shuffledNumberBoard = boardToShuffle
        let numberOfRows = shuffledNumberBoard.count
        for row in 0..<numberOfRows{
            let numberOfColumns = shuffledNumberBoard[row].count
            for col in 0..<numberOfColumns{
                let shuffledRow = Int.random(in: 0..<numberOfRows)
                let shuffledCol = Int.random(in: 0..<numberOfColumns)
                let temp = shuffledNumberBoard[row][col]
                shuffledNumberBoard[row][col] = shuffledNumberBoard[shuffledRow][shuffledCol]
                shuffledNumberBoard[shuffledRow][shuffledCol] = temp
            }
        }
        return shuffledNumberBoard
    }
}
