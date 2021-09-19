defmodule ElixirLab.Domain.Model.Equipment do
  @enforce_keys [:use_condition]
  defstruct [:name, :use_condition]

  @condition_worn_out :wornout
  @condition_brand_new :brand_new

  def new(attrs) do
    struct!(__MODULE__, attrs)
  end

  def is_worn_out(%__MODULE__{} = equipment) do
    equipment.use_condition == @condition_worn_out
  end

  def condition_worn_out do
    @condition_worn_out
  end

  def condition_brand_new do
    @condition_brand_new
  end
end
