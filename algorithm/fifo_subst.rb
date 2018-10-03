module Algorithm
  class FifoSubst

    def self.select(aux)
      puts 'aux recebido dentro do select =$ ' + aux.to_s
      i = aux.find_index(-1) # Escolhe o primeiro lugar vazio
      puts 'Primeira posição vazia ' + i.to_s
      return i unless i == nil
      puts "Dentre estas opções #{aux} Quem a mais tempo foi #{aux.min}"
      return aux.min
    end

    def self.update(aux, subst, init, offset)
      maior = aux[init..offset].max
      puts "maior escolhido para atualizar #{maior}"
      aux[init+subst]=maior+1
    end

    def self.cache_hit(aux, init, pos)
    end
  end
end