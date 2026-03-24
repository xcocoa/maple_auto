package com.cyjh.elfin.entity;

import android.os.Parcel;
import android.os.Parcelable;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;

/* JADX INFO: loaded from: classes.dex */
public class RootRelatedEntity implements Parcelable {
    public static final Parcelable.Creator<RootRelatedEntity> CREATOR;
    public String Code;
    public RootRelatedData Data;
    public String Msg;

    public static class RootRelatedData implements Parcelable {
        public static final Parcelable.Creator<RootRelatedData> CREATOR;
        public String Id;
        public String Image;
        public String PackageName;
        public String Path;
        public String ScriptName;
        public String Type;

        static {
            String str = "۠ۖۤۛۡۖ۬ۚۤۨۖ۟ۦ۫ۗۧۗ۟ۢ۟ۘۤۤۡۘۙۖۦۘۡۧۤ";
            while (true) {
                switch ((((str.hashCode() ^ 63) ^ 719) ^ 193) ^ (-1634444036)) {
                    case 720046106:
                        CREATOR = new Parcelable.Creator<RootRelatedData>() { // from class: com.cyjh.elfin.entity.RootRelatedEntity.RootRelatedData.1
                            /* JADX WARN: Can't rename method to resolve collision */
                            @Override // android.os.Parcelable.Creator
                            public RootRelatedData createFromParcel(Parcel parcel) {
                                String str2 = "ۚۜۖۗۘۤ۟ۖۜۘۚۥۚۢۚۗ۠ۖۘ۫ۜۘۘۖ۬ۢۨ۠ۖۘۤۦۡۘۦۤۢۦۗۤ";
                                while (true) {
                                    switch ((((str2.hashCode() ^ 436) ^ 13) ^ 649) ^ 565250847) {
                                        case 1161164930:
                                            str2 = "ۦۡۧۘۖ۬۬ۥۘۤۗۗۨۘۧ۠ۦۗۦۛۙۦۧۘۙۗ۬۠ۧۚۡۘۢ۟۠ۡ۟۟ۨۥۥۧۨۦۜۘ";
                                            break;
                                        case 1514223017:
                                            return new RootRelatedData(parcel);
                                        case 1534645640:
                                            str2 = "ۖۨ۠ۖۦۘۤۥۧۨۢۧۦ۠ۨۙ۬ۗ۬ۛۖۘۦۘ۠۬۟ۢۘ۠ۘ۠ۥۨۤۖۧۘۢ۟ۥۘۙۙۡۘ";
                                            break;
                                    }
                                }
                            }

                            @Override // android.os.Parcelable.Creator
                            public /* bridge */ /* synthetic */ RootRelatedData createFromParcel(Parcel parcel) {
                                String str2 = "ۤۗۧۢۙ۫ۢۥ۠ۘۘۨ۠۫ۡۖ۟۬ۥۥ۫ۦ۠ۤۨ۫ۥۘۗ۟۬ۙۨۛۜۡۘ۟ۜۥ۟ۧۗ";
                                while (true) {
                                    switch ((((str2.hashCode() ^ 909) ^ UiMessage.CommandToUi.Command_Type.GET_BACKCOLOR_VALUE) ^ 865) ^ (-1897699732)) {
                                        case -98066768:
                                            str2 = "ۙ۫ۨۧ۠۟۫ۛۨۤۘۨۘۖۖۡۘۜۘۖۨ۠ۡۘۡ۠ۘۨۖ۫۠ۜۦۘۚۤۜۡۘۜۘۚۖۜۖۗ";
                                            break;
                                        case 213192146:
                                            return createFromParcel(parcel);
                                        case 611702049:
                                            str2 = "ۙۤۦۘۦۢۡۘۨۘۙ۬۠ۤۗۥۙۖ۟ۦۤۦۘ۠ۘۨۛۗۜۘۘ۟۫ۧۢ۬ۘۜ۫ۗ۫۠ۛ۟ۘ";
                                            break;
                                    }
                                }
                            }

                            /* JADX WARN: Can't rename method to resolve collision */
                            @Override // android.os.Parcelable.Creator
                            public RootRelatedData[] newArray(int i) {
                                String str2 = "ۙۖۘۘ۫ۧۦۙۖۗۙ۬ۦۘۨ۟ۗۨۤۦۘۚۜۘۘۨ۟ۥ۫ۢۗۖۚ";
                                while (true) {
                                    switch ((((str2.hashCode() ^ 715) ^ 273) ^ 974) ^ (-1539081280)) {
                                        case -1607254789:
                                            str2 = "ۙۤۜ۟ۙۘ۬ۢ۬ۤۦۧۥۤۘۘۘۥ۟۟ۖ۫ۘۘۖۘۡۧۚ۠ۡۖ";
                                            break;
                                        case 925603764:
                                            return new RootRelatedData[i];
                                        case 1347471328:
                                            str2 = "ۗۨۛ۫ۘۥۘۗ۟۠ۢۤۘۘۚۗۜۘ۠ۖۘۨۧ۫ۚ۫۠ۧ۬۠ۨ۫ۤۗۡۢۢ۟ۢ۬ۜۚۤۘۘۧۛۜۚۘۦۘ";
                                            break;
                                    }
                                }
                            }

                            @Override // android.os.Parcelable.Creator
                            public /* bridge */ /* synthetic */ RootRelatedData[] newArray(int i) {
                                String str2 = "ۗۥۛۙۙ۫ۗۙۤ۠ۗۨ۬ۙۚۥۙۤ۫ۚۛ۠۫ۖۚۡ۠ۛۛۛۗ۬ۜۤۜ";
                                while (true) {
                                    switch ((((str2.hashCode() ^ 486) ^ 822) ^ 706) ^ 892999979) {
                                        case -943299098:
                                            return newArray(i);
                                        case 268428676:
                                            str2 = "ۧۥۘۘ۬۟ۡ۬ۥۦۘۢۗ۫ۨۙۙۛ۬ۜۚۧۘۘۜۤۥۘۡ۠ۥۜۙۡۙۚۚۘۨ۟ۛۨۢۖۧۦۥۛۚۡۜۤ";
                                            break;
                                        case 1132286199:
                                            str2 = "ۡ۟ۨۜۜۨ۠۟ۥۘ۟۬ۘ۫۟ۡۘ۬ۗۗۙۙ۬ۧۧۦ۬ۛۡ۟ۡۘ۫ۨۢۜۚ۟ۤۚۡۘۛۧۥۘۤۛۦۘۜۤۘۘ";
                                            break;
                                    }
                                }
                            }
                        };
                        str = "ۨ۟ۖۡۦۧۘۨۜۗۨۜۡ۫ۡۜۤۙۤۗۧۜۡۚ۫ۜۖۖ۬ۨۜۘ۬۫ۧ۫ۛۖۢۘ۟ۜۡۚ";
                        break;
                    case 2124090141:
                        return;
                }
            }
        }

