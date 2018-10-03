require './cache'
require './mapping/associative'
require './mapping/associative_by_set'
require './algorithm/random_subst'
require './algorithm/fifo_subst'
require './file_manager'
class Main
  def run
    c1 = Cache.new(Mapping::Associative.new(Algorithm::RandomSubst,8))
    #c1 = Cache.new(Mapping::AssociativeBySet.new(Algorithm::FifoSubst, 8, 2))
    #
    file_manager = FileManager.new('entrada')
    file_manager.read
    # c1 = Cache.new(Mapping::AssociativeBySet.new(Algorithm::RandomSubst, 8, 2))

    file_manager.get_mem.each do |line|
      item = line.to_i
      c1.read(item)
      print item
    end

  end
end