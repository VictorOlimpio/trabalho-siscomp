require './cache'
require './mapping/associative'
require './mapping/associative_by_set'
require './algorithm/random_subst'
require './algorithm/fifo_subst'
require './algorithm/lfu_subst'
require './algorithm/lru_subst'
class Main
  def run
    #c1 = Cache.new(Mapping::Associative.new(Algorithm::RandomSubst,8))
    #c1 = Cache.new(Mapping::Associative.new(Algorithm::FifoSubst,8))
    #c1 = Cache.new(Mapping::Associative.new(Algorithm::LfuSubst,8))
    #c1 = Cache.new(Mapping::Associative.new(Algorithm::LruSubst,8))
    #c1 = Cache.new(Mapping::AssociativeBySet.new(Algorithm::RandomSubst, 8, 2))
    #c1 = Cache.new(Mapping::AssociativeBySet.new(Algorithm::FifoSubst, 8, 2))
    #c1 = Cache.new(Mapping::AssociativeBySet.new(Algorithm::LfuSubst, 8, 2))
    c1 = Cache.new(Mapping::AssociativeBySet.new(Algorithm::LruSubst, 8, 2))
    c1.read(10)
    c1.print
    c1.read(9)
    c1.print
    c1.read(5)
    c1.print
    c1.read(13)
    c1.print
    c1.read(1)
    c1.print
    c1.read(9)
    c1.print
    c1.read(8)
    c1.print
    c1.read(11)
    c1.print
    c1.read(15)
    c1.print
    c1.read(1)
    c1.print
    c1.read(12)
    c1.print
    c1.read(10)
    c1.print
    c1.read(4)
    c1.print
    c1.read(15)
    c1.print
    c1.read(10)
    c1.print
    c1.read(7)
    c1.print
    c1.read(7)
    c1.print
    c1.read(11)
    c1.print
    c1.read(1)
    c1.print
    c1.read(10)
    c1.print
    c1.read(3)
    c1.print
    c1.read(7)
    c1.print
    c1.read(27)
    c1.print
    c1.read(31)
    c1.print
    c1.read(22)
    c1.print
    c1.read(26)
    c1.print

# require './file_manager'
# class Main
#   def run
#     c1 = Cache.new(Mapping::Associative.new(Algorithm::RandomSubst,8))
#     #c1 = Cache.new(Mapping::AssociativeBySet.new(Algorithm::FifoSubst, 8, 2))
#     #
#     file_manager = FileManager.new('entrada')
#     file_manager.read
#     # c1 = Cache.new(Mapping::AssociativeBySet.new(Algorithm::RandomSubst, 8, 2))
#
#     file_manager.get_mem.each do |line|
#       item = line.to_i
#       c1.read(item)
#       print item
#     end
#
#
  end
end