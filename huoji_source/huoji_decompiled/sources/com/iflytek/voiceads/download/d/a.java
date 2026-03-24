package com.iflytek.voiceads.download.d;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class a implements Serializable {
    private com.iflytek.voiceads.download.a.a a;
    private com.iflytek.voiceads.download.e.a b;
    private int c;
    private String d;
    private String e;
    private long f;
    private long g;
    private int h;
    private int i;
    private List<b> j;

    /* JADX INFO: renamed from: com.iflytek.voiceads.download.d.a$a, reason: collision with other inner class name */
    public static final class C0183a {
        private String a;
        private String b;

        public C0183a a(String str) {
            this.a = str;
            return this;
        }

        public a a() {
            a aVar = new a();
            aVar.a(this.a);
            aVar.b(this.b);
            aVar.b(Math.abs(this.a.hashCode()));
            return aVar;
        }

        public C0183a b(String str) {
            this.b = str;
            return this;
        }
    }

    public com.iflytek.voiceads.download.e.a a() {
        return this.b;
    }

    public void a(int i) {
        this.h = i;
    }

    public void a(long j) {
        this.f = j;
    }

    public void a(com.iflytek.voiceads.download.a.a aVar) {
        this.a = aVar;
    }

    public void a(com.iflytek.voiceads.download.e.a aVar) {
        this.b = aVar;
    }

    public void a(String str) {
        this.d = str;
    }

    public void a(List<b> list) {
        this.j = list;
    }

    public void a(boolean z) {
        this.i = z ? 0 : 1;
    }

    public String b() {
        return this.d;
    }

    public void b(int i) {
        this.c = i;
    }

    public void b(long j) {
        this.g = j;
    }

    public void b(String str) {
        this.e = str;
    }

    public String c() {
        return this.e;
    }

    public long d() {
        return this.f;
    }

    public long e() {
        return this.g;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.c == ((a) obj).c;
    }

    public com.iflytek.voiceads.download.a.a f() {
        return this.a;
    }

    public int g() {
        return this.h;
    }

    public int h() {
        return this.c;
    }

    public int hashCode() {
        return this.c;
    }

    public boolean i() {
        return this.i == 0;
    }

    public List<b> j() {
        return this.j;
    }

    public boolean k() {
        return this.h == 5;
    }
}
