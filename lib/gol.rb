class GameOfLife
  attr_accessor :board
  def initialize(rows, cols)
    @board = rows.times.map {cols.times.map {nil}}
  end
  def initialize_board(bxinhos_alive)
    bxinhos_alive.each do |point|
      @board[point[0]][point[1]] = true
    end
    @board
  end
  def next_generation
    new_board = @board

    @board.each_with_index do |line, i|
      line.each_with_index do |bxinho, j|
        if @board[i][j+1].nil?
      end
    end
  end
end
