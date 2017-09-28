require 'pry'
class Board
  attr_accessor :board, :red_piece, :black_piece

  def initialize
    @board = [['1', '2', '3', '4', '5', '6', '7'],
              ['R', '-', '-', '-', '-', '-', '-'],
              ['R', '-', '-', '-', '-', '-', '-'],
              ['R', '-', '-', '-', '-', '-', '-'],
              ['R', '-', '-', '-', '-', '-', '-'],
              ['-', '-', '-', '-', '-', '-', '-'],
              ['-', '-', '-', '-', '-', '-', '-']]
  end

  def each(&block)
    @board.each(&block)
  end

  def transpose
    @board.transpose
  end

  def display_board
    board.each do |row|
      row.each { |space| print space}
      print "\n"
    end
  end

  def update_board(column, current_player_piece)
    row = 0
    1.upto(6) do |num|
      row = num if self.board[num][column - 1] == '-'
    end
    if !row.zero?
      self.board[row][column - 1] = current_player_piece
    else
      row
    end
  end
end