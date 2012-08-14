-module(rpc_test).
-author('elbrujohalcon@inaka.net').

-export([id/1, double/1, string_length/1]).

-spec id([term()]) -> [false | float()].
id(Values) ->
  [ case Value of
      Value when is_float(Value) -> Value;
      _ -> false
    end || Value <- Values].

-spec double([term()]) -> [false | float()].
double(Values) ->
  [ case Value of
      Value when is_number(Value) -> Value * 2.0;
      _ -> false
    end || Value <- Values].

-spec string_length([term()]) -> [false | float()].
string_length(Values) ->
  [ case Value of
      Value when is_list(Value) -> erlang:length(Value) * 1.0;
      _ -> false
    end || Value <- Values].
