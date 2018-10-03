module Algorithm
  class LruSubst

    # Escolher o 'menos frequentemente utilizado' para remover.
    # Tb pode ser traduzido para, escolher o menor valor de um vetor, desde que os proximos caches hits incrementem
    # o valor buscado. Ou seja. Cada vez que ele for utilizado aumentar o contador de uso dele.  Quando um novo valor
    # for adicionado a cache, seu contador é zerado e incrementado de 1.
    # Além disso, sempre que houver um acesso, que resulte em hit ou miss. O contador de todos os outros deve ser
    # decrementado de um, para que linhas que possuam uma rajada de hits, e depois porém passe bastante tempo sem hit fique obsoleta sem ser
    # substituida por conta da sua contagem inflada de hits no inicio.

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