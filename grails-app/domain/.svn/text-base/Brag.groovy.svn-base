class Brag {
	String about
	String additionalInfo
	String permalink
	Date createdOn = new Date()
	
	static belongsTo = SiteUser
	SiteUser byUser
	
	static hasMany = [comments:Comment,votes:Vote,tags:Tag]
	
	static constraints = {
		about(maxSize:2000)
		additionalInfo(maxSize:4000,nullable:true)
	}
	
	def numberOfJealousVotes() {
		votes.findAll { it.jealous }.size()
	}
	
	def numberOfNotJealousVotes() {
		votes.findAll { !it.jealous }.size()
	}
	
	def usersWhoAreJealous() {
		votes.findAll { it.jealous }.collect { it.byUser }
	}
	
	def usersWhoAreNotJealous() {
		votes.findAll { !it.jealous }.collect { it.byUser }
	}
	
	def jealousPercentageString() {
		if(numberOfJealousVotes() == 0) {
			return '0%'
		}
		(100/(votes.size()/numberOfJealousVotes())).setScale(1, BigDecimal.ROUND_HALF_UP).toPlainString() + '%'
	}
	
	def notJealousPercentageString() {
		if(numberOfNotJealousVotes() == 0) {
			return '0%'
		} 
		(100/(votes.size()/numberOfNotJealousVotes())).setScale(1, BigDecimal.ROUND_HALF_UP).toPlainString() + '%'
	}
}	
