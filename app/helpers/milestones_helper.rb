module MilestonesHelper
  def milestone_color(milestone)
    return "red" if milestone.priority == 1
    return "yellow" if milestone.priority == 2
    return "green" if milestone.priority == 3
    "666"
  end
end
