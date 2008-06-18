class CommentController {

	def index = {}

	def save = { 
		def brag = Brag.get(params.id)
		def user = SiteUser.get(session.user.id)
		user.commentOnBrag(brag,params.comment)
		redirect(controller:'brag',action:'show',params:[permalink:brag.permalink])
	}
	
	def auth = {
		session.originalRequestParams = [controller:'brag',action:'show',params:params]
		redirect(controller:'siteUser',action:'login')
	}
}

