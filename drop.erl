%% @author Hamidreza Soleimani <hamidreza.s@gmail.com>
%% @doc Functions calculatin velocities
%% dropped in vacuum.
%% @version 0.1

-module(drop).
-export([fall_velocity/1]).

%% @doc calculate the velocity of an object falling on Earth
%% as if it was in a vacuum (no air resistance). The distance is
%% the height from which the object falls, specified in meters,
%% and the function returns a velocity in meters per second.
-spec(fall_velocity(number()) -> number()).
fall_velocity(Distance) -> math:sqrt(2 * 9.8 * Distance).
