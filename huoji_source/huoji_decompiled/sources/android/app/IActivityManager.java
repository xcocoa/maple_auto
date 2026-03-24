package android.app;

import android.app.ActivityManager;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import java.util.List;

/* JADX INFO: loaded from: assets/AppReboot.dex */
public interface IActivityManager extends IInterface {
    void forceStopPackage(String str, int i) throws RemoteException;

    List<ActivityManager.RunningAppProcessInfo> getRunningAppProcesses() throws RemoteException;

    void killBackgroundProcesses(String str, int i) throws RemoteException;

    void removeContentProviderExternal(String str, IBinder iBinder) throws RemoteException;
}
