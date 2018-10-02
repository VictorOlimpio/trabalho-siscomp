module Mapping
  class Direct
    attr_reader :hits, :misses, :mem, :lenght

    def initialize(lenght)
      @hits = 0
      @misses = 0
      @lenght = lenght
      @mem = []
      (0..lenght).each{|x| @mem[x] = -1 }
    end

    def read(block)
      return @hits +=1 if @mem.include?(block)
      @misses +=1
      @mem[block % @lenght] = block
    end
  end
end