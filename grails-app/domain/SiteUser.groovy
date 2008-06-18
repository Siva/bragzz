class SiteUser {
	String name
	String password
	String displayName
	String email
	Date joinedOn = new Date()
	//List interests = []
	
	static hasMany = [comments:Comment,votes:Vote,brags:Brag]
	
	static constraints = {
		/*This constraint is turned off for the time being as it messes up the unit test. Has to
		to with Hibernate session flush mode and 'read-only' strategy. Need to figure out that one*/
		name(unique:true)
		displayName(maxSize:30)
		email(email:true)
	}
	
	def jealousAbout(theBrag) {
		return voteForBrag(theBrag,true)
	}
	
	def notJealousAbout(theBrag) {
		return voteForBrag(theBrag,false)
	}
	
	def commentOnBrag(theBrag,comment) {
		if(!comment) {
			return false
		}
		//Users could comment on any given brag as many times as they want
		def c = new Comment(body:comment)
		theBrag.addToComments(c)
		this.addToComments(c)
		save()
	}
	
	private def voteForBrag(theBrag,choice) {
		//Users cannot vote on their own brags
		if(this.id == theBrag.byUser.id) {
			return false
		}
		def vote = votes.find { it.forBrag.id == theBrag.id }
		//User already voted on this brag
		if(vote) {
			//Users cannot vote repeatedly with the same choice
			if(vote.jealous == choice) {
				return false
			}
			//However,users can change their choice as many times as they like
			else {
				vote.jealous = choice
				return true
			}
		}
		//New vote for this brag by user: create it and persist it along with all the associations!
		else {
			vote = new Vote(jealous:choice)
			theBrag.addToVotes(vote)
			this.addToVotes(vote)
			save()
		}
		return true
	}
}