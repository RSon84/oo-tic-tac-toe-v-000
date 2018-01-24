class TicTacToe
  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end
WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [6,4,2],
    [2,5,8],
    [1,4,7],
    [0,4,8]
  ]

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def input_to_index(user_input)
    user_input.to_i - 1
  end

  def move(index, player = "X")
    @board[index] = player
  end

  def position_taken?(index)
  if @board[index] != ("X") && @board[index] != ("O")
    return false
  elsif @board[index] == ("X") || @board[index] == ("O")
    return true
  end
end

def valid_move?(index)
  if index.between?(0, 8) && !(position_taken?(index))
    return true
  else !index.between?(0, 8) || (position_taken?(index))
      return false
  end
end

def turn_count(@board)

  move_count = []
  @board.each do |token|
    counter = 0
    if token == "X" || token == "O"
      move_count.push(1)
    else
      counter += 1
    end
  end
  move_count.length.to_i
end

def current_player
  turn_count(@board) % 2 == 0 ? "X" : "O"
end

end
