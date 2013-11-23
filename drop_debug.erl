-module(drop_debug).
-export([fall_velocity/2]).

fall_velocity(Planet, Distance) ->
	Gravity = case Planet of
		earth -> 9.8;
		moon -> 1.6;
		mars -> 3.71
	end,
	
	try math:sqrt(2 * Gravity * Distance) of
		Result -> Result
	catch
		error:Error -> {found, Error}
	end.
