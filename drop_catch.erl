-module(drop_catch).
-export([fall_velocity/2]).

fall_velocity(Planemo, Distance) ->
	
	try
		% start of protected area %
		Gravity = case Planemo of
			earth -> 9.8;
			moon -> 1.6;
			mars -> 3.71
		end,
		math:sqrt(2 * Gravity * Distance)
		% end of protected area %
	of
		Result -> Result
	catch
		error:Error -> {error, Error}
	end.	
