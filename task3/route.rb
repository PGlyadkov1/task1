
class Route
  attr_reader :first_station, :last_station, :stations

  def initialize(first_station, last_station)
    @first_station = first_station
    @last_station = last_station
    @stations = [@first_station, @last_station]
  end

  # Может добавлять промежуточную станцию в список
  def add_station(station)
    @stations.insert(-2,station)
  end

  # Может удалять промежуточную станцию из списка
  def delete_station(station)
    return if [@stations.first, @stations.last].include?(station)
    @stations.delete(station) if @stations.include?(station)
  end

end
