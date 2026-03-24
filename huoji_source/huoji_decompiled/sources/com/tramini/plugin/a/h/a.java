package com.tramini.plugin.a.h;

import android.text.TextUtils;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    public static final String a = "a";

    /* JADX INFO: renamed from: com.tramini.plugin.a.h.a$a, reason: collision with other inner class name */
    public interface InterfaceC0229a {
        void a(com.tramini.plugin.a.d.a aVar);
    }

    public static void a(final com.tramini.plugin.b.b bVar, final String str, final String str2, final String str3, final InterfaceC0229a interfaceC0229a) {
        if (bVar == null) {
            interfaceC0229a.a(null);
        } else {
            com.tramini.plugin.a.h.b.a.a().a(new Runnable() { // from class: com.tramini.plugin.a.h.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    ConcurrentHashMap<String, com.tramini.plugin.a.d.c> concurrentHashMapF;
                    com.tramini.plugin.a.d.a aVarA = null;
                    try {
                        concurrentHashMapF = bVar.f();
                    } catch (Throwable unused) {
                    }
                    if (concurrentHashMapF == null) {
                        InterfaceC0229a interfaceC0229a2 = interfaceC0229a;
                        if (interfaceC0229a2 != null) {
                            interfaceC0229a2.a(null);
                            return;
                        }
                        return;
                    }
                    com.tramini.plugin.a.d.c cVar = concurrentHashMapF.get(TextUtils.equals(str, "33") ? "2" : str);
                    String str4 = cVar != null ? cVar.d : "";
                    if (TextUtils.isEmpty(str4)) {
                        InterfaceC0229a interfaceC0229a3 = interfaceC0229a;
                        if (interfaceC0229a3 != null) {
                            interfaceC0229a3.a(null);
                            return;
                        }
                        return;
                    }
                    JSONObject jSONObject = new JSONObject(str4);
                    String str5 = str;
                    byte b = -1;
                    int iHashCode = str5.hashCode();
                    if (iHashCode != 50) {
                        if (iHashCode != 56) {
                            if (iHashCode != 1572) {
                                if (iHashCode != 1632) {
                                    if (iHashCode != 1691) {
                                        if (iHashCode != 53) {
                                            if (iHashCode != 54) {
                                                if (iHashCode != 1606) {
                                                    if (iHashCode == 1607 && str5.equals("29")) {
                                                        b = 7;
                                                    }
                                                } else if (str5.equals("28")) {
                                                    b = 6;
                                                }
                                            } else if (str5.equals("6")) {
                                                b = 3;
                                            }
                                        } else if (str5.equals("5")) {
                                            b = 2;
                                        }
                                    } else if (str5.equals("50")) {
                                        b = 8;
                                    }
                                } else if (str5.equals("33")) {
                                    b = 1;
                                }
                            } else if (str5.equals("15")) {
                                b = 5;
                            }
                        } else if (str5.equals("8")) {
                            b = 4;
                        }
                    } else if (str5.equals("2")) {
                        b = 0;
                    }
                    switch (b) {
                        case 0:
                        case 1:
                            aVarA = com.tramini.plugin.a.f.a.a(jSONObject, cVar, str2, str3);
                            break;
                        case 2:
                            aVarA = com.tramini.plugin.a.f.b.a(jSONObject, cVar, str2, str3);
                            break;
                        case 3:
                            aVarA = com.tramini.plugin.a.f.e.a(jSONObject, cVar, str2, str3);
                            break;
                        case 4:
                            aVarA = com.tramini.plugin.a.f.c.a(jSONObject, cVar, str2);
                            break;
                        case 5:
                            aVarA = com.tramini.plugin.a.f.i.a(jSONObject, cVar, str2);
                            break;
                        case 6:
                            aVarA = com.tramini.plugin.a.f.d.a(jSONObject, cVar, str2);
                            break;
                        case 7:
                            aVarA = com.tramini.plugin.a.f.h.a(jSONObject, cVar, str2);
                            break;
                        case 8:
                            aVarA = com.tramini.plugin.a.f.g.a(jSONObject, cVar, str2);
                            break;
                    }
                    InterfaceC0229a interfaceC0229a4 = interfaceC0229a;
                    if (interfaceC0229a4 != null) {
                        interfaceC0229a4.a(aVarA);
                    }
                }
            });
        }
    }
}
