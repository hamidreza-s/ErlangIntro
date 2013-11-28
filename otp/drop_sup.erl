-module(drop_sup).
-behaviour(supervisor).
-export([start_link/0]). % easy call for startup
-export([init/1]). % supervisor calss
-define(SERVER, ?MODULE).

%%% easy method for startup
start_link() ->
	supervisor:start_link({local, ?SERVER}, ?MODULE, []).
	
%%% supervisor callback
init([]) ->
	RestartStrategy = one_for_one, % or one_for_all, or rest_for_one
	MaxRestarts = 1, % one restart every
	MaxSecondsBetweenRestarts = 5, % five seconds
	
	SupFlags = {RestartStrategy, MaxRestarts, MaxSecondsBetweenRestarts},
	
	Restart = permanent, % or temporary, or transient
	Shutdown = 2000, % milliseconds, could be infinity or brutal_kill
	Type = worker, % could also be supervisor
	
	Drop = {drop_otp, {drop_otp, start_link, []},
		Restart, Shutdown, Type, [drop_otp]},
		
	{ok, {SupFlags, [Drop]}}.
	
%%% internal functions
	% (none here)
