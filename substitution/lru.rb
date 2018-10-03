class Substitution::LRU
  def initialize(mem)
    @mem = mem
    @control = []
  end

  def select(block)
    if @mem.include?(block)
      hit_count
      hit_rate
      @control.push(index(@mem.select{|line| return line if line == block}))
    else
      miss_count
      miss_rate
      if lines_used != @mesm.size
        index = @mem.select do |line|
          return index(line) if line == -1
        end
        @mem[index] = block
      else
        @control_aux = @control.pop
      end

      @mem.each do |line|

      end

    end
  end

  def hit_count
    @hit += 1
  end

  def hit_rate
    @hit_rate = (@hit / @length) * 100
  end

  def miss_count
    @miss += 1
  end

  def miss_rate
    @miss_rate = (@miss / length) * 100
  end

  def lines_used
    return @mem.each do |line|
        count += 1 if line != -1
    end
  end
end