import java.text.SimpleDateFormat;
import java.util.Iterator;

import com.justep.system.data.KSQL;
import com.justep.system.data.Row;
import com.justep.system.data.Table;
import com.justep.util.Utils;

public class Fn {
	private static final String DATA_MODEL = "/OA/workTime/data";
	private static final String CONCEPT = "OA_WM_OvertimeApply";
	private static Row getData(String bizID) {
		String ksql = String.format(
				"select m.* from %s m where m = '%s' ",
				CONCEPT, bizID);
		Table table = KSQL.select(ksql, null, DATA_MODEL, null);
		Utils.check(table.iterator().hasNext(),
				String.format("无效的ID[%s]", bizID));
		Row row = table.iterator().next();
		return row;
	}
	
	public static String getSummary(String bizID) {
		Row row = getData(bizID);
		String s = String.format("%s在%s申请加班%s天%s小时,加班时间范围为:%s -- %s。", 
					row.getString("fApplyPersonName"), 
					new SimpleDateFormat("yyyy-MM-dd HH:mm").format(row.getDateTime("fApplyDate")),
					row.getInt("fDAYS"), row.getInt("fHOURS"),
					new SimpleDateFormat("yyyy-MM-dd HH:mm").format(row.getDateTime("fSTARTTIME")),
					new SimpleDateFormat("yyyy-MM-dd HH:mm").format(row.getDateTime("fENDTIME"))
					);
		return s;
	}
}