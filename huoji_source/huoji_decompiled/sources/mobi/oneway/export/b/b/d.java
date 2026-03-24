package mobi.oneway.export.b.b;

import java.util.List;
import mobi.oneway.export.enums.OnewayAdCloseType;
import mobi.oneway.export.enums.OnewaySdkError;
import mobi.oneway.export.feed.IFeedAd;

/* JADX INFO: loaded from: classes2.dex */
public interface d {
    void a(String str, List<IFeedAd> list);

    void a(String str, OnewayAdCloseType onewayAdCloseType);

    void a(String str, OnewayAdCloseType onewayAdCloseType, String str2);

    void a(String str, OnewaySdkError onewaySdkError, String str2);

    void b(String str);

    void c(String str);

    void d(String str);

    void e(String str);
}
