package com.anythink.expressad.atsignalcommon.windvane;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.webkit.WebView;
import com.anythink.expressad.atsignalcommon.b.c;
import com.anythink.expressad.atsignalcommon.mraid.MraidUriUtil;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public final class m implements Handler.Callback, d {
    public Pattern a;
    public String b;
    public Context d;
    public WindVaneWebView e;
    public final int c = 1;
    public Handler f = new Handler(Looper.getMainLooper(), this);

    public m(Context context) {
        this.d = context;
    }

    private void a(a aVar) {
        WindVaneWebView windVaneWebView = aVar.a;
        Object jsObject = windVaneWebView == null ? null : windVaneWebView.getJsObject(aVar.d);
        if (jsObject == null) {
            return;
        }
        try {
            c.f fVarA = com.anythink.expressad.atsignalcommon.b.c.a(this.d.getClassLoader(), jsObject.getClass().getName()).a(aVar.e, Object.class, String.class);
            fVarA.a();
            if (jsObject == null || !(jsObject instanceof l)) {
                return;
            }
            aVar.b = jsObject;
            aVar.c = fVarA;
            aVar.b = jsObject;
            Message messageObtain = Message.obtain();
            messageObtain.what = 1;
            messageObtain.obj = aVar;
            this.f.sendMessage(messageObtain);
        } catch (c.b.a e) {
            if (com.anythink.expressad.a.a) {
                e.printStackTrace();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void b(a aVar) {
        Message messageObtain = Message.obtain();
        messageObtain.what = 1;
        messageObtain.obj = aVar;
        this.f.sendMessage(messageObtain);
    }

    @Override // com.anythink.expressad.atsignalcommon.windvane.d
    public final WebView a() {
        return this.e;
    }

    @Override // com.anythink.expressad.atsignalcommon.windvane.d
    public final void a(WindVaneWebView windVaneWebView) {
        this.e = windVaneWebView;
    }

    @Override // com.anythink.expressad.atsignalcommon.windvane.d
    public final void a(Pattern pattern) {
        this.a = pattern;
    }

    @Override // com.anythink.expressad.atsignalcommon.windvane.d
    public final boolean a(String str) {
        if (!n.a(str)) {
            return false;
        }
        this.a = n.b(str);
        this.b = str;
        return true;
    }

    @Override // com.anythink.expressad.atsignalcommon.windvane.d
    public final a b(String str) {
        if (str == null) {
            return null;
        }
        a mraidMethodContext = MraidUriUtil.getMraidMethodContext(this.e, str);
        if (mraidMethodContext == null) {
            Matcher matcher = this.a.matcher(str);
            if (matcher.matches()) {
                mraidMethodContext = new a();
                int iGroupCount = matcher.groupCount();
                if (iGroupCount >= 5) {
                    mraidMethodContext.f = matcher.group(5);
                }
                if (iGroupCount >= 3) {
                    mraidMethodContext.d = matcher.group(1);
                    mraidMethodContext.g = matcher.group(2);
                    String strGroup = matcher.group(3);
                    mraidMethodContext.e = strGroup;
                    HashMap<String, String> map = com.anythink.expressad.atsignalcommon.base.e.k;
                    if (map != null && map.containsKey(strGroup)) {
                        mraidMethodContext.e = com.anythink.expressad.atsignalcommon.base.e.k.get(mraidMethodContext.e);
                    }
                }
            }
            return null;
        }
        mraidMethodContext.a = this.e;
        return mraidMethodContext;
    }

    @Override // com.anythink.expressad.atsignalcommon.windvane.d
    public final String b() {
        return this.b;
    }

    @Override // com.anythink.expressad.atsignalcommon.windvane.d
    public final void c(String str) {
        a mraidMethodContext;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (str == null) {
            mraidMethodContext = null;
        } else {
            mraidMethodContext = MraidUriUtil.getMraidMethodContext(this.e, str);
            if (mraidMethodContext == null) {
                Matcher matcher = this.a.matcher(str);
                if (matcher.matches()) {
                    mraidMethodContext = new a();
                    int iGroupCount = matcher.groupCount();
                    if (iGroupCount >= 5) {
                        mraidMethodContext.f = matcher.group(5);
                    }
                    if (iGroupCount >= 3) {
                        mraidMethodContext.d = matcher.group(1);
                        mraidMethodContext.g = matcher.group(2);
                        String strGroup = matcher.group(3);
                        mraidMethodContext.e = strGroup;
                        HashMap<String, String> map = com.anythink.expressad.atsignalcommon.base.e.k;
                        if (map != null && map.containsKey(strGroup)) {
                            mraidMethodContext.e = com.anythink.expressad.atsignalcommon.base.e.k.get(mraidMethodContext.e);
                        }
                    }
                }
                mraidMethodContext = null;
            }
            mraidMethodContext.a = this.e;
        }
        if (mraidMethodContext == null) {
            return;
        }
        WindVaneWebView windVaneWebView = mraidMethodContext.a;
        Object jsObject = windVaneWebView != null ? windVaneWebView.getJsObject(mraidMethodContext.d) : null;
        if (jsObject == null) {
            return;
        }
        try {
            c.f fVarA = com.anythink.expressad.atsignalcommon.b.c.a(this.d.getClassLoader(), jsObject.getClass().getName()).a(mraidMethodContext.e, Object.class, String.class);
            fVarA.a();
            if (jsObject == null || !(jsObject instanceof l)) {
                return;
            }
            mraidMethodContext.b = jsObject;
            mraidMethodContext.c = fVarA;
            mraidMethodContext.b = jsObject;
            Message messageObtain = Message.obtain();
            messageObtain.what = 1;
            messageObtain.obj = mraidMethodContext;
            this.f.sendMessage(messageObtain);
        } catch (c.b.a e) {
            if (com.anythink.expressad.a.a) {
                e.printStackTrace();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.anythink.expressad.atsignalcommon.windvane.d
    public final void d(String str) {
        this.b = str;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        a aVar = (a) message.obj;
        if (aVar == null) {
            return false;
        }
        try {
            if (message.what == 1) {
                Object obj = aVar.b;
                c.f fVar = aVar.c;
                Object[] objArr = new Object[2];
                objArr[0] = aVar;
                objArr[1] = TextUtils.isEmpty(aVar.f) ? MessageFormatter.DELIM_STR : aVar.f;
                fVar.a(obj, objArr);
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
