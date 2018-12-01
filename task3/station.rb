
class Station
  attr_reader :trains

#
  def initialize(name)
    @name = name
    @trains = []
  end

# Может принимать поезда (по одному за раз)
  def receive_train(train)
    #если поезда нет в trains. Он туда вносится
    @trains << train unless @trains.include?(train)
  end

# Может возвращать список поездов на станции по типу (см. ниже): кол-во грузовых, пассажирских
  def trains_by_type(type)
    @trains.count { |train| train.type == type }
  end

# Может отправлять поезда (по одному за раз, при этом, поезд удаляется из списка поездов, находящихся на станции)
  def send_train(train)
    @trains.delete(train)
  end


end
