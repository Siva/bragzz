class UniqueListCodec {
	
	static encode = { str ->
		if(str.indexOf(',')) {
		   return str.tokenize(',').collect { it.toLowerCase().trim() }.unique()
		}
		else {
			return [str]
		}
	}
}