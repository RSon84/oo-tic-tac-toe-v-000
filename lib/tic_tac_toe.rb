class TicTacToe
  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end
  def WIN_COMBINATIONS
    WIN_COMBINATIONS = [0,1,2],
    [3,4,5],
    [6,7,8],
    [2,5,8],
    [6,4,2],
    [0,3,6],
    [1,4,7],
    [0,4,8]
  ] 
  
  end
end
