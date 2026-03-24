package com.anythink.core.common.f;

import java.util.Map;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public final class am {
    private String a;
    private String b;
    private String c;
    private String d;
    private int e;
    private Map<String, Object> f;
    private Map<String, Object> g;
    private Map<String, String> h;

    public am(String str, String str2, String str3, String str4, Map<String, Object> map, Map<String, Object> map2) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.f = map;
        this.g = map2;
    }

    private void a(String str) {
        this.a = str;
    }

    private void b(String str) {
        this.b = str;
    }

    private void b(Map<String, Object> map) {
        this.f = map;
    }

    private void c(String str) {
        this.c = str;
    }

    private void c(Map<String, Object> map) {
        this.g = map;
    }

    private void d(String str) {
        this.d = str;
    }

    public final String a() {
        return this.a;
    }

    public final void a(int i) {
        this.e = i;
    }

    public final void a(Map<String, String> map) {
        this.h = map;
    }

    public final String b() {
        return this.b;
    }

    public final String c() {
        return this.c;
    }

    public final String d() {
        return this.d;
    }

    public final Map<String, Object> e() {
        return this.f;
    }

    public final Map<String, Object> f() {
        return this.g;
    }

    public final int g() {
        return this.e;
    }

    public final Map<String, String> h() {
        return this.h;
    }

    public final String toString() {
        return "PlaceStrategyLoaderParams{appId='" + this.a + "', appKey='" + this.b + "', placeId='" + this.c + "', settingId='" + this.d + "', fistReqPlaceStrategyFlag=" + this.e + ", customMap=" + this.f + ", tkExtraMap=" + this.g + ", cachedMap=" + this.h + MessageFormatter.DELIM_STOP;
    }
}
