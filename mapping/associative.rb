module Mapping
  class Associative
    attr_reader :hits, :misses, :mem, :subst, :lenght, :aux

    def initialize(subst, lenght)
      @subst = subst
      @hits = 0
      @misses = 0
      @lenght = lenght
      @mem = []
      @aux = []
      (0..lenght - 1).each {|x| @mem[x] = -1; @aux[x] = -1}
    end

    def read(block)
      return @hits += 1 if @mem.include?(block)
      @misses += 1
      subst = @subst.select(@aux)
      @subst.update(aux, subst, 0)
      @mem[subst] = block
    end
  end
end

# a = Mapping::Associative.new(Algorithm::RandomSubst, 8)