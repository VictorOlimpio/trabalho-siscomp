module Algorithm
  class RandomSubst

    def self.select(aux)
      puts 'aux =$ ' + aux.to_s
      i = aux.find_index(-1) # Escolhe o primeiro lugar vazio
      puts 'Primeira posição vazia ' + i.to_s
      return i unless i == nil
      r = Random.new
      puts 'aux.size ' + aux.size.to_s
      ale = r.rand(0..aux.size) # Retorna um aleatório entre todos os possíveis
      puts 'escolhido aleatorio' + ale.to_s
      return ale
    end

    def self.update(aux, subst, init=nil, offset=nil)
      aux[init+subst] = 1
    end
  end
end