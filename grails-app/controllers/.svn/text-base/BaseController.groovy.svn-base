abstract class BaseController { 
    def auth() { 
        if(!session.user) {
            def originalRequestParams = [controller:controllerName, action:actionName, params:params] 
			//TODO: find out why flash didn't work
			session.originalRequestParams = originalRequestParams
            redirect(controller:'siteUser',action:'login')
            return false 
        } 
    } 
}

