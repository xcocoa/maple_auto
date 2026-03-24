package com.jakewharton.retrofit2.adapter.rxjava2;

import java.util.Objects;
import retrofit2.Response;
import z2.o4;

/* JADX INFO: loaded from: classes2.dex */
public final class HttpException extends Exception {
    private final int code;
    private final String message;
    private final transient Response<?> response;

    public HttpException(Response<?> response) {
        super(getMessage(response));
        this.code = response.code();
        this.message = response.message();
        this.response = response;
    }

    private static String getMessage(Response<?> response) {
        Objects.requireNonNull(response, "response == null");
        return "HTTP " + response.code() + o4.OooO00o.OooO0Oo + response.message();
    }

    public int code() {
        return this.code;
    }

    public String message() {
        return this.message;
    }

    public Response<?> response() {
        return this.response;
    }
}
