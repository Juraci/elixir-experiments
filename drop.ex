defmodule Drop do
    @moduledoc """
    Functions calculating velocities achieved by objects dropped on a vacuum.
    
    from *Introducing Elixir*
    """
    import :math, only: [sqrt: 1]

    @doc """
    Calculates the velocity of an object falling on Earth
    as if it were in a vacuum (no air resistance). The distance is
    the height from which the object falls, specified in meters,
    and the function returns a velocity in meters per second.
    """

    @spec fall_velocity(:earth, number()) :: number()

    def fall_velocity(:earth, distance) do
        sqrt(2 * 9.8 * distance)
    end

    def fall_velocity(:moon, distance) do
        sqrt(2 * 1.6 * distance)
    end

    def fall_velocity(:mars, distance) do
        sqrt(2 * 3.71 * distance)
    end
end
