package z2;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.http.bean.NotifyMsgBean;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class k6 {
    private static final int OooO0O0 = 1;
    private static k6 OooO0OO;
    private j6 OooO00o = new j6(AppContext.OooO00o(), "MESSAGE.db", null, 1);

    public class OooO00o implements Runnable {
        public final /* synthetic */ r3 OoooOoO;

        public OooO00o(r3 r3Var) {
            this.OoooOoO = r3Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            ArrayList arrayList = new ArrayList();
            SQLiteDatabase writableDatabase = k6.this.OooO00o.getWritableDatabase();
            Cursor cursorQuery = writableDatabase.query(g6.OooO0Oo, null, null, null, null, null, "id desc");
            if (cursorQuery.moveToFirst()) {
                do {
                    NotifyMsgBean notifyMsgBean = new NotifyMsgBean();
                    notifyMsgBean.NoticeContent = cursorQuery.getString(cursorQuery.getColumnIndex("content"));
                    notifyMsgBean.DescriptionType = cursorQuery.getString(cursorQuery.getColumnIndex("type"));
                    notifyMsgBean.NoticeDescription = cursorQuery.getString(cursorQuery.getColumnIndex("description"));
                    notifyMsgBean.ID = cursorQuery.getString(cursorQuery.getColumnIndex("number"));
                    notifyMsgBean.NoticeTitle = cursorQuery.getString(cursorQuery.getColumnIndex("title"));
                    notifyMsgBean.NoticeTime = cursorQuery.getString(cursorQuery.getColumnIndex("time"));
                    arrayList.add(notifyMsgBean);
                } while (cursorQuery.moveToNext());
            }
            cursorQuery.close();
            writableDatabase.close();
            this.OoooOoO.OooO00o(arrayList);
        }
    }

    private k6() {
    }

    public static k6 OooO0Oo() {
        if (OooO0OO == null) {
            synchronized (k6.class) {
                if (OooO0OO == null) {
                    OooO0OO = new k6();
                }
            }
        }
        return OooO0OO;
    }

    public void OooO0O0() {
        this.OooO00o.close();
    }

    public void OooO0OO() {
        this.OooO00o.getWritableDatabase().delete(g6.OooO0Oo, null, null);
    }

    public void OooO0o(r3 r3Var) {
        rb.OooO00o().OooO00o(new OooO00o(r3Var));
    }

    public void OooO0o0(List<NotifyMsgBean> list) {
        SQLiteDatabase writableDatabase = this.OooO00o.getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        for (int size = list.size() - 1; size >= 0; size--) {
            NotifyMsgBean notifyMsgBean = list.get(size);
            contentValues.clear();
            contentValues.put("number", notifyMsgBean.ID);
            contentValues.put("title", notifyMsgBean.NoticeTitle);
            contentValues.put("time", notifyMsgBean.NoticeTime);
            contentValues.put("content", notifyMsgBean.NoticeContent);
            contentValues.put("description", notifyMsgBean.NoticeDescription);
            contentValues.put("type", notifyMsgBean.DescriptionType);
            writableDatabase.insert(g6.OooO0Oo, null, contentValues);
        }
        writableDatabase.close();
    }
}
