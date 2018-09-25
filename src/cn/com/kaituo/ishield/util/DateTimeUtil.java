package cn.com.kaituo.ishield.util;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 日期时间工具类
 * 
 * @author geyongshan
 *
 */
public class DateTimeUtil {
    public static long getSeconds() {
        return getSeconds(new Date());
    }
    
    public static String getSecondsStr() {
        return String.valueOf(getSeconds());
    }

    public static long getSeconds(Date date) {
        assert date != null;
        return date.getTime() / 1000;
    }
    
    public static String getSecondsStr(Date date) {
        return String.valueOf(getSeconds(date));
    }
    
    public static String format(Date date) {
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return format.format(date);
    }
}
