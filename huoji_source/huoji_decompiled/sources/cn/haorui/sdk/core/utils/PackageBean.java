package cn.haorui.sdk.core.utils;

import java.io.Serializable;
import java.util.List;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class PackageBean implements Serializable {
    private AppBean app;
    private DClick dclk;
    private String ver;

    public static class AppBean implements Serializable {
        private List<PackBean> others;
        private List<PackBean> required;
        private Integer ttl;
        private String url;

        public static class PackBean implements Serializable {
            private String app_package;
            private String id;
            private boolean isInstalled;
            private long lastCheckTime;

            public String getApp_package() {
                return this.app_package;
            }

            public String getId() {
                return this.id;
            }

            public boolean getInstalled() {
                return this.isInstalled;
            }

            public long getLastCheckTime() {
                return this.lastCheckTime;
            }

            public void setApp_package(String str) {
                this.app_package = str;
            }

            public void setId(String str) {
                this.id = str;
            }

            public void setInstalled(boolean z) {
                this.isInstalled = z;
            }

            public void setLastCheckTime(long j) {
                this.lastCheckTime = j;
            }
        }

        public List<PackBean> getOthers() {
            return this.others;
        }

        public List<PackBean> getRequired() {
            return this.required;
        }

        public Integer getTtl() {
            return this.ttl;
        }

        public String getUrl() {
            return this.url;
        }

        public void setOthers(List<PackBean> list) {
            this.others = list;
        }

        public void setRequired(List<PackBean> list) {
            this.required = list;
        }

        public void setTtl(Integer num) {
            this.ttl = num;
        }

        public void setUrl(String str) {
            this.url = str;
        }
    }

    public static class DClick implements Serializable {
        private int status;

        public int getStatus() {
            return this.status;
        }

        public void setStatus(int i) {
            this.status = i;
        }

        public String toString() {
            return "DClick{status=" + this.status + MessageFormatter.DELIM_STOP;
        }
    }

    public AppBean getApp() {
        return this.app;
    }

    public DClick getDclk() {
        return this.dclk;
    }

    public String getVer() {
        return this.ver;
    }

    public void setApp(AppBean appBean) {
        this.app = appBean;
    }

    public void setDclk(DClick dClick) {
        this.dclk = dClick;
    }

    public void setVer(String str) {
        this.ver = str;
    }
}
