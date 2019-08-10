/// @description State = death if life = 0
if state != "dead"
{
	if hp <= 0 && state != "death"
	{
		state = "death";
	} 
}
