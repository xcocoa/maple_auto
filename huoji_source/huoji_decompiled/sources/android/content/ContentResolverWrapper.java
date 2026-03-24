package android.content;

import android.annotation.TargetApi;

/* JADX INFO: loaded from: classes.dex */
public abstract class ContentResolverWrapper extends ContentResolver {
    public ContentResolver mBase;

    public ContentResolverWrapper(Context context) {
        super(context);
        this.mBase = context.getContentResolver();
    }

    public IContentProvider acquireExistingProvider(Context context, String str) {
        return this.mBase.acquireExistingProvider(context, str);
    }

    public IContentProvider acquireProvider(Context context, String str) {
        return this.mBase.acquireProvider(context, str);
    }

    @TargetApi(16)
    public IContentProvider acquireUnstableProvider(Context context, String str) {
        return this.mBase.acquireUnstableProvider(context, str);
    }

    @TargetApi(20)
    public void appNotRespondingViaProvider(IContentProvider iContentProvider) {
    }

    public boolean releaseProvider(IContentProvider iContentProvider) {
        return this.mBase.releaseProvider(iContentProvider);
    }

    @TargetApi(16)
    public boolean releaseUnstableProvider(IContentProvider iContentProvider) {
        return this.mBase.releaseUnstableProvider(iContentProvider);
    }

    @TargetApi(16)
    public void unstableProviderDied(IContentProvider iContentProvider) {
        this.mBase.unstableProviderDied(iContentProvider);
    }
}
