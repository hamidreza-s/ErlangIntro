-module(exceptions).
-compile(export_all).

throws(F) ->
	try F() of
	
		_ -> ok
		
	catch
	
		% between 'error', 'exit' and 'throw %
		% default catch type is 'throw' %
		% so we can omit throw before :Trow %
		throw:Throw -> {throw, caught, Throw};
		
		% handle error %
		error:Error -> {error, Error};
		
		% handle exit %
		exit:Exit -> {exit, Exit}
		
	end.
