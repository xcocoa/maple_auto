package com.cyjh.http.bean.response;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class FengLingAdInfo implements Parcelable {
    public static final Parcelable.Creator<FengLingAdInfo> CREATOR = new Parcelable.Creator<FengLingAdInfo>() { // from class: com.cyjh.http.bean.response.FengLingAdInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FengLingAdInfo createFromParcel(Parcel parcel) {
            return new FengLingAdInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FengLingAdInfo[] newArray(int i) {
            return new FengLingAdInfo[i];
        }
    };
    private int actionName;
    private int adId;
    private String adPlatformIcon;
    private int adPlatformId;
    private String clickUrl;
    private int creativeType;
    private int drawType;
    private int height;
    private Imgs imgs;
    private int rating;
    private String title;
    private WebTracks webTracks;
    private int width;

    public class Imgs {
        private int height;
        private String src;
        private int width;

        public Imgs() {
        }

        public int getHeight() {
            return this.height;
        }

        public String getSrc() {
            return this.src;
        }

        public int getWidth() {
            return this.width;
        }

        public void setHeight(int i) {
            this.height = i;
        }

        public void setSrc(String str) {
            this.src = str;
        }

        public void setWidth(int i) {
            this.width = i;
        }
    }

    public class WebTracks {
        private List<String> ctrackUrls;
        private List<String> dstrackUrls;
        private List<String> imptrackUrls;
        private List<String> istrackUrls;
        private int type;

        public WebTracks() {
        }

        public List<String> getCtrackUrls() {
            return this.ctrackUrls;
        }

        public List<String> getDstrackUrls() {
            return this.dstrackUrls;
        }

        public List<String> getImptrackUrls() {
            return this.imptrackUrls;
        }

        public List<String> getIstrackUrls() {
            return this.istrackUrls;
        }

        public int getType() {
            return this.type;
        }

        public void setCtrackUrls(List<String> list) {
            this.ctrackUrls = list;
        }

        public void setDstrackUrls(List<String> list) {
            this.dstrackUrls = list;
        }

        public void setImptrackUrls(List<String> list) {
            this.imptrackUrls = list;
        }

        public void setIstrackUrls(List<String> list) {
            this.istrackUrls = list;
        }

        public void setType(int i) {
            this.type = i;
        }
    }

    public FengLingAdInfo() {
    }

    public FengLingAdInfo(Parcel parcel) {
        this.creativeType = parcel.readInt();
        this.drawType = parcel.readInt();
        this.actionName = parcel.readInt();
        this.width = parcel.readInt();
        this.height = parcel.readInt();
        this.title = parcel.readString();
        this.rating = parcel.readInt();
        this.adPlatformIcon = parcel.readString();
        this.adId = parcel.readInt();
        this.clickUrl = parcel.readString();
        this.adPlatformId = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getActionName() {
        return this.actionName;
    }

    public int getAdId() {
        return this.adId;
    }

    public String getAdPlatformIcon() {
        return this.adPlatformIcon;
    }

    public int getAdPlatformId() {
        return this.adPlatformId;
    }

    public String getClickUrl() {
        return this.clickUrl;
    }

    public int getCreativeType() {
        return this.creativeType;
    }

    public int getDrawType() {
        return this.drawType;
    }

    public int getHeight() {
        return this.height;
    }

    public Imgs getImgs() {
        return this.imgs;
    }

    public int getRating() {
        return this.rating;
    }

    public String getTitle() {
        return this.title;
    }

    public WebTracks getWebTracks() {
        return this.webTracks;
    }

    public int getWidth() {
        return this.width;
    }

    public void setActionName(int i) {
        this.actionName = i;
    }

    public void setAdId(int i) {
        this.adId = i;
    }

    public void setAdPlatformIcon(String str) {
        this.adPlatformIcon = str;
    }

    public void setAdPlatformId(int i) {
        this.adPlatformId = i;
    }

    public void setClickUrl(String str) {
        this.clickUrl = str;
    }

    public void setCreativeType(int i) {
        this.creativeType = i;
    }

    public void setDrawType(int i) {
        this.drawType = i;
    }

    public void setHeight(int i) {
        this.height = i;
    }

    public void setImgs(Imgs imgs) {
        this.imgs = imgs;
    }

    public void setRating(int i) {
        this.rating = i;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setWebTracks(WebTracks webTracks) {
        this.webTracks = webTracks;
    }

    public void setWidth(int i) {
        this.width = i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.creativeType);
        parcel.writeInt(this.drawType);
        parcel.writeInt(this.actionName);
        parcel.writeInt(this.width);
        parcel.writeInt(this.height);
        parcel.writeString(this.title);
        parcel.writeInt(this.rating);
        parcel.writeString(this.adPlatformIcon);
        parcel.writeInt(this.adId);
        parcel.writeString(this.clickUrl);
        parcel.writeInt(this.adPlatformId);
    }
}
