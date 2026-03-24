package com.anythink.core.common.i;

import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public final class d {
    public int a;
    public int b;
    public int c;
    public int d;
    public int e;
    public long f;
    public long g;
    public int h;

    private void a(int i) {
        this.a = i;
    }

    private void a(long j) {
        this.f = j;
    }

    private void b(int i) {
        this.b = i;
    }

    private void b(long j) {
        this.g = j;
    }

    private void c(int i) {
        this.c = i;
    }

    private void d(int i) {
        this.d = i;
    }

    private void e(int i) {
        this.e = i;
    }

    private void f(int i) {
        this.h = i;
    }

    public final int a() {
        return this.a;
    }

    public final int b() {
        return this.b;
    }

    public final int c() {
        return this.c;
    }

    public final int d() {
        return this.d;
    }

    public final int e() {
        return this.e;
    }

    public final long f() {
        return this.f;
    }

    public final long g() {
        return this.g;
    }

    public final int h() {
        return this.h;
    }

    public final String toString() {
        return "PerformaceEntry{totalMemory=" + this.a + ", phoneVailMemory=" + this.b + ", appJavaMemory=" + this.c + ", appMaxJavaMemory=" + this.d + ", cpuNum=" + this.e + ", totalStorage=" + this.f + ", lastStorage=" + this.g + ", cpuRate=" + this.h + MessageFormatter.DELIM_STOP;
    }
}
