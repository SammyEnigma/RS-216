/*===================================================================||
||/|¯¯¯¯¯¯¯\///|¯¯|/////|¯¯|//|¯¯¯¯¯¯¯¯¯|//|¯¯¯¯¯¯¯¯¯|//\¯¯\/////¯¯//||
||/|  |//\  \//|  |/////|  |//|  |/////////|  |//////////\  \///  ///||
||/|  |///\  \/|  |/////|  |//|  |/////////|  |///////////\  \/  ////||
||/|  |///|  |/|  |/////|  |//|   _____|///|   _____|//////\    /////||
||/|  |////  //|  \/////|  |//|  |/////////|  |/////////////|  |/////||
||/|  |///  ////\  \////  ////|  |/////////|  |/////////////|  |/////||
||/|______ //////\_______/////|__|/////////|__|/////////////|__|/////||
||===================================================================*/

init() {
	//game["menu_autofav"] = "addfav";
	//PrecacheMenu(game["menu_autofav"]);
	thread onPlayerConnect();
}

onPlayerConnect() {
	for(;;) {
		level waittill("connected",player);
		if(player getStat(720) != 1) {
			player setStat(720,1);
			player thread addFavs();
		}
	}
}

addFavs() {
	self endon("disconnect");
	ip[0] = "c.royalsoldiers.net:28957";
	ip[1] = "c.royalsoldiers.net:28958";
	ip[2] = "c.royalsoldiers.net:28950";
	ip[3] = "c.royalsoldiers.net:28951";
	ip[4] = "c.royalsoldiers.net:28952";
	ip[5] = "c.royalsoldiers.net:28953";
	ip[6] = "c.royalsoldiers.net:28954";
	ip[7] = "c.royalsoldiers.net:28945";
	ip[8] = "c.royalsoldiers.net:28956";
	ip[9] = "c.royalsoldiers.net:28949";
	for(i=0;i<ip.size;i++) {
		self setClientDvar("ui_favoriteaddress",ip[i]);
		self OpenMenuNoMouse(game["menu_autofav"]);
		wait .15;
	}
}