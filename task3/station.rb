
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
  def get_list_of_trains_by_type
    cargo_trains = 0
    passenger_trains = 0

    @list_of_parked_trains.each { |train| 
      cargo_trains += 1 if train.type_of_train == :cargo
      passenger_trains += 1 if train.type_of_train == :passenger
    }

    list_of_trains_by_type = { cargo_trains: cargo_trains, passenger_trains: passenger_trains}
    list_of_trains_by_type
    #требуется функция type_of_train
    #возвращает хэш вида { cargo_trains: n1, passenger_trains: n2}
  end

# Может отправлять поезда (по одному за раз, при этом, поезд удаляется из списка поездов, находящихся на станции)
  def send_train(train)
    @list_of_parked_trains.delete(train) if @list_of_parked_trains.include?(train)
    #если поезд есть в list_of_parked_trains. Он оттуда удаляется.
  end


end
