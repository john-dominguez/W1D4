class Tile

  attr_accessor :neighbors

  def initialize(bomb)
    @bomb = bomb
    @revealed = false
    @flag = false
    @neighbors = []
  end

  def bombed?
    self.bomb
  end

  def flagged?
    self.flag
  end

  def revealed?
    self.revealed
  end

  def reveal
    self.revealed = true
  end

  def neighbor_bomb_count
    neighbors.reduce(0) do |acc, el|
      if el.bombed?
        acc + 1
      else
        acc
      end
  
  end

end
