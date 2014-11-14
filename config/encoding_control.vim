function! CheckGoodValue(value, goodValues)
	let goodValues = split(a:goodValues, ',')
	let good = index(goodValues, a:value) != -1
	if(good)
		a:value
	else
		return  '%#error#' . a:value . '%*'
	endif
endfunction
	