        public RootRelatedData(Parcel parcel) {
            this.Id = parcel.readString();
            this.Type = parcel.readString();
            this.Image = parcel.readString();
            this.Path = parcel.readString();
            this.PackageName = parcel.readString();
            this.ScriptName = parcel.readString();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            String str = "ۤۥۧۘۡۥۙۘۧۘۘۜۖۚۦۚۡۛ۠۫ۗۢۘۢۦ۟ۧۛۥۡۛۢۤۥۧۢۢۖۘ";
            while (true) {
                switch ((((str.hashCode() ^ 846) ^ 461) ^ 224) ^ 1488695978) {
                    case 203045963:
                        return 0;
                    case 532849973:
                        str = "ۤ۠ۦۘ۫۠ۗۧ۬۟ۛۚۦۘ۟۫ۖۥ۬ۜ۬۫ۡۘ۬ۜۧۦۢۦۧۙۢۤۗۚ۬۟ۦۜۧ۟ۢۚۚۤۘۖۘۤۤۗ";
                        break;
                }
            }
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            String str = "ۚۧۚ۠ۚ۟ۤۨ۠ۖۦۘۦۜۢ۫ۘۘۢۘ۠۟۟ۦۘۚۨۙۡۢۧۖۤۖۧۧ";
            while (true) {
                switch ((((str.hashCode() ^ 398) ^ 584) ^ 105) ^ 1865005519) {
                    case -1834470309:
                        str = "۠ۤۤۜ۬ۗۗۛۙۜۛۥ۠ۢۤ۬ۤۚۥۥۘۙۖۘۘۨۥ۠ۜۖۘۚۙ۟۬ۚۦ۟ۜۨۘۨۨۘۤۤۗۛۘ۫ۧ۠ۨۘۘ۟ۨۘ";
                        break;
                    case -1076485453:
                        parcel.writeString(this.Id);
                        str = "۟ۥۡۘۡۙۥۚ۟ۡۖ۬ۙۡۢۨۦۘۛ۬ۖ۫ۘۨۛۗۧۜۘۨۚۜۘۥۚۨۘ۫ۖۢ۟ۗۜۗۘۜۘۦۙۙۙۖۧۙۦۘۧۦۦۘ";
                        break;
                    case -1018367252:
                        parcel.writeString(this.PackageName);
                        str = "ۙۜۛۚۖۦۘۢۤ۠ۨۘۨۘۚۜۘۗۗۨۘۖۗۙۖۙۘۘۤ۟ۚۖۢۤ۫۬ۜ۬ۨ۬۫ۡۥۘ۫۫ۥۘۥۧۙۢ۠ۧ۠ۘۧۘۘۢۜۘ";
                        break;
                    case -546856071:
                        return;
                    case -243068492:
                        str = "ۘۢۘۘۨۖۘۤۗۡۘ۫ۜۜۘۡۗۨۘۡ۫ۤ۠ۢۨۘۛۢۛۘۛۙۘۦۚ";
                        break;
                    case 169629906:
                        str = "ۗۛۙۢ۬ۜۚۦۧۖ۬ۧۡ۬ۡۥ۟ۜۘۡۤۜۘۖۤۨۥۢ۠۠ۙۥۤۖۘۚ۟ۘۤۖۡۥۘۨ۟ۤۖۘۤۗ۫";
                        break;
                    case 956409623:
                        parcel.writeString(this.Path);
                        str = "ۜۘ۬ۛۗۖۢ۬ۥۥۡۖۤۛۡۜ۬ۡ۟۫۫ۡۚۙۘۚ۠ۨۖۛۙۜۖۦۘۗ۠ۜۘۖۤۛۖۚۚۛۤۨ";
                        break;
                    case 1247630744:
                        parcel.writeString(this.ScriptName);
                        str = "ۥ۟۬۬ۜۨۘۤۜۖۛۧۗۢۖۘۘۚۥۘۘۜۢۗۦۥ۫ۤۦ۬۟ۤۖۘ۫۠ۢ۫۟ۖۘۢۜۨۘۤ۠۫۠ۖ۠ۡۗ۟";
                        break;
                    case 1736997548:
                        parcel.writeString(this.Type);
                        str = "ۘۦ۫ۗۢۜۢ۟ۤۥۘ۫ۖۦ۠ۜۤۗۢۘۘۜ۫ۘۘ۫۟ۘۘۖۘۨۧۜۦۖۧۗۙۚۜۘۜۜۧۘ";
                        break;
                    case 2022002376:
                        parcel.writeString(this.Image);
                        str = "ۥۥۨۘ۬ۙۖ۬ۢۨۘۧۦۦۘ۫ۘ۫ۧۗۖۘۖۜۨۚ۫ۨۘۡۥۦ۫ۖۖۘ۫ۤۥ۬ۧۜۘ";
                        break;
                }
            }
        }
    }

