dataSource {
	boolean pooling = true
	dbCreate = "update" // one of 'create', 'create-drop','update'
	url = "jdbc:hsqldb:file:bragzzDB"
	driverClassName = "org.hsqldb.jdbcDriver"
	username = "sa"
	password = ""
}
// environment specific settings
environments {
	/*development {
		dataSource {
			boolean pooling = true
			dbCreate = "update"
			url = "jdbc:mysql://localhost/bragaboutit"
			driverClassName = "com.mysql.jdbc.Driver"
			username = "ba"
			password = "ba_2007"
		}
	}*/
	test {
		dataSource {
			dbCreate = "update"
			url = "jdbc:hsqldb:mem:testDb"
		}
	}
	production {
		dataSource {
			dbCreate = "update"
			url = "jdbc:hsqldb:file:prodDb;shutdown=true"
		}
	}
 }