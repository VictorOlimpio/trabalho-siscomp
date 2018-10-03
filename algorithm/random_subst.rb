module Algorithm
  class RandomSubst
    # attr_accessor :mem, :aux

=begin
    def initialize(mem)
      @mem = mem
      @aux = aux
    end
=end

    def self.select(mem)
      puts 'mem =$ ' + mem.to_s
      i = mem.find_index(-1) # Escolhe o primeiro lugar vazio
      puts 'Primeira posição vazia ' + i.to_s
      return i unless i == nil
      r = Random.new
      puts 'mem.size ' + mem.size.to_s
      ale = r.rand(0..mem.size) # Retorna um aleatório entre todos os possíveis
      puts 'escolhido aleatorio' + ale.to_s
      return ale
    end

    def self.update(aux, subst, init=nil, offset=nil)
      aux[init+subst]=+1
    end
  end
end