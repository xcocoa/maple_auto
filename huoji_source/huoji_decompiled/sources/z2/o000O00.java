package z2;

import android.net.Uri;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import java.net.HttpURLConnection;
import org.apache.http.HttpRequest;

/* JADX INFO: loaded from: classes.dex */
public class o000O00 extends o000Oo0 {
    private String OoooOoo;
    private String Ooooo00;

    public o000O00(String str, String str2) {
        this.OoooOoo = str;
        this.Ooooo00 = str2;
    }

    @Override // z2.o000Oo0
    public void OooO00o(o000OO0O<?, ?> o000oo0o, HttpURLConnection httpURLConnection) {
        byte[] bytes = (String.valueOf(this.OoooOoo) + ":" + this.Ooooo00).getBytes();
        StringBuilder sb = new StringBuilder("Basic ");
        sb.append(new String(o00O000.OooOOOO(bytes, 0, bytes.length)));
        String string = sb.toString();
        httpURLConnection.setRequestProperty(HttpHeaders.HOST, Uri.parse(o000oo0o.getUrl()).getHost());
        httpURLConnection.setRequestProperty("Authorization", string);
    }

    @Override // z2.o000Oo0
    public void OooO0O0(o000OO0O<?, ?> o000oo0o, HttpRequest httpRequest) {
        byte[] bytes = (String.valueOf(this.OoooOoo) + ":" + this.Ooooo00).getBytes();
        StringBuilder sb = new StringBuilder("Basic ");
        sb.append(new String(o00O000.OooOOOO(bytes, 0, bytes.length)));
        String string = sb.toString();
        httpRequest.addHeader(HttpHeaders.HOST, Uri.parse(o000oo0o.getUrl()).getHost());
        httpRequest.addHeader("Authorization", string);
    }

    @Override // z2.o000Oo0
    public void OooO0OO() {
    }

    @Override // z2.o000Oo0
    public boolean OooO0o(o000OO0O<?, ?> o000oo0o, o000O o000o) {
        return false;
    }

    @Override // z2.o000Oo0
    public boolean OooO0o0() {
        return true;
    }

    @Override // z2.o000Oo0
    public boolean OooOO0(o000OO0O<?, ?> o000oo0o) {
        return false;
    }
}
