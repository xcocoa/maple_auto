package mobi.oneway.common.service;

import android.R;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import android.os.SystemClock;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public class OwCancleService extends Service {

    public class OooO00o implements Runnable {
        public OooO00o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SystemClock.sleep(500L);
            OwCancleService.this.stopForeground(true);
            ((NotificationManager) OwCancleService.this.getSystemService("notification")).cancel(110);
            OwCancleService.this.stopSelf();
        }
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        int i3 = Build.VERSION.SDK_INT;
        if (i3 > 18 && i3 < 25) {
            Notification.Builder builder = new Notification.Builder(this);
            builder.setSmallIcon(R.drawable.sym_def_app_icon);
            startForeground(110, builder.build());
            new Thread(new OooO00o()).start();
        }
        return super.onStartCommand(intent, i, i2);
    }
}
