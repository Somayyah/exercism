

function! LeapYear(year) abort

	( $year%4 == 0 || $year%400 == 0 ) && echo 1 || echo 0	

endfunction
