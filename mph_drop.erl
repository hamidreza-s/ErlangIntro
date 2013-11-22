-module(mph_drop).
-export([mph_drop/0]).

% init talk_drop process %
mph_drop() ->
	process_flag(trap_exit, true),
	Drop = spawn_link(talk_drop, drop, []),
	convert(Drop).

% create listener %
convert(Drop) ->
	receive

		% {'EXIT', _, _} match %
		{'EXIT', _Pid, _Reason} ->
			
			NewDrop = spawn_link(talk_drop, drop, []),
			convert(NewDrop);
		
		% {_, _} match %
		{Planemo, Distance} ->

			Drop ! {self(), Planemo, Distance},
			convert(Drop);

		% {_, _, _} match %
		{Planemo, Distance, Velocity} ->

			MphVelocity = 2.236 * Velocity,
			io:format("On ~p, a fall of ~p meters yields a velocity of ~p mph.~n",
				[Planemo, Distance, MphVelocity]),
				
		% tail recursive %
		convert(Drop)
		
	end.
