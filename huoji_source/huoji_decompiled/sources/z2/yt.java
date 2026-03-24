package z2;

import android.text.TextUtils;
import com.hlzn.socketclient.service.SocketService;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class yt {
    private final String OooO00o = yt.class.getSimpleName();
    private Map<String, xt> OooO0O0 = new ConcurrentHashMap();
    private SocketService OooO0OO;

    public yt(SocketService socketService) {
        this.OooO0OO = socketService;
    }

    public void OooO00o(String str) {
        if (str == null || this.OooO0O0.containsKey(str)) {
            return;
        }
        this.OooO0O0.put(str, new xt(this.OooO0OO, str));
    }

    public void OooO0O0(String str) {
        xt xtVarRemove;
        if (TextUtils.isEmpty(str) || (xtVarRemove = this.OooO0O0.remove(str)) == null) {
            return;
        }
        xtVarRemove.cancel();
    }

    public synchronized void OooO0OO() {
        Iterator<Map.Entry<String, xt>> it = this.OooO0O0.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().cancel();
        }
    }
}
