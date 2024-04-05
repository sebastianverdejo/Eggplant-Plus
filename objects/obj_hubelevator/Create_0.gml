state = states.normal;
hub_array[0] = [tower_1, "1"];
hub_array[1] = [tower_2, "2"];
hub_array[2] = [tower_3, "3"];
hub_array[3] = [tower_4, "4"];
hub_array[4] = [tower_5, "5"];
hub_array[5] = [tower_6, "6"];
isgustavo = false;
playerid = -4;
selected = 0;
switch room
{
	case hub_room1:
		selected = 0;
		break;
	case hub_room2:
		selected = 1;
		break;
}
depth = obj_player.depth + 1