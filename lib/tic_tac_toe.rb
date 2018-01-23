class TicTacToe
  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end
  def WIN_COMBINATIONS= arrays
    @WIN_COMBINATIONS= arrays[
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [6,4,2],
    [2,5,8],
    [1,4,7],
    [0,4,8]
  ]
  end
end
