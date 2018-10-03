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

      # Só vai escolherpra remover algum se não tiver espaço vazio. Ou seja -1
      puts "Dentre estas opções #{aux} o fundo da pilha é #{aux.min}"
      return aux.min
    end

    def self.update(aux, conjunto, init, offset)
      puts "Dentro do update do LRU o aux é #{aux}, o conjunto é #{conjunto}, o init é #{init}, o offset (final) é #{offset}"
      maior = aux[init..offset].max
      puts "Maior valor escolhido para atualizar #{maior}"
      posicao_maior = aux[init..offset].find_index(maior)
      puts "e sua posição no array é #{posicao_maior}"
      # Só decrementa de geral se a posição onde for inserido não está vazia, isto é, se não for -1
      if aux[init+conjunto] == -1
        aux[init+conjunto]=maior+1
      else
        aux[init+conjunto]=maior+1
        # Depois que o que foi recém adicionado se tornou o topo da 'fila' isto é o de maior valor
        # decremento a fila inteira exceto se a posição estiver vazia
        (init..offset).each {|x| aux[x]=aux[x]-1 unless aux[x]==-1}
      end
    end

    def self.cache_hit(aux, init, pos, final)
      # Nos cache hits é necessário tonar a posição que deu hit o topo da pilha e depois decrementar
      # tod0 mundo de 1
      maior = aux[init..final].max
      aux[init+pos]=maior+1
      (init..final).each {|x| aux[x]=aux[x]-1 unless aux[x]==-1}
    end
  end
end