package com.anythink.expressad.atsignalcommon.mraid;

import android.net.Uri;
import android.text.TextUtils;
import com.anythink.expressad.atsignalcommon.windvane.WindVaneWebView;
import com.anythink.expressad.atsignalcommon.windvane.a;
import com.anythink.expressad.foundation.d.c;
import com.anythink.expressad.foundation.h.j;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class MraidUriUtil {
    private static volatile ConcurrentHashMap<String, String> a = new ConcurrentHashMap<>();
    private static ArrayList<String> b = new ArrayList<>();

    private static Set<String> a(Uri uri) {
        String encodedQuery = uri.getEncodedQuery();
        if (encodedQuery == null) {
            return Collections.emptySet();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int i = 0;
        do {
            int iIndexOf = encodedQuery.indexOf(38, i);
            if (iIndexOf == -1) {
                iIndexOf = encodedQuery.length();
            }
            int iIndexOf2 = encodedQuery.indexOf(61, i);
            if (iIndexOf2 > iIndexOf || iIndexOf2 == -1) {
                iIndexOf2 = iIndexOf;
            }
            linkedHashSet.add(Uri.decode(encodedQuery.substring(i, iIndexOf2)));
            i = iIndexOf + 1;
        } while (i < encodedQuery.length());
        return Collections.unmodifiableSet(linkedHashSet);
    }

    private static void a() {
        for (Method method : IMraidSignalCommunication.class.getDeclaredMethods()) {
            b.add(method.getName());
        }
    }

    private static void a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (!a.containsKey(str)) {
            a.put(str, str2);
            return;
        }
        String strConcat = a.get(str);
        if (TextUtils.isEmpty(str2) || strConcat.contains(str2)) {
            return;
        }
        if (strConcat.length() > 0) {
            strConcat = strConcat.concat(",");
        }
        a.put(str, strConcat.concat(str2));
    }

    public static void clearUnSupportMraidMethodMap() {
        if (a.size() > 0) {
            a.clear();
        }
    }

    public static void clearUnSupportMraidMethodMap(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        a.remove(str);
    }

    public static a getMraidMethodContext(WindVaneWebView windVaneWebView, String str) {
        Set<String> setUnmodifiableSet;
        Uri uri = Uri.parse(str);
        String scheme = uri.getScheme();
        if (TextUtils.isEmpty(scheme) || !scheme.contains(c.m)) {
            return null;
        }
        a aVar = new a();
        aVar.d = j.b("n+ztLkxpVTzBLkxgHN==");
        aVar.e = uri.getHost();
        int i = 0;
        if (b.size() == 0) {
            for (Method method : IMraidSignalCommunication.class.getDeclaredMethods()) {
                b.add(method.getName());
            }
        }
        if (!b.contains(aVar.e) && windVaneWebView != null) {
            String campaignId = windVaneWebView.getCampaignId();
            String strConcat = aVar.e;
            if (!TextUtils.isEmpty(campaignId)) {
                if (a.containsKey(campaignId)) {
                    String strConcat2 = a.get(campaignId);
                    if (!TextUtils.isEmpty(strConcat) && !strConcat2.contains(strConcat)) {
                        if (strConcat2.length() > 0) {
                            strConcat2 = strConcat2.concat(",");
                        }
                        strConcat = strConcat2.concat(strConcat);
                        a.put(campaignId, strConcat);
                    }
                } else {
                    a.put(campaignId, strConcat);
                }
            }
            CallMraidJS.getInstance().fireNativeMethodCompleteEvent(windVaneWebView, aVar.e);
            CallMraidJS.getInstance().fireErrorEvent(windVaneWebView, aVar.e, "Specified command is not implemented");
            return null;
        }
        String encodedQuery = uri.getEncodedQuery();
        if (encodedQuery == null) {
            setUnmodifiableSet = Collections.emptySet();
        } else {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            do {
                int iIndexOf = encodedQuery.indexOf(38, i);
                if (iIndexOf == -1) {
                    iIndexOf = encodedQuery.length();
                }
                int iIndexOf2 = encodedQuery.indexOf(61, i);
                if (iIndexOf2 > iIndexOf || iIndexOf2 == -1) {
                    iIndexOf2 = iIndexOf;
                }
                linkedHashSet.add(Uri.decode(encodedQuery.substring(i, iIndexOf2)));
                i = iIndexOf + 1;
            } while (i < encodedQuery.length());
            setUnmodifiableSet = Collections.unmodifiableSet(linkedHashSet);
        }
        try {
            JSONObject jSONObject = new JSONObject();
            for (String str2 : setUnmodifiableSet) {
                jSONObject.put(str2, uri.getQueryParameter(str2));
            }
            aVar.f = jSONObject.toString();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return aVar;
    }

    public static String getUnSupportMraidMethodString(String str) {
        if (a.containsKey(str)) {
            return a.get(str);
        }
        return null;
    }
}
