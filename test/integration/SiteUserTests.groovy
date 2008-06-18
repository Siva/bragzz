/*For some reason 'find by primary key' e.g. SiteUser.get(1) returns null. Probably has to do with
transaction isolation and Hibernate Session cache, etc. For now it's OK, so we have to use SiteUser.list()[0] in our tests */
class SiteUserTests extends GroovyTestCase {
	
	void setUp() {
		new SiteUser(name:'name1',password:'passwd1',displayName:'Full Name1',email:'me@gmail.com').save()
	}
	
	void tearDown() {
		SiteUser.list()*.delete()
	}

	void testCreate() {
		assert 1 == SiteUser.list().size()
	}
	
	
	void testFinderMethods() {
		assert SiteUser.findByName('name1')
		assert SiteUser.findByDisplayName('Full Name1')
		assert SiteUser.findByNameAndDisplayNameLike('name1','Full%')
		assert !SiteUser.findByDisplayNameLike('Full G%')
	}
	
	void testModify() {
		assert !SiteUser.findByDisplayName('Full Name2')
		def u = SiteUser.list()[0]
		u.displayName = 'Full Name2'
		u.save()
		assert SiteUser.findByDisplayName('Full Name2')
	}
	
	void testValidation() {
		//failing not-null constraints
		assert !new SiteUser().validate()
		//failing password size constriant
		assert !new SiteUser(name:'name',email:'me@gmail.com',password:'passw').validate()
		
		def dispName = new StringBuffer()
		31.times {
			dispName << 'c'
		}
		//failing displayName maxSize constriant
		assert !new SiteUser(name:'name',email:'me@gmail.com',password:'passwd',displayName:dispName.toString()).validate()
		//failing email constraint
		assert !new SiteUser(name:'name',email:'me.gmail.com',password:'passw',displayName:'Me').validate()
		//passing all the validation
		assert new SiteUser(name:'name',email:'me@gmail.com',password:'passwd',displayName:'Me').validate()
	}
}
