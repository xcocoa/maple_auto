package z2;

import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.provider.ContactsContract;
import android.util.Log;
import android.widget.Toast;
import androidx.core.content.ContextCompat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import net.grandcentrix.tray.provider.TrayContract;

/* JADX INFO: loaded from: classes2.dex */
public class jf {
    private static final String OooO00o = "jf";
    private static Handler OooO0O0 = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void OooO(Context context) {
        Toast.makeText(context, "未授予联系人权限，操作失败！", 0).show();
    }

    public static void OooO00o(Context context) throws Throwable {
        try {
            if (!OooO0oo(context)) {
                return;
            }
            Cursor cursor = null;
            if (context.getContentResolver().delete(ContactsContract.RawContacts.CONTENT_URI, null, null) > 0) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            try {
                try {
                    Cursor cursorQuery = context.getContentResolver().query(ContactsContract.RawContacts.CONTENT_URI, new String[]{TrayContract.Preferences.Columns.ID, "account_type"}, null, null, null);
                    if (cursorQuery != null) {
                        try {
                            if (cursorQuery.moveToFirst()) {
                                do {
                                    long j = cursorQuery.getLong(0);
                                    cursorQuery.getString(1);
                                    arrayList.add(ContentProviderOperation.newUpdate(ContentUris.withAppendedId(ContactsContract.RawContacts.CONTENT_URI, j)).withValue("account_name", null).withValue("account_type", null).build());
                                    arrayList.add(ContentProviderOperation.newDelete(ContentUris.withAppendedId(ContactsContract.RawContacts.CONTENT_URI, j)).build());
                                    if (arrayList.size() >= 100) {
                                        OooO0OO(context, arrayList);
                                        arrayList.clear();
                                    }
                                } while (cursorQuery.moveToNext());
                            }
                        } catch (Exception e) {
                            e = e;
                            cursor = cursorQuery;
                            Log.e("ClearContacts", "查询失败", e);
                            if (cursor != null) {
                                cursor.close();
                            }
                        } catch (Throwable th) {
                            th = th;
                            cursor = cursorQuery;
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th;
                        }
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                } catch (Exception e2) {
                    e = e2;
                }
                if (arrayList.isEmpty()) {
                    return;
                }
                OooO0OO(context, arrayList);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    public static void OooO0O0(Context context, String str) throws Throwable {
        Cursor cursor = null;
        try {
            try {
                if (!OooO0oo(context)) {
                    return;
                }
                Cursor cursorQuery = context.getContentResolver().query(ContactsContract.Data.CONTENT_URI, new String[]{"raw_contact_id"}, "data1=?", new String[]{str}, null);
                try {
                    if (cursorQuery.moveToFirst()) {
                        do {
                            Uri uriWithAppendedId = ContentUris.withAppendedId(ContactsContract.RawContacts.CONTENT_URI, cursorQuery.getInt(0));
                            if (context.getContentResolver().delete(uriWithAppendedId, null, null) <= 0) {
                                ContentResolver contentResolver = context.getContentResolver();
                                Cursor cursorQuery2 = contentResolver.query(ContactsContract.RawContacts.CONTENT_URI, new String[]{TrayContract.Preferences.Columns.ID}, "contact_id = ?", new String[]{String.valueOf(ContentUris.parseId(uriWithAppendedId))}, null);
                                if (cursorQuery2 != null && cursorQuery2.moveToFirst()) {
                                    long j = cursorQuery2.getLong(0);
                                    cursorQuery2.close();
                                    ContentValues contentValues = new ContentValues();
                                    contentValues.putNull("account_name");
                                    contentValues.putNull("account_type");
                                    if (contentResolver.update(ContentUris.withAppendedId(ContactsContract.RawContacts.CONTENT_URI, j), contentValues, null, null) > 0) {
                                        contentResolver.delete(uriWithAppendedId, null, null);
                                    }
                                }
                            }
                        } while (cursorQuery.moveToNext());
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                        return;
                    }
                    return;
                } catch (Exception e) {
                    e = e;
                    cursor = cursorQuery;
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
            }
            e.printStackTrace();
            if (cursor != null) {
                cursor.close();
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static void OooO0OO(Context context, ArrayList<ContentProviderOperation> arrayList) {
        try {
            context.getContentResolver().applyBatch("com.android.contacts", arrayList);
        } catch (Exception e) {
            Log.e("ClearContacts", "批量操作失败", e);
            OooO0oO(context, arrayList);
        }
    }

    private static boolean OooO0Oo(ContentResolver contentResolver, Uri uri) {
        Cursor cursorQuery = contentResolver.query(ContactsContract.RawContacts.CONTENT_URI, new String[]{TrayContract.Preferences.Columns.ID}, "contact_id = ?", new String[]{String.valueOf(ContentUris.parseId(uri))}, null);
        if (cursorQuery != null && cursorQuery.moveToFirst()) {
            long j = cursorQuery.getLong(0);
            cursorQuery.close();
            ContentValues contentValues = new ContentValues();
            contentValues.putNull("account_name");
            contentValues.putNull("account_type");
            if (contentResolver.update(ContentUris.withAppendedId(ContactsContract.RawContacts.CONTENT_URI, j), contentValues, null, null) > 0 && contentResolver.delete(uri, null, null) > 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void OooO0o(Context context) throws Throwable {
        Cursor cursorQuery;
        Exception e;
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            cursorQuery = context.getContentResolver().query(ContactsContract.RawContacts.CONTENT_URI, new String[]{TrayContract.Preferences.Columns.ID, "account_type"}, null, null, null);
            if (cursorQuery != null) {
                try {
                    try {
                        if (cursorQuery.moveToFirst()) {
                            do {
                                long j = cursorQuery.getLong(0);
                                cursorQuery.getString(1);
                                arrayList.add(ContentProviderOperation.newUpdate(ContentUris.withAppendedId(ContactsContract.RawContacts.CONTENT_URI, j)).withValue("account_name", null).withValue("account_type", null).build());
                                arrayList.add(ContentProviderOperation.newDelete(ContentUris.withAppendedId(ContactsContract.RawContacts.CONTENT_URI, j)).build());
                                if (arrayList.size() >= 100) {
                                    OooO0OO(context, arrayList);
                                    arrayList.clear();
                                }
                            } while (cursorQuery.moveToNext());
                        }
                    } catch (Exception e2) {
                        e = e2;
                        Log.e("ClearContacts", "查询失败", e);
                        if (cursorQuery != null) {
                        }
                        if (arrayList.isEmpty()) {
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
        } catch (Exception e3) {
            cursorQuery = null;
            e = e3;
        } catch (Throwable th2) {
            th = th2;
            if (cursor != null) {
            }
            throw th;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        if (arrayList.isEmpty()) {
            OooO0OO(context, arrayList);
        }
    }

    public static boolean OooO0o0(Context context, String str, String str2, String str3) {
        if (!OooO0oo(context)) {
            return false;
        }
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        arrayList.add(ContentProviderOperation.newInsert(ContactsContract.RawContacts.CONTENT_URI).withValue("account_type", null).withValue("account_name", null).build());
        arrayList.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/name").withValue("data2", str2).withValue("data3", str).build());
        arrayList.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/phone_v2").withValue("data1", str3).withValue("data2", 2).build());
        try {
            context.getContentResolver().applyBatch("com.android.contacts", arrayList);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            Toast.makeText(context, e.getMessage(), 1).show();
            return false;
        }
    }

    private static void OooO0oO(Context context, ArrayList<ContentProviderOperation> arrayList) {
        try {
            Iterator<ContentProviderOperation> it = arrayList.iterator();
            while (it.hasNext()) {
                context.getContentResolver().applyBatch("com.android.contacts", new ArrayList<>(Collections.singletonList(it.next())));
            }
        } catch (Exception e) {
            Log.w("ClearContacts", "重试失败", e);
        }
    }

    private static boolean OooO0oo(final Context context) {
        boolean z = ContextCompat.checkSelfPermission(context, "android.permission.WRITE_CONTACTS") == 0;
        if (!z) {
            OooO0O0.post(new Runnable() { // from class: z2.ef
                @Override // java.lang.Runnable
                public final void run() {
                    jf.OooO(context);
                }
            });
        }
        return z;
    }
}
