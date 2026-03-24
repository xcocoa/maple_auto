package com.cyjh.elfin.entity;

import android.os.Parcel;
import android.os.Parcelable;
import com.anythink.basead.ui.GuideToClickView;
import com.anythink.expressad.foundation.h.m;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import java.io.File;
import z2.me;

/* JADX INFO: loaded from: classes.dex */
public class ScriptLog implements Parcelable {
    public static final Parcelable.Creator<ScriptLog> CREATOR;
    private File file;
    private boolean isSelect;
    private String name;
    private String size;

    static {
        String str = "ۛۙۨۘۖۨۨۘۦ۟ۜۘۥۧۤۡۥۛۜۗۥۧۛ۫ۘۡۢۤۘۦۚۦۛۡ۟ۥۡۜۥۘۢۜۜۘۚۙۗۗۦۗ۫ۡۢۜۚ";
        while (true) {
            switch ((((str.hashCode() ^ me.o0000O0) ^ 595) ^ 546) ^ (-209710990)) {
                case 653436769:
                    return;
                case 1779897032:
                    CREATOR = new Parcelable.Creator<ScriptLog>() { // from class: com.cyjh.elfin.entity.ScriptLog.1
                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // android.os.Parcelable.Creator
                        public ScriptLog createFromParcel(Parcel parcel) {
                            String str2 = "ۗۨۢۦ۬۬۬ۧۘۘ۠ۥۜۜۦۧۛۤۘۘۚۡۘۘۘۘۘۗۨ۫ۧۡ۟ۗۨۡۘ۫ۘۘۖ۫ۧۨۦ۠ۦۛۦ۬ۥۖ۬ۙۨۘۖۢۜ";
                            while (true) {
                                switch ((((str2.hashCode() ^ 111) ^ 358) ^ me.o0000O) ^ (-1656041165)) {
                                    case -1320362093:
                                        str2 = "ۖۡۦۘۛۙۥۙۙۢۛۥۜۨۧۘۛۜۨۘۗۨ۠ۧۙۙۗۤۦۥۖ";
                                        break;
                                    case -824189775:
                                        return new ScriptLog(parcel);
                                    case 1575359872:
                                        str2 = "ۜۛۢ۠ۧۙۖۜۙ۫ۛۜۘۛ۠ۘۘۡۘۢۢ۠ۦ۠۬ۗۤۨۚ۬ۥ۠ۢ۠ۥۙۙۛ۫ۧۡۘۥۙۖۡۗۦۘۗۧۜ";
                                        break;
                                }
                            }
                        }

                        @Override // android.os.Parcelable.Creator
                        public /* bridge */ /* synthetic */ ScriptLog createFromParcel(Parcel parcel) {
                            String str2 = "ۡ۟ۥۘۢۤۚۤۥ۟۟ۥۨۘۧۨۦۨۘۘۦ۟۫۟ۡۡۨۤۤۢۖۚ";
                            while (true) {
                                switch ((((str2.hashCode() ^ 529) ^ 327) ^ 964) ^ 577040457) {
                                    case -2138572640:
                                        str2 = "ۨۖۤۖ۠۫۟ۡۙ۠ۥۦۘۢ۟ۧۚۢۚۧۡۚۡۚۡۘۨۚۧۤ۟ۡۜۗۜۡ۬ۧۜ۬ۘ۟ۖۢ۬ۡۥ۠ۜ۫۫ۥۜۘ۬ۖۙ";
                                        break;
                                    case -1879803075:
                                        str2 = "ۘۖۨۘۜۥۘۡۧ۠ۥ۬ۧۨۡۘۖۘۖ۟ۛۚۧ۬ۢۧ۠ۤۦۢۥۢۦۛۙۧ";
                                        break;
                                    case 1069384983:
                                        return createFromParcel(parcel);
                                }
                            }
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // android.os.Parcelable.Creator
                        public ScriptLog[] newArray(int i) {
                            String str2 = "ۨۦۧۧۡۦۘۘۧۧۥۤۚۥۖ۫ۖ۠ۚۛ۫ۨۘۙ۫ۖ۬ۙۦۘۙ۟ۙۢۛۨۘۥۜۘ۬ۥۤۖ۫۫ۧۦۨۚۜۧۘ۟۟۫ۚ۫ۖۘ";
                            while (true) {
                                switch ((((str2.hashCode() ^ 388) ^ 155) ^ 688) ^ 753302153) {
                                    case 251646642:
                                        str2 = "ۢ۟۬ۖۥۡۘۘۘۦۥۛۘ۫ۖۚۧۙۘۘۥۢۨۘ۟ۤۖۘ۟ۙۘۘ۫ۡ۠ۚۖۡ۬ۧۘۘۥ۫ۨۘۡ۟ۘۘۗ۟ۘۘۜۦۛ";
                                        break;
                                    case 1096235047:
                                        return new ScriptLog[i];
                                    case 1545283201:
                                        str2 = "ۖ۬ۦۘۖۙۥۘۥۤۡۥۛۦۘۢۤۦ۟۬ۥۘۙۘۦۗۥۥۦۨ۟۟۫ۥۘ";
                                        break;
                                }
                            }
                        }

                        @Override // android.os.Parcelable.Creator
                        public /* bridge */ /* synthetic */ ScriptLog[] newArray(int i) {
                            String str2 = "ۜۙ۠۟ۤۛ۟ۜۘ۟۫ۛۖۜۨۚ۠۬ۚۗۜ۠ۡۘ۫ۗۜۙۛ";
                            while (true) {
                                switch ((((str2.hashCode() ^ 432) ^ 9) ^ 146) ^ (-1030070965)) {
                                    case -1990662880:
                                        str2 = "ۥ۠ۖۢۚۤۤۤۛۢ۬۬ۨ۟۫ۘ۫ۦۘ۬۫ۢۗۗۗۡۡ۠ۖ۫ۨۙۘۤۦۦۦۘ۬ۗۙۤۙۤ";
                                        break;
                                    case -1765937425:
                                        str2 = "ۢۜۘۘۡۤۜۘۗۜۧۘۜ۬ۚۤۧۨۛۚۘ۬ۜۗ۠ۦ۫۬ۚۖۜۙۘ";
                                        break;
                                    case -1419662160:
                                        return newArray(i);
                                }
                            }
                        }
                    };
                    str = "ۧۧۡۧۗۖۘۡ۫ۘ۠۠ۖۡۤۖۘۦۖۜۢۨ۫ۡۧۛۙۧۚۧ";
                    break;
            }
        }
    }

    public ScriptLog() {
    }

    private ScriptLog(Parcel parcel) {
        boolean z;
        this.size = parcel.readString();
        this.name = parcel.readString();
        this.file = (File) parcel.readSerializable();
        String str = "۠ۗۜ۬ۡۜ۬۟ۡۘۥ۬ۢ۬۟ۦۘۜ۟۟ۤۨ۟ۢۨۨۘۧۢۢۙۥۗ";
        while (true) {
            switch (str.hashCode() ^ (-1774019320)) {
                case -950716788:
                    z = true;
                    break;
                case -455216379:
                    String str2 = "ۜۨ۬ۜۦۗۧۙۚۢۥۡۘ۬ۦۨۗۛۖۘۧ۠ۛۨۧۦۙۙۥۘۡۧۚ۠ۦ۫۬ۡۧ۫ۛۛۦۜۥ";
                    while (true) {
                        switch (str2.hashCode() ^ 997757003) {
                            case -1214011931:
                                str2 = parcel.readByte() == 0 ? "ۢ۫ۡۢۘۜۘۚ۫ۛ۬ۛۦ۬ۛۡۘۢ۟ۢۖۖۧ۠ۛۖۘۘۗ۟ۡۘۦ۬ۦۤۥۜۖۘ" : "۬ۦۨ۟ۛ۟۬ۤۥۘۙۤ۫ۤ۠ۡۘۛۥۥۜۧۘۛۛۖۗۥۡۘ۟ۦۖۛۗۜۘۜ۟ۡۨۙ۟ۛ۬ۜۘۛۦۢ۬ۧۚ";
                                break;
                            case -107297051:
                                str = "۠ۜ۠ۛۨۢ۟ۗۦۘۦۘۦۧۚۤۖ۠ۘۜ۠۫ۗۤۥۦۘ۠ۛۡۚ۠ۘۘۗۥۦۘۧۢۦۗۨۗۡ۟۟ۗۡۨۨ۟ۨۡۨ۠";
                                continue;
                            case 1623852307:
                                str = "ۧۤۖۘۛۤ۫ۚۘۖۘۥۤ۬ۜۦۙ۟ۜ۬۠ۙ۠ۢۢۡۘۥۧۙۧۘۦۘ۫۠ۚۨۥۨۦ۫ۙۢۢ۟۫ۛۘۤۢۨۘ";
                                continue;
                            case 1661820861:
                                str2 = "ۚۧۗۤ۫ۗۨۖۥ۬۠ۜۛ۬ۗۘۖ۠ۙۢ۬۫۟ۡۙۦۚۙۛۤ۬ۨ۟ۢۤۡ";
                                break;
                        }
                    }
                    break;
                case -343012713:
                    z = false;
                    break;
                case 45154811:
                    str = "ۚۧۡۘ۫ۙۤ۫ۥۖۗۥۘۙۖۢ۫ۗۖۨ۠ۖۘ۬۠۬ۤ۫۫ۛۙۛۢۘۦۨۗۡۘ";
                    break;
            }
        }
        this.isSelect = z;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        String str = "ۘ۟ۥۦ۠ۥۘۜۢۚ۠ۢ۠ۘۙۗۥۦۖ۫ۜۛۨۥ۟۬ۥۜۙۘۘۨۤۤۖۧۘۚۜۘ۟ۘ۟ۨۢۤۚۦۢۘۡۧ۫ۤ۬";
        while (true) {
            switch ((((str.hashCode() ^ 737) ^ 880) ^ 723) ^ 571949317) {
                case -2128663567:
                    return 0;
                case 1440183797:
                    str = "۫ۖۡۘۨۘۢۨۗ۫۟ۗ۬ۢ۟۬ۥۛۡۢ۫۟ۢۛۡۘۨۙۖۘۖۘۥۘۘۡۥۘۗۧ";
                    break;
            }
        }
    }

    public File getFile() {
        String str = "ۥۖۖۖۡۖ۟ۘۜۡۤ۬ۡۧۙۤۙۦۘۖۛۥۜ۬ۢۥۥ۫ۜۖۢ۟ۡۦۚ۟ۢ";
        while (true) {
            switch ((((str.hashCode() ^ 424) ^ 856) ^ 490) ^ (-1973203547)) {
                case -766910039:
                    str = "۟ۢۚۡ۫ۧۚۨۘ۫۠ۜۨۨ۬ۖۖۦۘ۫ۥ۫ۗۚۚۦۜۨ۫ۡۘ";
                    break;
                case -567013586:
                    return this.file;
            }
        }
    }

    public String getName() {
        String str = "ۛۗۢۡ۬ۙۗۥ۟۬ۛ۠۠۬ۖ۟ۨۡۦۧۨۘۛۦۘۛ۟ۖ۫ۘۘۛۦ۠ۘۧۖۘ";
        while (true) {
            switch ((((str.hashCode() ^ 263) ^ 579) ^ me.o0000oo) ^ 1238122092) {
                case -247602167:
                    return this.name;
                case 810032092:
                    str = "ۡۙۤۜۜۦۘۢ۬ۨۢۘۧۘۘ۠ۖۘۢۛۜۘۛۢۖۘۡۚۥ۬ۡۦ۠۟۠ۡۧۤۧۜۘ";
                    break;
            }
        }
    }

    public String getSize() {
        String str = "ۤ۟ۨۘۗ۬ۘۥۖۨۥۤۤ۠ۖۡۧۘۜۨۦۘۥۚ۬ۢۥ۫ۜۤۨۘۖۧۛۢۢۗ";
        while (true) {
            switch ((((str.hashCode() ^ GuideToClickView.a.e) ^ 461) ^ 570) ^ 1160398696) {
                case 327266028:
                    str = "ۨۙۖۛۖۤۙ۟ۚۨۢۘۛۖۘ۬ۨۧۚۜۘ۫ۘۖۚۗۛۢۨ۟ۥ۫ۥۚۜۤ";
                    break;
                case 617069931:
                    return this.size;
            }
        }
    }

    public boolean isSelect() {
        String str = "ۧۛۛۧۥۧۘۚۘۛ۟ۚۜۡۢۙ۟ۙۧۦۖ۬ۛۜۗۙۨ۠ۨۥۡۢۛۡۥۜۤۘۖۢۘۖۜۘۗۡۖۛۥۨۘۥۙ۬ۗ۟۠";
        while (true) {
            switch ((((str.hashCode() ^ 510) ^ 764) ^ 140) ^ 931096706) {
                case -1501427586:
                    return this.isSelect;
                case 560737125:
                    str = "ۢۚۦۜۢۖۦۘۘۘۨۧۡۚ۟ۨۘ۫ۡۥۛۙۡۢۚۡۘۚۤ۟ۘۤۤۧۘۘۚۦۨۘۜۢۥۢۜۦۗۦۢۥۦ۟ۤۗۨۚ۟ۚ";
                    break;
            }
        }
    }

    public void setFile(File file) {
        String str = "ۚ۫ۗۦۘۚۛۤۗۜۢ۬ۛ۟ۦۨۧ۠۠۠ۡۘۖۡۖۘۥۧۡۘ۠۠۠ۙۙ۠ۦ۠ۘۛۡۛۗۙ۟ۛ۠ۖۘۥۢ";
        while (true) {
            switch ((((str.hashCode() ^ 773) ^ 54) ^ 318) ^ (-2124858514)) {
                case -1924259305:
                    str = "ۙۙ۟ۙۖۦۘۜۖۡۦۜۥۖ۠ۨۦۡۛۜۦۚۛۙۡۘۧۡۥۘۢۖۛۚۢۙۥۘۘ";
                    break;
                case -845969055:
                    return;
                case 958839509:
                    this.file = file;
                    str = "ۧۘۘ۫ۤۙۛۦۘۦۘۜۘۘۧۙۜۗۧۜۛۢۢۥۖۘ۟۫ۚۢ۬ۤ۟ۜ۟ۢ۠ۦۘ";
                    break;
                case 1740339874:
                    str = "ۡۚۛۙۚ۠ۚۙۘۗۗۘۘۚۦۨۘۥۤ۟ۙ۬ۡۘ۠۠ۨۘۨۛۛ۟۟ۥۘۢۚۖۘ۫ۤۨۘۧۧۥۖۗۤۖۧۜۖۨۘ۟۟ۘ۫ۖۤ";
                    break;
            }
        }
    }

    public void setName(String str) {
        String str2 = "ۡۗۡۘۨۡۥۙۛۜۘۛۧۚۤۡ۠ۗۙۗ۫ۨۨۜۧ۬ۖۦۙۤۦۤۙۤۛۘۧ۬";
        while (true) {
            switch ((((str2.hashCode() ^ 915) ^ 143) ^ GuideToClickView.a.g) ^ 368123346) {
                case -999004538:
                    return;
                case -910949893:
                    this.name = str;
                    str2 = "ۦۥۨۘۖۦۧۜ۫۠ۘۡۥۜۛۦۧۥۡۘۗ۠ۜۛ۟ۛۦۡۚۚۚۛۗ۠ۦ۟ۥۜۘۛۙۥ۫۬ۥ";
                    break;
                case -766357797:
                    str2 = "۠ۧۛۤۤۦۚۙۛۘۨ۫۫ۚۡ۫ۨۧۘۤۙۥۘۦۘۙۥۤۦۘۛۗۦۘۥۦۗۙۥۢۚۡۜۦۗۙۙۡۖۘۨۧۙ";
                    break;
                case 315258730:
                    str2 = "ۚۗ۠ۙ۠ۦۘ۟۫۬ۚۛ۠ۢ۟ۜۘۚۤۤۘ۠ۘۧۨۜۛۘۘۚ۬ۦۘ";
                    break;
            }
        }
    }

    public void setSelect(boolean z) {
        String str = "۬ۚۗۥ۠۟ۢ۠ۨ۟۟ۘ۟۠ۤۨ۟ۜۗۨۡۘۥ۫ۖۘۚۘۤۧۤۛۙۧۨ۫ۘۨۙۚۢۡۦۥۘ";
        while (true) {
            switch ((((str.hashCode() ^ 267) ^ 745) ^ UiMessage.CommandToUi.Command_Type.FW_SET_LEFT_VALUE) ^ (-432284935)) {
                case -1775798724:
                    this.isSelect = z;
                    str = "ۨۖۤۖ۬ۜۘۦۡ۫۟ۢۖۘۚ۟ۢۖۡۨۘۡۨۜۘۥۤۙۘۧۘۘۖۥۗۧۚ۫ۢۖۛ۫ۗ۬۠ۚۘۖۗۡۜۡۦۧۢۨ۟۫ۘۘ";
                    break;
                case 69908542:
                    str = "ۦۘۨۦ۬ۨۛۛ۫ۚۨۘ۠ۜۗۖۤۤۚۧۘۧۨۦۘۚۜۗۧۛۙ";
                    break;
                case 2064362643:
                    str = "۫ۗۢۡۥۥۢۢۥۚۦۥۧۧۙۛ۟ۦۘۙ۠ۡۢۜۧۘۨۨۚۗۨۜۖ۟ۨۨۖۢۦۨۦۘۦۘۛۜۦۖۘۙۢ۬ۜۥۦۘۨ۫ۢ";
                    break;
                case 2075727141:
                    return;
            }
        }
    }

    public void setSize(String str) {
        String str2 = "ۡ۬ۜۘۢۗۙۖۗۘۘۨ۠ۢۤۘۜۜۡۦۡۘ۫ۜ۠۫ۗۧۖ۠ۙۡۨۛۘۦۖ۠ۛۖۘۚۡۜۘ";
        while (true) {
            switch ((((str2.hashCode() ^ 709) ^ 977) ^ m.a.a) ^ (-1604491422)) {
                case -2126746191:
                    return;
                case -1180082013:
                    str2 = "ۙۥۧ۟۬ۖۨۚۚۗۘۦۗۖ۬ۦۢۖۦۨ۟ۡۥ۠ۢ۟ۜۘۤۥۤۖۡۥۗ۫ۛۨ۬۬۠ۢۜۘۢۚۦۘۢ۫ۚ";
                    break;
                case -106092947:
                    str2 = "ۗۡۛۦۤۗۘۗۚۡ۟۠ۥۙ۠ۚۦۖۙۖۨۦۖۖۘۛۘۗۛۨۥۘۧۦ۟ۧۗ۟ۛۤۖۘ۟ۖ۬ۛۚ۬ۧۤۜۘ";
                    break;
                case 1498229207:
                    this.size = str;
                    str2 = "ۦۡۦۘۙۨۤۛ۬ۖۘۗۜ۠ۘۦ۫۬ۙۧۤ۟ۚۧۜ۬ۛۖۦۘۖۚۧۖۥۖۘۧۘۤۛۗۥۘۧ۬ۦۘ";
                    break;
            }
        }
    }

    public String toString() {
        StringBuilder sb = null;
        String str = "ۢ۫۫ۨۥۢ۠ۧۢۖۘۘۢۛۥۡۥۘۖ۟ۘۤۚۜۘۥۙ۬ۦۨ۫ۜۡ۠ۜۡۨۘۤۘۧۙۖۢ";
        while (true) {
            switch ((((str.hashCode() ^ 63) ^ 475) ^ 842) ^ 1315975526) {
                case -1761445363:
                    sb.append(this.size);
                    str = "ۘۗۗۡ۬ۛۥۗ۠۠ۗۛ۟ۤۛ۬ۧۙۗۗۗۛۥۘۙۘ۬ۥ۠ۘۙۡۤۚۦۖ۟۟ۨۘۨۜۢۧۦۘۘۚۖ۬ۙۢۡۤۢۨۘ";
                    break;
                case -1670505263:
                    return sb.toString();
                case -1169956224:
                    sb.append(", name=");
                    str = "ۚۖۖۧۘۥۥۨۛۡۗۖۘۜ۫ۧۚۜۥۥۘۨۘۧۘۙۘۘۡۚۦۧۘ";
                    break;
                case -382407086:
                    sb.append(this.name);
                    str = "ۛۥۡۢۛۘۘۗۚ۟۟ۛۢ۬ۨۘۛۡۤ۫۟ۚۥ۠ۚ۬ۛۜ۟۬";
                    break;
                case 367390413:
                    sb.append(", file=");
                    str = "ۡۧۢۖۦۘۢۦۥۘۦۛۤۘۗۚۛۚۛۡۜۡۗۘۚ۠ۢۚ۟ۧۜۢۢۚ۟۠ۨۚ۬ۦۜ۫ۖ۬۬ۤۨۘ";
                    break;
                case 664436368:
                    sb.append(this.file);
                    str = "ۡ۬ۘۘۛ۟ۧۥۦۚۗۥ۠ۜۡۧۘۛۗۖۦ۬ۡۡۥۨۘۖۤۤۛۗۤۗۨۚۚ۠ۚۥۘۖۢ۟۫ۦ۬ۢۛۨۘۧۗ۫ۦۖۥ";
                    break;
                case 1251389701:
                    sb.append("]");
                    str = "ۥۨۜۘۢ۬ۛۢۖۧۘۦۛۛۨۜۛۧ۠ۛۦۡۘۛۦۛۥۗۖۜۛۥۘ";
                    break;
                case 1428640884:
                    sb.append("ScriptLog [size=");
                    str = "ۢۡ۠ۜۢۧۗۡۘۗۛۜۜ۫ۡۘۚ۟ۙۚۧۜۖۦۡۥ۬ۡۧۜۥۥ۠ۡۘۢ۫۬ۦ۫ۙۤۗۢۡۘۘ۟ۡۘ";
                    break;
                case 1723026563:
                    sb = new StringBuilder();
                    str = "ۙۗۥۘۨۦۥۘۛۧۘۘۡۦۦۢ۫ۘۘ۠ۡۦۘۗۨۥۢۘۨۨۜۚۖۢۡ";
                    break;
                case 1825769150:
                    str = "ۡۙۖۡۦۚۤ۫ۡۘ۬ۜۢۙۘۖۤ۫ۨۚۧۦۢۘۙۤۚۧۘ۬ۥۦۦۦۦۜ";
                    break;
            }
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        String str = "ۦۜۨ۠ۢۡۛۘۖ۟ۨ۫ۧۖۜۜۡۡۥ۟ۖۨۗۚۖۘۘۗۙۨۘ۫ۢۥۘۥ۟ۦ۬۫ۘۘ۠ۙ۟۟ۖۘ۫ۢۦۘ";
        while (true) {
            switch ((((str.hashCode() ^ 284) ^ UiMessage.CommandToUi.Command_Type.FW_SET_LEFT_VALUE) ^ 129) ^ (-2012469172)) {
                case -1604295430:
                    parcel.writeString(this.name);
                    str = "۬ۗۦۖ۠۬۟ۧۤۖ۫ۛۙۢ۟ۦ۫ۛۡۛۙۗۜۧۨۧ۫ۜۜ";
                    break;
                case -1562367767:
                    parcel.writeSerializable(this.file);
                    str = "۫ۦۤ۟۠ۡۘۧۗۨۨۛ۟۬ۦۙۧۦۚۦۥۤۙۚۙۚ۠۠۫ۥۦۤۢۤ۠ۢۡ۬ۙ۠ۙۖۢۧۦۗۙۤۦ";
                    break;
                case -941555136:
                    str = "ۜۜۢ۠۬ۖ۫ۢۨۘۤۦۦۢۜۡۘ۫ۤۖۘۗۨۨۙۡۡۘۗۘۥۘۡ۠ۜۖۧۗۡۤ۫ۗۛ۟ۛۘ۟ۛ۟۟ۚۗ";
                    break;
                case -736488822:
                    str = "ۘۧۗۜۤۥۡۧۜۥۤۖۘۥۚۖۗۦۗۙۨۦۢۙ۠ۖۡۗۜۖۦۡۛ۬ۗۛۨۦۖۦۛۜۨۖۚۧۤۢۦۘۧۘۦۚۡۢ";
                    break;
                case -375133417:
                    return;
                case 1071741706:
                    str = "ۧۡۗۦۥ۫ۡۨۙۙۜۚۡ۠ۦۘ۫۠ۛۘۙۙۚ۟ۨۘۢۛ۠ۖۚ۫ۗۦۚۥ۬ۥۛۘ۟ۚۥ۠ۧۢۘۘۘۚۘۘۢۡۥۘۚۥۡ";
                    break;
                case 1482711140:
                    parcel.writeString(this.size);
                    str = "۟ۨۜ۠ۡۦۘ۠ۙۚۗ۬۠ۘۛۨۧۚۖۖۦۘۡ۬ۛ۫ۨۡۨ۟ۢۖ۟ۥۘۧ۟۟ۘ۫ۨۢۤۖۘ";
                    break;
                case 2024729077:
                    parcel.writeByte(this.isSelect ? (byte) 1 : (byte) 0);
                    str = "ۚۧ۫۟ۧۡۥۗۤۡۥۨۘۦ۫ۘۘۤۙ۟ۡۢۧ۬ۦۦۛۦۦۥۙۤۜۤ۠ۧۘ۬ۘۨۡۘۗۖۤۡۤ۟ۗۥۖۘ";
                    break;
            }
        }
    }
}
