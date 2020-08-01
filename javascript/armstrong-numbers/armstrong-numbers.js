
export const isArmstrongNumber = (number) => {
	number_length = number.toString().length
	if ( number_length == 1 )
		return true
	if ( number_length > 2 ){
		for (i = 0; i < 5; i++) {
			text += "The number is " + i + "<br>";
		}	
	}
	return false
};
