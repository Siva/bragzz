class UrlMappings {
	static mappings = {
		/*This is a current hack around the issue that 'paginate' tag does not generate reverse URL mappings */
		"/$controller/$action?/$id?"{
			constraints {
				controller(inList:['brag','siteUser'])
			}	
	  	}
		
		"/brags" {
	  		controller = 'brag'
			action = 'list'
	  	}
		"/brags/new/form" {
	  		controller = 'brag'
			action = 'create'
	  	}
	    "/brags/new" {
	  		controller = 'brag'
			action = 'save'
	  	}
		"/brags/search" {
	  		controller = 'brag'
			action = 'search'
	  	}
		"/brags/$permalink" {
	  		controller = 'brag'
			action = 'show'
	  	}
		"/login/form" {
	  		controller = 'siteUser'
			action = 'login'
	  	}
	    "/logout" {
	  		controller = 'siteUser'
			action = 'handleLogout'
	  	}
		"/auth" {
	  		controller = 'siteUser'
			action = 'handleLogin'
	  	}
		"/people/new/form" {
	  		controller = 'siteUser'
			action = 'register'
	  	}
	    "/people/new" {
	  		controller = 'siteUser'
			action = 'handleRegistration'
	  	}
		"/people/$id/brags" {
	  		controller = 'siteUser'
			action = 'showProfileBrags'
	  	}
		"/people/$id/comments" {
	  		controller = 'siteUser'
			action = 'showProfileComments'
	  	}
		"/people/$id/votes" {
	  		controller = 'siteUser'
			action = 'showProfileVotes'
	  	}
		"/people/$id/tags" {
	  		controller = 'siteUser'
			action = 'showProfileTags'
	  	}
		"/votes/jealous/$id/$fromBragList/$remoteCall/$fromProfile?" {
	  		constraints {
				remoteCall(inList:['0','1'])
			}
			controller = 'vote'
			action = 'jealous'
	  	}
	    "/votes/notJealous/$id/$fromBragList/$remoteCall/$fromProfile?" {
	  		constraints {
				remoteCall(inList:['0','1'])
			}
			controller = 'vote'
			action = 'notJealous'
	  	}
		"/comments/publish/$id" {
	  		controller = 'comment'
			action = 'save'
	  	}
	    "/comments/auth/$permalink" {
	  		controller = 'comment'
			action = 'auth'
	  	}
		"/brags/$user/tags/$tagName" {
	  		controller = 'brag'
			action = 'searchByTagForUser'
	  	}
		"/brags/tags/$tagName" {
	  		controller = 'brag'
			action = 'searchAllByTag'
	  	}
	}	
}
