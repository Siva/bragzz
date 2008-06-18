import org.joda.time.*

class TimeAgoStringCodec { 

	static encode = { date ->
		def start = new DateTime(date)
		def end = new DateTime(new Date())
		def ago = Minutes.minutesBetween(start, end).getMinutes()
		if(ago == 0) {
	    	return 'less then 1 minute ago'
		}
		else if(ago < 60) {
	     	return "$ago minute" + (ago > 1 ? "s ago" : " ago")
		}

		ago = Hours.hoursBetween(start, end).getHours()
		if(ago < 24) {
	    	return "$ago hour" + (ago > 1 ? "s ago" : " ago")
		}
		ago = Days.daysBetween(start, end).getDays()
		if(ago < 7) {
	    	return "$ago day" + (ago > 1 ? "s ago" : " ago")
		}
		ago = Weeks.weeksBetween(start, end).getWeeks()
		if(ago < 5) {
	    	return "$ago week" + (ago > 1 ? "s ago" : " ago")
		}
		ago = Months.monthsBetween(start, end).getMonths()
		if(ago < 12) {
	    	return "$ago month" + (ago > 1 ? "s ago" : " ago")
		}
		ago = Years.yearsBetween(start, end).getYears()
		return "$ago year" + (ago > 1 ? "s ago" : " ago")
	}
}


