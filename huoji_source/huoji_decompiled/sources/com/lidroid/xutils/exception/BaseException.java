package com.lidroid.xutils.exception;

/* JADX INFO: loaded from: classes2.dex */
public class BaseException extends Exception {
    private static final long serialVersionUID = 1;

    public BaseException() {
    }

    public BaseException(String str) {
        super(str);
    }

    public BaseException(String str, Throwable th) {
        super(str, th);
    }

    public BaseException(Throwable th) {
        super(th);
    }
}
