class Tag {
	String name
	
	//Many-to-many with brags
	static belongsTo = [Brag,SiteUser]
	static hasMany = [brags:Brag]
}	
