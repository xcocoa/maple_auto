package cn.haorui.sdk.adsail_ad.nativ;

import cn.haorui.sdk.core.ad.BaseAdSlot;

/* JADX INFO: loaded from: classes.dex */
public class NativeAdSlot extends BaseAdSlot {
    public String actionText;
    public Integer clickableRange;
    public Integer close_btn;
    public String content;
    public String desc;
    public Integer fetchCount;
    public String from;
    public int height;
    public String iconTitle;
    public String iconUrl;
    private int style_id;
    public String title;
    public String videoUrl;
    public String[] video_complete;
    public String video_cover;
    private long video_duration;
    public String video_endcover;
    public Long video_keep_time;
    public String[] video_mute;
    public String[] video_one_half;
    public String[] video_one_quarter;
    public String[] video_pause;
    public String[] video_replay;
    public String[] video_resume;
    public String[] video_start;
    public String[] video_three_quarter;
    public Integer video_type;
    public String[] video_unmute;
    public int width;

    public class RewardBuilder extends BaseAdSlot.Builder<RewardBuilder, NativeAdSlot> {
        public RewardBuilder() {
            super();
        }

        @Override // cn.haorui.sdk.core.ad.BaseAdSlot.Builder
        public NativeAdSlot build() {
            return NativeAdSlot.this;
        }

        @Override // cn.haorui.sdk.core.ad.BaseAdSlot.Builder
        public RewardBuilder returnThis() {
            return this;
        }

        public RewardBuilder setActionText(String str) {
            NativeAdSlot.this.actionText = str;
            return this;
        }

        @Override // cn.haorui.sdk.core.ad.BaseAdSlot.Builder
        public RewardBuilder setAppName(String str) {
            NativeAdSlot.this.appName = str;
            return this;
        }

        public RewardBuilder setClickableRange(Integer num) {
            NativeAdSlot.this.clickableRange = num;
            return this;
        }

        public RewardBuilder setCloseBtn(Integer num) {
            NativeAdSlot.this.close_btn = num;
            return this;
        }

        public RewardBuilder setContent(String str) {
            NativeAdSlot.this.content = str;
            return this;
        }

        @Override // cn.haorui.sdk.core.ad.BaseAdSlot.Builder
        public RewardBuilder setDesc(String str) {
            NativeAdSlot.this.desc = str;
            return this;
        }

        public RewardBuilder setFetchCount(Integer num) {
            NativeAdSlot.this.fetchCount = num;
            return this;
        }

        public RewardBuilder setFrom(String str) {
            NativeAdSlot.this.from = str;
            return this;
        }

        public RewardBuilder setHeight(int i) {
            NativeAdSlot.this.height = i;
            return this;
        }

        public RewardBuilder setIconTitle(String str) {
            NativeAdSlot.this.iconTitle = str;
            return this;
        }

        @Override // cn.haorui.sdk.core.ad.BaseAdSlot.Builder
        public RewardBuilder setIconUrl(String str) {
            NativeAdSlot.this.iconUrl = str;
            return this;
        }

        public RewardBuilder setStyleId(int i) {
            NativeAdSlot.this.style_id = i;
            return this;
        }

        @Override // cn.haorui.sdk.core.ad.BaseAdSlot.Builder
        public RewardBuilder setTitle(String str) {
            NativeAdSlot.this.title = str;
            return this;
        }

        public RewardBuilder setVideoDuration(long j) {
            NativeAdSlot.this.video_duration = j;
            return this;
        }

        public RewardBuilder setVideoType(Integer num) {
            NativeAdSlot.this.video_type = num;
            return this;
        }

        public RewardBuilder setVideo_complete(String[] strArr) {
            NativeAdSlot.this.video_complete = strArr;
            return this;
        }

        public RewardBuilder setVideo_cover(String str) {
            NativeAdSlot.this.video_cover = str;
            return this;
        }

