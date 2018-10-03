module Algorithm
  class LruSubst

    # Escolher o 'fundo da pilha' para remover.
    # Tb pode ser traduzido para, escolher o menor valor de um vetor, desde que as proximas inserções
    # sejam necessariamente o valor do topo 'maior valor' + 1
    # Ou seja
    # Pilha atual 4,0,1,3,2 isto significa que a posição 1 do array é o fundo da pilha enqt a posição 4 é o topo.
    # Assim ao inserir um novo bloco, devera ser inserido na posição 1 do array com um valor maior que o topo atual.
    # Ficando assim 4,5,1,3,2, em seguida, decrementar todas as posições de 1. Ficando 3,4,0,2,1.
    # Desta maneira a posição 1 é o novo topo e a posição 2 é o novo fundo.

    def self.select(aux)
      puts 'aux =$ ' + aux.to_s
      i = aux.find_index(-1) # Escolhe o primeiro lugar vazio
      puts 'Primeira posição vazia ' + i.to_s
      return i unless i == nil



    end

    def self.update(aux, subst, init, offset)

    end
  end
end