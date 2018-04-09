require 'gol'
describe GameOfLife do

  context 'starts with a empty world' do
    it { expect(GameOfLife.new(1, 1).board).to eq [[nil]] }
    it { expect(GameOfLife.new(1, 3).board).to eq [[nil, nil, nil]] }
    it { expect(GameOfLife.new(3, 3).board).to eq [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]] }


  end

  context 'initializes the first bxinhos' do
    it { expect(GameOfLife.new(3, 3).initialize_board([[1, 1]])).to eq [[nil, nil, nil], [nil, true, nil], [nil, nil, nil]] }
    it { expect(GameOfLife.new(3, 3).initialize_board([[0, 1]])).to eq [[nil, true, nil], [nil, nil, nil], [nil, nil, nil]] }
    it { expect(GameOfLife.new(3, 3).initialize_board([[0, 1],[2,2]])).to eq [[nil, true, nil], [nil, nil, nil], [nil, nil, true]] }
  end

  context 'dies by loneliness' do
    it 'dies if there are no neighbours' do
      game = GameOfLife.new(3, 3)
      game.initialize_board([[1, 1]])
      game.next_generation
      expect(game.board).to eq([[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]])
    end
  end


end
