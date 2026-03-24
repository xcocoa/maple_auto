package net.grandcentrix.tray.core;

import androidx.annotation.Nullable;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class TrayItem {
    private final Date mCreated;
    private final String mKey;
    private final String mMigratedKey;
    private final String mModule;
    private final Date mUpdated;
    private final String mValue;

    public TrayItem(String str, String str2, String str3, String str4, Date date, Date date2) {
        this.mCreated = date;
        this.mKey = str2;
        this.mModule = str;
        this.mUpdated = date2;
        this.mValue = str4;
        this.mMigratedKey = str3;
    }

    public Date created() {
        return this.mCreated;
    }

    public String key() {
        return this.mKey;
    }

    public String migratedKey() {
        return this.mMigratedKey;
    }

    public String module() {
        return this.mModule;
    }

    public String toString() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm:ss dd.MM.yyyy", Locale.US);
        return "{key: " + this.mKey + ", value: " + this.mValue + ", module: " + this.mModule + ", created: " + simpleDateFormat.format(this.mCreated) + ", updated: " + simpleDateFormat.format(this.mUpdated) + ", migratedKey: " + this.mMigratedKey + "}";
    }

    public Date updateTime() {
        return this.mUpdated;
    }

    @Nullable
    public String value() {
        return this.mValue;
    }
}
