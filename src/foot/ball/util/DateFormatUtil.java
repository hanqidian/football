package foot.ball.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateFormatUtil {

	public static String getDateAndTime(){
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		return sdf.format(date);
	}
	
	public static String getDate(){
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("MM-dd");
		return sdf.format(date);
	}
	
}
