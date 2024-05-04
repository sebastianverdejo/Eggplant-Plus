if parryable && other.state == states.backbreaker && other.parry_inst != -4
	exit;
if !global.ricebusyon
	player_hurt(dmg, other.id);