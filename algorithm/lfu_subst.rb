module Algorithm
  class LfuSubst

    # Escolher o 'menos frequentemente utilizado' para remover.
    # Tb pode ser traduzido para, escolher o menor valor de um vetor, desde que os proximos caches hits incrementem
    # o valor buscado. Ou seja. Cada vez que ele for utilizado aumentar o contador de uso dele.  Quando um novo valor
    # for adicionado a cache, seu contador é zerado e incrementado de 1.
    # Além disso, sempre que houver um acesso, que resulte em hit ou miss. O contador de todos os outros deve ser
    # decrementado de um, para que linhas que possuam uma rajada de hits, e depois porém passe bastante tempo sem hit
    # fique obsoleta sem ser substituida por conta da sua contagem inflada de hits no inicio.

    def self.select(aux)
      puts 'aux =$ ' + aux.to_s
      i = aux.find_index(-1) # Escolhe o primeiro lugar vazio
      puts 'Primeira posição vazia ' + i.to_s
      return i unless i == nil

      puts "Dentre estas opções #{aux} Quem foi menos utilizada #{aux.min}"
      return aux.min
    end

    def self.update(aux, subst, init, offset)
      menor = aux[init..offset].min
      puts "menor valor escolhido para atualizar #{menor}"
      menor = aux[init..offset].find_index(menor)
      puts "e sua posição no array é #{menor}"
      #(init..offset).each{|x| aux[x]=aux[x]+1 unless aux[x]==-1}
      aux[init+subst]=1
    end

    def self.cache_hit(aux, init, pos, final=nil)
      aux[init+pos] += 1
    end
  end
end