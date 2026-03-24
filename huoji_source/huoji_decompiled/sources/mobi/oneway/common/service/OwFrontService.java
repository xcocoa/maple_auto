package mobi.oneway.common.service;

import android.R;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import android.util.Log;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public class OwFrontService extends Service {
    private static final String OoooOoO = "DaemonService";
    public static final int OoooOoo = 110;

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        Notification notification;
        super.onCreate();
        Log.d(OoooOoO, "DaemonService---->onCreate被调用，启动前台service");
        int i = Build.VERSION.SDK_INT;
        if (i > 18 && i < 25) {
            Notification.Builder builder = new Notification.Builder(this);
            builder.setSmallIcon(R.drawable.sym_def_app_icon);
            builder.setContentTitle(getPackageName());
            builder.setContentText(getPackageName());
            notification = builder.build();
        } else if (i >= 18) {
            return;
        } else {
            notification = new Notification();
        }
        startForeground(110, notification);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        int i = Build.VERSION.SDK_INT;
        if (i <= 18 || i >= 25) {
            return;
        }
        ((NotificationManager) getSystemService("notification")).cancel(110);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        return 1;
    }
}
