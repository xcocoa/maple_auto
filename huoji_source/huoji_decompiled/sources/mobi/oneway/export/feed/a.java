package mobi.oneway.export.feed;

import android.view.View;
import android.view.ViewGroup;
import java.util.List;
import mobi.oneway.export.AdListener.feed.OWFeedAdEventListener;
import mobi.oneway.export.AdListener.feed.OWFeedVideoAdListener;
import mobi.oneway.export.f.a.b;

/* JADX INFO: loaded from: classes2.dex */
public class a implements IFeedAd {
    private IFeedAd a;
    private mobi.oneway.export.f.a b;

    public a(IFeedAd iFeedAd, mobi.oneway.export.f.a aVar) {
        this.a = iFeedAd;
        this.b = aVar;
    }

    @Override // mobi.oneway.export.feed.IFeedAd
    public String getIconImage() {
        return this.a.getIconImage();
    }

    @Override // mobi.oneway.export.feed.IFeedAd
    public List<String> getImages() {
        return this.a.getImages();
    }

    @Override // mobi.oneway.export.feed.IFeedAd
    public String getTitle() {
        return this.a.getTitle();
    }

    @Override // mobi.oneway.export.feed.IFeedAd
    public int getType() {
        return this.a.getType();
    }

    @Override // mobi.oneway.export.feed.IFeedAd
    public View getVideoView() {
        return this.a.getVideoView();
    }

    @Override // mobi.oneway.export.feed.IFeedAd
    public void handleAdEvent(ViewGroup viewGroup, OWFeedAdEventListener oWFeedAdEventListener) {
        this.a.handleAdEvent(viewGroup, new b(this.b, oWFeedAdEventListener));
    }

    @Override // mobi.oneway.export.feed.IFeedAd
    public void setVideoAdListener(OWFeedVideoAdListener oWFeedVideoAdListener) {
    }
}