        public RewardBuilder setVideo_endcover(String str) {
            NativeAdSlot.this.video_endcover = str;
            return this;
        }

        public RewardBuilder setVideo_keep_time(Long l) {
            NativeAdSlot.this.video_keep_time = l;
            return this;
        }

        public RewardBuilder setVideo_mute(String[] strArr) {
            NativeAdSlot.this.video_mute = strArr;
            return this;
        }

        public RewardBuilder setVideo_one_half(String[] strArr) {
            NativeAdSlot.this.video_one_half = strArr;
            return this;
        }

        public RewardBuilder setVideo_one_quarter(String[] strArr) {
            NativeAdSlot.this.video_one_quarter = strArr;
            return this;
        }

        public RewardBuilder setVideo_pause(String[] strArr) {
            NativeAdSlot.this.video_pause = strArr;
            return this;
        }

        public RewardBuilder setVideo_replay(String[] strArr) {
            NativeAdSlot.this.video_replay = strArr;
            return this;
        }

        public RewardBuilder setVideo_resume(String[] strArr) {
            NativeAdSlot.this.video_resume = strArr;
            return this;
        }

        public RewardBuilder setVideo_start(String[] strArr) {
            NativeAdSlot.this.video_start = strArr;
            return this;
        }

        public RewardBuilder setVideo_three_quarter(String[] strArr) {
            NativeAdSlot.this.video_three_quarter = strArr;
            return this;
        }

        public RewardBuilder setVideo_unmute(String[] strArr) {
            NativeAdSlot.this.video_unmute = strArr;
            return this;
        }

        public RewardBuilder setWidth(int i) {
            NativeAdSlot.this.width = i;
            return this;
        }
    }

    public String getActionText() {
        return this.actionText;
    }

    public Integer getClickableRange() {
        return this.clickableRange;
    }

    public Integer getClose_btn() {
        return this.close_btn;
    }

    public String getContent() {
        return this.content;
    }

    @Override // cn.haorui.sdk.core.ad.BaseAdSlot
    public String getDesc() {
        return this.desc;
    }

    public Integer getFetchCount() {
        return this.fetchCount;
    }

    public String getFrom() {
        return this.from;
    }

    public int getHeight() {
        return this.height;
    }

    public String getIconTitle() {
        return this.iconTitle;
    }

    @Override // cn.haorui.sdk.core.ad.BaseAdSlot
    public String getIconUrl() {
        return this.iconUrl;
    }

    public int getStyle_id() {
        return this.style_id;
    }

    @Override // cn.haorui.sdk.core.ad.BaseAdSlot
    public String getTitle() {
        return this.title;
    }

    public Integer getVideoType() {
        return this.video_type;
    }

    public String getVideoUrl() {
        return this.videoUrl;
    }

    public String[] getVideo_complete() {
        return this.video_complete;
    }

    public String getVideo_cover() {
        return this.video_cover;
    }

    public long getVideo_duration() {
        return this.video_duration;
    }

    public String getVideo_endcover() {
        return this.video_endcover;
    }

    public Long getVideo_keep_time() {
        return this.video_keep_time;
    }

    public String[] getVideo_mute() {
        return this.video_mute;
    }

    public String[] getVideo_one_half() {
        return this.video_one_half;
    }

    public String[] getVideo_one_quarter() {
        return this.video_one_quarter;
    }

    public String[] getVideo_pause() {
        return this.video_pause;
    }

    public String[] getVideo_replay() {
        return this.video_replay;
    }

    public String[] getVideo_resume() {
        return this.video_resume;
    }

    public String[] getVideo_start() {
        return this.video_start;
    }

    public String[] getVideo_three_quarter() {
        return this.video_three_quarter;
    }

    public String[] getVideo_unmute() {
        return this.video_unmute;
    }

    public int getWidth() {
        return this.width;
    }

    public void setAdPatternType(int i) {
        this.adPatternType = i;
    }

    public void setVideoUrl(String str) {
        this.videoUrl = str;
    }
}