    static {
        String str = "ۘۙۛۡ۬ۥۤۘۜۜۗۡۢۖۚۥ۟ۛ۠ۘۧۢۖۨۘۖۙ۫ۙۡۖۛۜ۫ۤۜۧۛۡۜۙۛۙۜۗۥۙۖۘۘ۠ۜۚۜۛ";
        while (true) {
            switch ((((str.hashCode() ^ 892) ^ 463) ^ 751) ^ (-3294362)) {
                case -500002010:
                    CREATOR = new Parcelable.Creator<RootRelatedEntity>() { // from class: com.cyjh.elfin.entity.RootRelatedEntity.1
                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // android.os.Parcelable.Creator
                        public RootRelatedEntity createFromParcel(Parcel parcel) {
                            String str2 = "۠ۨ۫ۘۘۙۨ۠ۥۘۛ۠۟۬۫۟ۘۖۘۤۥۗ۟ۙۢۙۛۧۦۙ۠ۗۘۥۘۧۙۨۘۢۖۡۘۜۡ۠ۛ۫ۨ۫ۚۚ";
                            while (true) {
                                switch ((((str2.hashCode() ^ 766) ^ 460) ^ 267) ^ 214354653) {
                                    case -704600924:
                                        str2 = "ۢۥۡۜۘۦۘ۫ۚۦۘۧۚۧۛۗ۬ۦۢۥۤۘۖۧۥۖۦ۫ۨۘۤۖۦۡۥۡ۬ۘ۫";
                                        break;
                                    case 1121281679:
                                        str2 = "ۗۜۥۡۖۧۘۢۜ۟ۜۤۜۘۨ۫ۚۚۗ۠ۜ۠ۧ۟ۤۘۖۗۖۘۢ۫ۖۘۢۦۛ۠ۙۗ";
                                        break;
                                    case 1898131792:
                                        return new RootRelatedEntity(parcel);
                                }
                            }
                        }

                        @Override // android.os.Parcelable.Creator
                        public /* bridge */ /* synthetic */ RootRelatedEntity createFromParcel(Parcel parcel) {
                            String str2 = "ۘۚۡۨۜۗۨۖۘۦۦۨ۬۟ۘ۟ۙ۬ۗۥۨۛ۬ۧۜۥۖۨۘ۫۬ۗۖۙۡ۟ۛۙۖۗۡۘۧۘۨۘۜۜۘۘ۟ۢۛۥۢ۟";
                            while (true) {
                                switch ((((str2.hashCode() ^ 329) ^ 936) ^ 844) ^ 539896485) {
                                    case -1681996803:
                                        return createFromParcel(parcel);
                                    case -562540242:
                                        str2 = "ۦۨۢۖۙۗۡ۬ۥۧۢ۬۟ۘۘۘۦۚۦۧۧۗ۠ۡۥۘ۠ۜۥ۫ۖۨ";
                                        break;
                                    case 334714713:
                                        str2 = "ۢ۬ۙۜۡ۬ۦ۬۠۫ۢۡۘۖۙ۬ۘۙۥۥۡۜ۟۠ۦۙۢ۬۟۟ۘ۫ۢۘۦۜۘۜۖۤۤۡۘۘۡۗۨۘۜۨۖۘ";
                                        break;
                                }
                            }
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // android.os.Parcelable.Creator
                        public RootRelatedEntity[] newArray(int i) {
                            String str2 = "ۨۦۧ۫ۥۜۛ۬ۡۘۘۧ۟ۜۗۦۘۢۙۡۘۢۥۤۗۙ۠ۙ۠ۘۘ۬ۜۙۧۡۤ۠ۢۥۘۢۧۦ۠ۖۛۤ۟ۗۛۧۜۘۗۦۚۙۦۥۘ";
                            while (true) {
                                switch ((((str2.hashCode() ^ 526) ^ 14) ^ 509) ^ (-932406241)) {
                                    case -1818547219:
                                        str2 = "ۗۘ۬ۜۛۗۢ۠ۛۡۛۚۧ۫۟ۖ۫ۢۘۖۤۚ۬ۜۡۘۜ۫ۚۡۘۤۢۦۜۖۘ";
                                        break;
                                    case -1057916039:
                                        str2 = "ۢۛۦۘۛۦۘۚۖۥ۟۬ۨۘۙۥۘۖۨۨۘ۟ۚۦۘۦۚۡۘ۟ۨۗۖۨ۬۬ۗۜۘ۫ۧۚ";
                                        break;
                                    case 752660363:
                                        return new RootRelatedEntity[i];
                                }
                            }
                        }

                        @Override // android.os.Parcelable.Creator
                        public /* bridge */ /* synthetic */ RootRelatedEntity[] newArray(int i) {
                            String str2 = "ۖ۬ۖ۟ۡۢۜۗۙۚۜۥۜۤۡۢۙۖۘ۬ۖ۟ۢۧۖ۠ۢۢۦۗۨۤۢۧۡۤۧۚ۟ۗ۠۟ۘۧۙۛۡ۫۟";
                            while (true) {
                                switch ((((str2.hashCode() ^ 234) ^ 502) ^ 307) ^ (-1078715646)) {
                                    case 913768715:
                                        return newArray(i);
                                    case 1478610781:
                                        str2 = "۠۬ۦۘۥۚۛۘۗۡۘۗ۫ۖۗۜۛۚۧۘۤۦۡۜۘۖۘۙ۬ۥۘۖۥ۟";
                                        break;
                                    case 1688218531:
                                        str2 = "ۛۗۤ۟ۜ۫۟ۚ۟ۛۙۦۘ۫ۘۢ۬ۗۨۧۘ۫۟ۢۚۥۥ۠ۡۢ۠ۖۘۦۥۧۡۖ۬ۦۗۤ";
                                        break;
                                }
                            }
                        }
                    };
                    str = "ۧۧ۫ۖۧۦۡۙۗۖۥۘۡۚ۫۬ۘۦۗۨۘۘۥ۬ۗۢۥۧ۫ۙۦۘۙۖۜ۠ۜۖ";
                    break;
                case 1604266534:
                    return;
            }
        }
    }

    public RootRelatedEntity(Parcel parcel) {
        this.Code = parcel.readString();
        this.Msg = parcel.readString();
        this.Data = (RootRelatedData) parcel.readParcelable(RootRelatedData.class.getClassLoader());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        String str = "ۗۙۚۦۜۧۥۤۨۘ۫۟۟۠ۘ۟۬ۧۖۘۛۖۘۘ۬ۧۖۘۡۗۚۜۤۘۘۥۙۤۦۨۥۘ";
        while (true) {
            switch ((((str.hashCode() ^ 814) ^ 25) ^ 2) ^ (-690730549)) {
                case -400417687:
                    return 0;
                case -159633524:
                    str = "ۡۚۦ۫ۗۡۙۥۤۜ۫۠ۨ۟ۨۘۙۖ۟۠ۘۘۧۨ۫۟ۚۡۘۗۦۦۘ";
                    break;
            }
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        String str = "ۙۥۨۦ۫۫۬ۧۦۘۗۧۦۘۚۘۜۘ۫ۨۦۘۜۗۢۙ۬ۘۘۧۧۢۛۥ۬ۥۧۖۥۦۨۘۖۦۘۘۚۖۧۗ۟۠ۦۚۤۤۤۦۢ۫";
        while (true) {
            switch ((((str.hashCode() ^ 490) ^ 464) ^ UiMessage.CommandToUi.Command_Type.FW_OPACITY_VALUE) ^ 1516652936) {
                case -1161465996:
                    parcel.writeParcelable(this.Data, i);
                    str = "ۗۖۦۛۗۘ۬ۡۨۘ۫۬ۖۜۥۡۘۙۗۘۙۗۦۡ۫۬ۦۦۨۙۦۙ۫ۘۜ۟۫ۧۚۦۧۦ۬ۡۡۦۘۨۗ۬ۢۜۚۥۛۥ";
                    break;
                case -964924044:
                    parcel.writeString(this.Msg);
                    str = "ۙ۬ۛۨۨۙ۫ۜ۬۟۬ۜۘۖۜۡۢۢۘۘۤ۟۠ۖ۠ۜۘۘ۫ۦۘ۬ۖۖ۬۫ۘۘۜ۠ۘۘۘۤ۠ۙ۬ۘ";
                    break;
                case -864679291:
                    str = "ۙۡۘۘۦۨۧۗۜۙۗ۫ۜ۬ۢۦۘ۟ۨۨۘۡۗۦۘۙۢۥۗۙۧۨۗۙ";
                    break;
                case -611839998:
                    str = "ۥۛۨۘۦۡۡۙۢۧۗۦۧۘ۫ۗۥۘ۠ۚۚۧۢۢۚۚۨۘۚۤ۠ۙ۟ۗۖۨۧۘۚۗۤۘ۫ۧۢ۫ۥۘۜۙۦ۫ۖ۬";
                    break;
                case 864343755:
                    str = "ۤۙۗۧۗۧ۫ۢۙ۟ۤۘ۫۫ۚۢ۫ۚۧۘۧ۫ۗ۠ۢۘۡۖ۫ۜۘ۫ۘۘۥۦۘۛۙۙ۬۠ۥۡۦۦۦۧۡۘۨۜۦۘۖۤۘ";
                    break;
                case 987574638:
                    return;
                case 1504649119:
                    parcel.writeString(this.Code);
                    str = "۬۠ۜ۫ۡۥۦۤۡۘۖ۫ۛۤ۟ۙۙۤۡۡۧۨ۟ۙۙۥۖۡۜۥۤۧۘۙۖۛۦۘۘۨۗۦ۬";
                    break;
            }
        }
    }
}
