package foot.ball.util;

import java.util.UUID;

public class UUIDUtil {
	public static String getUUID(){
		String string = "";
		UUID uuid = UUID.randomUUID();
		string = uuid.toString().replace("-", "");
		return string;
	}
}
