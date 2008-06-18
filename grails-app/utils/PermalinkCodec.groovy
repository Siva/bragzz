class PermalinkCodec {
	
	static encode = { str ->
		str.toLowerCase().replaceAll(/\W/,'-')
	}
}
