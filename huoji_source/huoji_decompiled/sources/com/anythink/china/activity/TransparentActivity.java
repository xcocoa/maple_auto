package com.anythink.china.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.core.app.ActivityCompat;
import com.anythink.china.common.d;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class TransparentActivity extends Activity {
    public static final String a = "type";
    public static final String b = "request_code";
    public static final int c = 1000;
    public static final String d = "permission_list";
    public static final ConcurrentHashMap<Integer, d.a> e = new ConcurrentHashMap<>();

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent.getIntExtra("type", 0) == 1000) {
            ActivityCompat.requestPermissions(this, intent.getStringArrayExtra(d), intent.getIntExtra(b, 0));
        } else {
            finish();
        }
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        ConcurrentHashMap<Integer, d.a> concurrentHashMap = e;
        if (concurrentHashMap.get(Integer.valueOf(i)) != null) {
            concurrentHashMap.remove(Integer.valueOf(i));
        }
        finish();
    }
}
