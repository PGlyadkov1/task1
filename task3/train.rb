class Train
  attr_reader :speed, :current_station, :number_of_cars

  def initialize(number, type, number_of_cars)
    @number = number
    @type = type
    @number_of_cars = number_of_cars
    @speed = 0
    @route = nil
    #@route = []
  end

  # Может тормозить (сбрасывать скорость до нуля)
  def slow_down
    @speed = 0
  end

  # Может ускоряться
  def accelerate(delta_v)
    @speed += delta_v if delta_v > 0
  end

  # Может прицеплять/отцеплять вагоны (по одному вагону за операцию, метод просто увеличивает или уменьшает количество вагонов).
  # Прицепка/отцепка вагонов может осуществляться только если поезд не движется.
  def add_car
    @number_of_cars +=1 if @speed == 0
  end

  def remove_car
    @number_of_cars -=1 if @speed == 0 && @number_of_cars > 0
  end

  # Может принимать маршрут следования (объект класса Route).
  # При назначении маршрута поезду, поезд автоматически помещается на первую станцию в маршруте.
  def take_route(route)
    @route = route
    @current_station = route.first_station
    @route.first_station.receive_train(self)
  end 

  # Возвращать предыдущую станцию, текущую, следующую, на основе маршрута
  def next_station
    if @current_station == @route.last_station
      return @route.last_station
    else
      n = @route.stations.index(@current_station)
      m = @route.stations[n + 1]
      return m
    end
  end

  def previous_station
    if @current_station == @route.first_station
      return @route.first_station
    else
      n = @route.stations.index(@current_station)
      m = @route.stations[n - 1]
      return m
    end
  end

  # Может перемещаться между станциями, указанными в маршруте. Перемещение возможно вперед и назад, но только на 1 станцию за раз.
  def go_forward
    return if @current_station == @route.last_station
    @current_station.send_train(self)
    @current_station = self.next_station
    @current_station.receive_train(self)
  end

  def go_backward
    return if @current_station == @route.first_station
    @current_station.send_train(self)
    @current_station = self.previous_station
    @current_station.receive_train(self)
  end

  # Возвращает тип поезда
  def type_of_train
    @type
  end

end
