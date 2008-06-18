class VoteController extends BaseController {
	
	def index = {}
	
	def beforeInterceptor = this.&auth
	
	def jealous = {
		doVote(true)
	}
	
	def notJealous = {
		doVote(false)
	}
	
	private def doVote(jealous) {
		def brag = Brag.get(params.id)
		def user = SiteUser.get(session.user.id)
		if(jealous) {
			user.jealousAbout(brag)
		}
		else {
			user.notJealousAbout(brag)
		}
		if(params.remoteCall == '1') {
			render "${brag.numberOfJealousVotes()} (${brag.jealousPercentageString()}) / ${brag.numberOfNotJealousVotes()} (${brag.notJealousPercentageString()})"
			if(params.fromBragList == '0') {
				render(template:'/jealousUser',model:[brag:brag])
				render(template:'/notJealousUser',model:[brag:brag])
			}
			return
		}
		else {
			println("PROFILE: $params.fromProfile")
			if(params.fromProfile) {
				redirect(controller:'siteUser',action:'showProfileBrags',id:brag.byUser.id)
			}
			else if(params.fromBragList == '0') {
				redirect(controller:'brag',action:'show',params:[permalink:brag.permalink])
			}
			else {
				redirect(controller:'brag', action:'list')
			}
		}
	}
}