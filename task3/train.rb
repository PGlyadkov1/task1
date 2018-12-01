class Train
  attr_reader :speed, :number_of_cars, :type

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
  def accelerate(delta_speed)
    @speed += delta_speed if delta_speed > 0
  end

  # Может прицеплять/отцеплять вагоны (по одному вагону за операцию, метод просто увеличивает или уменьшает количество вагонов).
  # Прицепка/отцепка вагонов может осуществляться только если поезд не движется.
  def add_car
    @number_of_cars += 1 if @speed == 0
  end

  def remove_car
    @number_of_cars -= 1 if @speed == 0 && @number_of_cars > 0
  end

  # Может принимать маршрут следования (объект класса Route).
  # При назначении маршрута поезду, поезд автоматически помещается на первую станцию в маршруте.
  def take_route(route)
    @route = route
    @current_station = 0
    @route.first_station.receive_train(self)
  end 

  # Возвращать предыдущую станцию, текущую, следующую, на основе маршрута
  def next_station
    @route.stations[@current_station + 1]
    end
  end

  def current_station
    @route.stations[@current_station]
  end

  def previous_station
    return unless @current_station > 0
    @route.stations[@current_station - 1]
  end
  

  # Может перемещаться между станциями, указанными в маршруте. Перемещение возможно вперед и назад, но только на 1 станцию за раз.
  def go_forward
    return unless next_station
    current_station.send_train(self)
    @current_station += 1
    current_station.receive_train(self)
  end

  def go_backward
    return unless previous_station
    current_station.send_train(self)
    @current_station -= 1
    current_station.receive_train(self)
  end

end
