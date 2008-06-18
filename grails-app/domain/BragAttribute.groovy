abstract class BragAttribute {
	static belongsTo = [SiteUser,Brag]
	SiteUser byUser
	Brag forBrag
	Date createdOn = new Date()
}
