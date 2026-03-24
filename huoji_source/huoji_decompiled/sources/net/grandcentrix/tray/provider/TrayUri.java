package net.grandcentrix.tray.provider;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.NonNull;
import net.grandcentrix.tray.core.TrayStorage;

/* JADX INFO: loaded from: classes2.dex */
public class TrayUri {
    private final Uri mContentUri;
    private final Uri mContentUriInternal;
    private Context mContext;

    public final class Builder {
        private boolean mInternal;
        private String mKey;
        private String mModule;
        private TrayStorage.Type mType = TrayStorage.Type.UNDEFINED;

        public Builder(Context context) {
            TrayUri.this.mContext = context.getApplicationContext();
        }

        public Uri build() {
            Uri.Builder builderBuildUpon = (this.mInternal ? TrayUri.this.mContentUriInternal : TrayUri.this.mContentUri).buildUpon();
            String str = this.mModule;
            if (str != null) {
                builderBuildUpon.appendPath(str);
            }
            String str2 = this.mKey;
            if (str2 != null) {
                builderBuildUpon.appendPath(str2);
            }
            TrayStorage.Type type = this.mType;
            if (type != TrayStorage.Type.UNDEFINED) {
                builderBuildUpon.appendQueryParameter("backup", TrayStorage.Type.USER.equals(type) ? "true" : "false");
            }
            return builderBuildUpon.build();
        }

        public Builder setInternal(boolean z) {
            this.mInternal = z;
            return this;
        }

        public Builder setKey(String str) {
            this.mKey = str;
            return this;
        }

        public Builder setModule(String str) {
            this.mModule = str;
            return this;
        }

        public Builder setType(TrayStorage.Type type) {
            this.mType = type;
            return this;
        }
    }

    public TrayUri(@NonNull Context context) {
        this.mContext = context;
        this.mContentUri = TrayContract.generateContentUri(context);
        this.mContentUriInternal = TrayContract.generateInternalContentUri(context);
    }

    public Builder builder() {
        return new Builder(this.mContext);
    }

    public Uri get() {
        return this.mContentUri;
    }

    public Uri getInternal() {
        return this.mContentUriInternal;
    }
}
