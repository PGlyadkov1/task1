
class Station
  attr_reader :list_of_parked_trains

#
  def initialize(name)
    @name = name
    @list_of_parked_trains = []
  end

# Может принимать поезда (по одному за раз)
  def receive_train(train)
    #если поезда нет в list_of_parked_trains. Он туда вносится
    @list_of_parked_trains << train unless @list_of_parked_trains.include?(train)
  end

# Может возвращать список поездов на станции по типу (см. ниже): кол-во грузовых, пассажирских
  def trains_by_type(type)
    select_trains = @list_of_parked_trains.select { |train| train.type_of_train == type}
    select_trains.count
  end

# Может отправлять поезда (по одному за раз, при этом, поезд удаляется из списка поездов, находящихся на станции)
  def send_train(train)
    @list_of_parked_trains.delete(train)
  end


end
