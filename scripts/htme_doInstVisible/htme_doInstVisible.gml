/// @description htme_debugoverlayStateMain();
function htme_doInstVisible() {

	/*
	**  Description:
	**      PRIVATE "METHOD" OF obj_htme! That means this script MUST be called with obj_htme!
	**
	**      Draw debug information of visible instances
	**  
	**  Usage:
	**      <See above>
	**
	**  Arguments:
	**      <None>
	**
	**  Returns:
	**      <Nothing>
	**
	*/
	htme_doMain();
	htme_doDrawInstanceTable("VISIBLE INSTANCES",1,all,true);



}
