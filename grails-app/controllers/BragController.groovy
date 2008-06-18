class BragController extends BaseController {
	
	def beforeInterceptor = [action:this.&auth, except:['list','show','searchByTagForUser','searchAllByTag','search']]
	
    def index = { redirect(action:list,params:params) }

    // the delete, save and update actions only
    // accept POST requests
    def allowedMethods = [delete:'POST',
                          save:'POST',
                          update:'POST']

    def list = {
		params.max = 10
		params.order = 'desc'
        [bragList: Brag.listOrderByCreatedOn(params), total:Brag.count()]
    }

    def show = {
		def brag = Brag.findByPermalink( params.permalink )
		[ brag : brag ]
    }

	def search = {
        def bragList = Brag.findAllByAboutIlike('%' + params.q + '%')
		render(view:'list',model:[bragList:bragList,searchTerm:params.q,total:bragList.size()])
    }
	
	//TODO: Refactor with TagReference
	def searchByTagForUser = {
		def user = SiteUser.get(params.user.toInteger())
		def bragList = Brag.createCriteria().list() {
		    and {
		        eq('byUser', user)
		        tags {
		            eq('name', params.tagName)
		        }
		    }
		}	
		//def tags = Tag.findAllByNameAndByUser(params.tagName,user)
		//def bragList = tags.brags
		render(view:'list',model:[userId:user.id,forUser:user.displayName,bragList:bragList,forTag:params.tagName,total:bragList.size()])
    }

	def searchAllByTag = {
        def tag = Tag.findByName(params.tagName)
		render(view:'list',model:[bragList:tag.brags,forTag:params.tagName,total:tag.brags.size()])
    }

    def create = {
    }

    def save = {
        //TODO: add functionality for a list of %like% brags with a separate "like brags" list view
		//and 'confirmSave' and 'scratch' actions
		def brag = Brag.findByAbout(params.about.trim())
		if(brag) {
			flash.message = 'Exactly the same brag already exists'
			render(view:'show',model:[brag:brag])
			return
		}
		else {
			brag = new Brag()
        	brag.properties = params
			brag.permalink = params.about.encodeAsPermalink()
			brag.byUser = session.user
			//Add tags if any
			def tags = params.tagTokens.encodeAsUniqueList()
			tags.each {
				def t = Tag.findByName(it)
				if(!t) t = new Tag(name:it)
				brag.addToTags(t)
			}
			if(brag.save()) {
           		render(view:'show',model:[brag:brag])
        	}
        	else {
            	render(view:'create',model:[brag:brag])
        	}
    	}
	}
}