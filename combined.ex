defmodule Combined do
    def height_to_mph(meters) do
        Drop.fall_velocity(:earth, meters) |> Convert.mps_to_mph
    end
end
