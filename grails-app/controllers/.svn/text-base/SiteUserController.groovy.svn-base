class SiteUserController {
    
	def index = {}

	def login = {
		if(session.user) {
			redirectToAppropriateControllerAndAction()
		}
	}
	
	def handleLogin = {
		def user = SiteUser.findByName(params.name)
		if (user) {
			if (user.password == params.password.encodeAsPassword()) {
				session.user = user
				redirectToAppropriateControllerAndAction()
			}
			else {
				handleInvalidLogin()
			}
		}
		else {
			handleInvalidLogin()
		}
	}
	
	def handleLogout = {
		if(session.user) {
			session.user = null
		}
		redirect(action:login)
	}
	
	//Just renders the "register" view
	def register = {}
	
	def handleRegistration = {
		def user = new SiteUser(params)
		if (params.password != params.confirm) {
			flash.message = "The passwords you entered do not match."
			redirect(action:register)
		}
		else {
			user.password = params.password.encodeAsPassword()
			if (user.save()) {
				redirect(action:login)
			}
			else {
				flash.user = user
				redirect(action:register)
			}
		}
	}
	
	def showProfileBrags = {
		def u = SiteUser.get(params.id)
		def brags = Brag.findAllByByUser(u,[sort:'createdOn',order:'desc',max:10])
		render(view:'brags',model:[bragList:brags,userId:params.id,userName:u.displayName,total:Brag.countByByUser(u)])
	}
	
	def showProfileComments = {
		def u = SiteUser.get(params.id)
		def comments = Comment.findAllByByUser(u,[sort:'createdOn',order:'desc',max:10])
		render(view:'comments',model:[commentList:comments,userId:params.id,userName:u.displayName,total:Comment.countByByUser(u)])
	}
	
	def showProfileVotes = {
		def u = SiteUser.get(params.id)
		def votes = Vote.findAllByByUser(u,[max:10,sort:'createdOn',order:'desc'])
		render(view:'votes',model:[voteList:votes,userId:params.id,userName:u.displayName,total:Vote.countByByUser(u)])
	}
	
	def showProfileTags = {
		def u = SiteUser.get(params.id)
		//TODO: add sort by name
		def tags = Tag.createCriteria().list() {
		    brags {
		        eq('byUser', u)
		    }
		}.unique()
		render(view:'tagCloud',model:[tagList:tags,user:u])
	}
	
	private def redirectToAppropriateControllerAndAction() {
		def redirectParams = session.originalRequestParams ? session.originalRequestParams : [controller:'brag',action:'list'] 
		session.originalRequestParams = null
		redirect(redirectParams)
	}
	
	private def handleInvalidLogin() {
		flash.message = "Incorrect login/password combination for user ${params.name}. Please try again."
		redirect(action:login)
	}
}