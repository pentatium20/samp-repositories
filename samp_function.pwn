#include "a_samp"

#define function%0(%1) \
	forward %0(%1); public %0(%1) \
	{
#define endfunction \
	}
//
// Example
//
function myFUNCC(parameter, parameter) {
	return 1;
}
endfunction

// <========================>

stock GetPlayerNameEx(playerid)
{
	new __name[MAX_PLAYER_NAME+1];
	GetPlayerName(playerid, __name, sizeof(__name));
	return 1;
}

//
// Example
//
public OnPlayerConnect(playerid) {
	new string[200+1];
	format(string, sizeof(string), "Welcome %s[%d]", GetPlayerNameEx(playerid), playerid);
	SendClientMessage(playerid, -1, string);
	return 1;
}

// <========================>

SendClientMessageEx(playerid, color, const str[], {Float,_}:...) 
{
	static
		args,
		start,
		end,
		string[144];
		
	#emit LOAD.S.pri 8
	#emit STOR.pri args

	if(args > 12)
	{
		#emit ADDR.pri str
		#emit STOR.pri start

		for (end = start + (args - 12); end > start; end -= 4)
		{
			#emit LREF.pri end
			#emit PUSH.pri
		}
		#emit PUSH.S str
		#emit PUSH.C 144
		#emit PUSH.C string
		#emit PUSH.C args
		#emit SYSREQ.C format

		SendClientMessage(playerid, color, string);

		#emit LCTRL 5
		#emit SCTRL 4
		#emit RETN
	}
	return SendClientMessage(playerid, color, str);
}

//
// Example
//
public OnPlayerConnect(playerid) {
	SendClientMessage(playerid, "Welcome %s[%d]", GetPlayerNameEx(playerid), playerid);
	return 1;
}
