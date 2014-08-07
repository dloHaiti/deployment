dataSource {
   pooled = true
   dbCreate = "update"
   url = "jdbc:mysql://localhost/dlo"
   driverClassName = "com.mysql.jdbc.Driver"
   username = "root"
   password = "root"
}

dloserver {
    readings.incoming  = '/tmp/incoming'
    readings.processed = '/tmp/processed'
    readings.failed    = '/tmp/failed'

    measurement.timeformat = "yyyy-MM-dd hh:mm:ss z"
}

environments {
    production {
        dloserver {
		    readings.incoming  = '/tmp/incoming'
    		readings.processed = '/tmp/processed'
    		readings.failed    = '/tmp/failed'
        }
    }
}