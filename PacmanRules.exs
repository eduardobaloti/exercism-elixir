# Exercice 3
defmodule Rules do
  def eat_ghost?(power_pellet_active, touching_ghost) do
    check = power_pellet_active and touching_ghost

    if check do
      true
    end
  end

  def score?(touching_power_pellet, touching_dot) do
    check = touching_power_pellet or touching_dot

    if check do
      true
    end
  end

  def lose?(power_pellet_active, touching_ghost) do
    check = !power_pellet_active and touching_ghost

    if check do
      true
    end
  end

  def win?(has_eaten_all_dots, power_pellet_active, touching_ghost) do
    check = has_eaten_all_dots and !(!power_pellet_active and touching_ghost)

    if check do
      true
    end
  end
end
