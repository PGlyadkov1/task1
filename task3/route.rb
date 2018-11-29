
class Route
  attr_reader :first_station
  attr_reader :last_station

  def initialize(first_station, last_station)
    @first_station = first_station
    @last_station = last_station
    @route_list = []
  end

  # Может добавлять промежуточную станцию в список
  def add_station(station)
    @route_list << station
  end

  # Может удалять промежуточную станцию из списка
  def delete_station(station)
    #@route_list.delete_at(-1) if @route_list.size >= 1
    @route_list.delete(station) if @route_list.include?(station)
  end

  # Может выводить список всех станций по-порядку от начальной до конечной
  def get_final_route_list
    final_route_list = @route_list
    final_route_list.unshift(@first_station)
    final_route_list << @last_station
    final_route_list
  end

end
