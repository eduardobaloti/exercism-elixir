# Exercice 4
defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    desc = before_discount * (discount / 100)
    x = before_discount - desc
  end

  def monthly_rate(hourly_rate, discount) do
    days =
      (hourly_rate * 8 * 22)
      |> ceil()

    if discount == 0 do
      days
    else
      desc = days * (discount / 100)

      x =(days - desc)
      |> ceil()
    end
  end

  def days_in_budget(budget, hourly_rate, discount) do
    x = (budget / (hourly_rate * 8.0))
    |> Float.floor(1)

    if discount == 0 do
      value = x
    else
      desc = discount / 100 * x
      value = x + desc
    end
  end
end
