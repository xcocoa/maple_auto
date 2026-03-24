package com.octopus.ad;

import android.os.Bundle;
import com.octopus.ad.internal.network.a;
import com.octopus.ad.internal.q;
import java.util.Date;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class AdRequest {
    public static final String DEVICE_ID_EMULATOR = com.octopus.ad.internal.network.a.b;
    public static final int ERROR_CODE_INTERNAL_ERROR = 80001;
    public static final int ERROR_CODE_INVALID_REQUEST = 80002;
    public static final int ERROR_CODE_NETWORK_ERROR = 80003;
    public static final int ERROR_CODE_NOT_READY_TO_REQUEST = 80000;
    public static final int ERROR_CODE_NO_FILL = 80100;
    public static final int ERROR_CODE_RENDER_FAIL = 80101;
    public static final int ERROR_CODE_VIDEO_PLAY_FAIL = 80200;
    public static final int INVALID_DISPLAY = 80102;
    public static final int INVALID_MEDIA_TYPE = 80103;
    private final a.C0197a a;

    public static final class Builder {
        private final a.C0197a mImpl;

        public Builder() {
            a.C0197a c0197a = new a.C0197a();
            this.mImpl = c0197a;
            c0197a.b(AdRequest.DEVICE_ID_EMULATOR);
        }

        public Builder addKeyword(String str) {
            this.mImpl.a(str);
            return this;
        }

        public Builder addNetworkExtrasBundle(Class<? extends Object> cls, Bundle bundle) {
            this.mImpl.a(cls, bundle);
            return this;
        }

        public Builder addTestDevice(String str) {
            this.mImpl.b(str);
            return this;
        }

        public AdRequest build() {
            return new AdRequest(this);
        }

        public Builder setBirthday(Date date) {
            this.mImpl.a(date);
            return this;
        }

        public Builder setContentUrl(String str) {
            q.a(str, (Object) "Content URL must be non-null.");
            q.a(str, (Object) "Content URL must be non-empty.");
            q.a(str.length() <= 512, "Content URL must not exceed %d in length.  Provided length was %d.", 512, Integer.valueOf(str.length()));
            this.mImpl.c(str);
            return this;
        }

        public Builder setGender(int i) {
            this.mImpl.a(i);
            return this;
        }

        public Builder setIsDesignedForFamilies(boolean z) {
            this.mImpl.b(z);
            return this;
        }

        public Builder setRequestAgent(String str) {
            this.mImpl.d(str);
            return this;
        }

        public Builder tagForChildDirectedTreatment(boolean z) {
            this.mImpl.a(z);
            return this;
        }
    }

    private AdRequest(Builder builder) {
        this.a = builder.mImpl;
    }

    public Date getBirthday() {
        return this.a.a();
    }

    public String getContentUrl() {
        return this.a.b();
    }

    public int getGender() {
        return this.a.c();
    }

    public Set<String> getKeywords() {
        return this.a.d();
    }

    public <T> Bundle getNetworkExtrasBundle(Class<T> cls) {
        return this.a.a((Class<? extends Object>) cls);
    }

    public a.C0197a impl() {
        return this.a;
    }
}
