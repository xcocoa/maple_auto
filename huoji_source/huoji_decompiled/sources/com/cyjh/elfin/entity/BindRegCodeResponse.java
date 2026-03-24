package com.cyjh.elfin.entity;

import android.os.Parcel;
import android.os.Parcelable;
import com.anythink.expressad.foundation.g.a;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import z2.me;

/* JADX INFO: loaded from: classes.dex */
public class BindRegCodeResponse implements Parcelable {
    public static final Parcelable.Creator<BindRegCodeResponse> CREATOR;
    public int Code;
    public RegCodeTimeInfo Data;
    public String Message;

    public static class RegCodeTimeInfo implements Parcelable {
        public static final Parcelable.Creator<RegCodeTimeInfo> CREATOR;
        public long ClientTimestamp;
        public long ExpireTime;
        public long ServerTimestamp;

        static {
            String str = "ۤۙۙۤۨۗۗۥۤۧۢۜۘۨۛۦۘ۫ۥۡۘۤۜۘۗۜۡۘ۬ۗ۟۬ۙۥۘۗۜۗۨۦۙ";
            while (true) {
                switch ((((str.hashCode() ^ 427) ^ 564) ^ 393) ^ 497150608) {
                    case -1541369250:
                        return;
                    case -806619469:
                        CREATOR = new Parcelable.Creator<RegCodeTimeInfo>() { // from class: com.cyjh.elfin.entity.BindRegCodeResponse.RegCodeTimeInfo.1
                            /* JADX WARN: Can't rename method to resolve collision */
                            @Override // android.os.Parcelable.Creator
                            public RegCodeTimeInfo createFromParcel(Parcel parcel) {
                                String str2 = "ۘ۬ۘۨۢ۠ۛۜ۫ۤۡۖۜۚۡۙۦۤ۬ۧۡۘۤ۠ۖۘ۠ۖۦۘۡۗۥۘ۫ۚۘ۫ۙ۬۟۠ۡ۬۠۫";
                                while (true) {
                                    switch ((((str2.hashCode() ^ 816) ^ 666) ^ 616) ^ (-1695506938)) {
                                        case -1677645445:
                                            return new RegCodeTimeInfo(parcel);
                                        case -1118868355:
                                            str2 = "ۤۚ۟ۚ۫ۨۡۧ۫ۖۘۨۘۘ۟ۢ۟۟ۙۘۤۢ۠ۖ۫۠۫ۨۘۘ۫ۘۘۜۨ۠ۖۖ۟ۙۦۙۜۨۧۛ۫۫ۨۖۧۘۨۦۨۘۨۚۥۘ";
                                            break;
                                        case 1969854614:
                                            str2 = "ۙۢۜ۠ۥۘ۫ۤۥۘۥۚۧۖۨۖ۟۬ۛۦۛۚ۬ۢۧۢۘۜۘۧۛۡۘ";
                                            break;
                                    }
                                }
                            }

                            @Override // android.os.Parcelable.Creator
                            public /* bridge */ /* synthetic */ RegCodeTimeInfo createFromParcel(Parcel parcel) {
                                String str2 = "ۤۥۖۘۡۥۖۖۛۖۘۜ۬ۤۧۥۜۧۘ۫ۧ۫۬ۗ۟ۘۥۗۘۛۤۦۘۚۖۜۘۧۤۘۘ";
                                while (true) {
                                    switch ((((str2.hashCode() ^ 989) ^ 926) ^ 627) ^ 1807946270) {
                                        case -432988760:
                                            str2 = "ۖۨ۫ۥۨۖۘۙ۟ۖۘۦۡۥۘۥۢۚۜۤۖۤۧۘۘۧۡۚۥۡۚۜۗۙ۟۠ۨۘۤ۫ۨۘۜۚۧۛۘۢ۬۠ۨ۬ۧ۟";
                                            break;
                                        case -294333246:
                                            return createFromParcel(parcel);
                                        case 1403463162:
                                            str2 = "ۜۧۗۚۘۘ۟ۡۛۥ۠ۘۨۡۥ۟ۧۡ۬ۡۘۨۡۙ۫ۨۖۘۤ۟ۡۘ۬ۦ۬ۥۚۥۤ۠ۤۧۡۙ۫ۖۘۗ۫ۛۜۨۘ۫۠۫";
                                            break;
                                    }
                                }
                            }

                            /* JADX WARN: Can't rename method to resolve collision */
                            @Override // android.os.Parcelable.Creator
                            public RegCodeTimeInfo[] newArray(int i) {
                                String str2 = "ۢ۬۠ۛۧ۟ۧۡۢ۬ۤۖۘ۫ۚ۠ۦۥۖۙۦۖۨۢۖۘۘۥۘۛۘۡۘۥ۬۠۠ۘۥۘۙۤۘۤ۫ۨۤۚۗ۟ۘۜۘ";
                                while (true) {
                                    switch ((((str2.hashCode() ^ 550) ^ 679) ^ 387) ^ 496216258) {
                                        case -493505245:
                                            str2 = "ۘۡۡ۟ۘۧۘۗۜ۠ۦۦۘۘۚ۠ۜ۫۫ۗۧۜ۟ۚ۟ۖۘۖۤۖۢۙ۟۠ۜۗۡ۟ۧۦۢۖۘۤۨ۟۠ۖۗۛ";
                                            break;
                                        case 405502130:
                                            str2 = "ۗۥۜۥۗۛۦ۟ۖ۫ۥ۟ۧۚ۟ۛۚ۠ۤۦۖۡۥۧۜ۟۟۟ۡ";
                                            break;
                                        case 733738647:
                                            return new RegCodeTimeInfo[i];
                                    }
                                }
                            }

                            @Override // android.os.Parcelable.Creator
                            public /* bridge */ /* synthetic */ RegCodeTimeInfo[] newArray(int i) {
                                String str2 = "ۗۛ۠ۖ۟۠ۗ۟ۘۨ۠ۧۧۖ۟ۜۤۢۜۤ۫ۘ۠ۦۘۦ۠ۜۡۘۙ۟ۧۢۚۦۦۚ۬۫ۥۛۦۘۖۛۢۧۙ";
                                while (true) {
                                    switch ((((str2.hashCode() ^ 645) ^ 785) ^ 222) ^ (-1588331546)) {
                                        case -2041135029:
                                            str2 = "ۚۥۛۘۖۢۧۡۨۧۥۘ۠ۙۖ۠ۥۘۘۢ۟ۨ۟۟ۡۥۡۡۘ۟ۤ";
                                            break;
                                        case -1812489540:
                                            str2 = "ۖ۬ۙۦۖۘ۠۟ۜۘۚ۟۟ۧۜۥۚۧۙۨۥۖۙۢۗ۬ۚۨۖۡۥۘۨۢۛ۬ۤۨۘ۬۫۫ۜۢۗ";
                                            break;
                                        case -254068915:
                                            return newArray(i);
                                    }
                                }
                            }
                        };
                        str = "ۘ۟ۙۨۖۖۥۜۢ۬ۤۤۤ۟ۦۘ۬ۖۡۤۖۚۡۦۛۚۢۜۘ۟۬۫۠ۙۘۙۤۚۜۜۘ۠ۘ۟";
                        break;
                }
            }
        }

        public RegCodeTimeInfo(Parcel parcel) {
            this.ClientTimestamp = parcel.readLong();
            this.ServerTimestamp = parcel.readLong();
            this.ExpireTime = parcel.readLong();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            String str = "۟ۨۧ۫۬ۘۘۖۚۦۘۘۢۢۢ۫۟۬ۜۘۦۚۛۙۛۡۜۨۖۢۖۘۘۖ۬ۦۨ۫ۖۘ۫ۡۧۢۨۦ۠ۙۥۢۥۨۗۤۧ۬ۡۘ";
            while (true) {
                switch ((((str.hashCode() ^ 433) ^ 322) ^ 117) ^ (-1691828545)) {
                    case -2133586384:
                        return 0;
                    case -403346708:
                        str = "ۡۘ۟ۦۨۨۘۗۡۦ۬ۨۜۤ۠ۛۢۗۨۥۖۘۥۧۥۘۚۥ۠ۢۡۦۘۨۗ۟ۤ۟ۘ";
                        break;
                }
            }
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            String str = "ۜۗۙۙۢۜۢۢۤ۟ۘۖۤ۟۠ۚۘ۟۬۠ۦۘۖۙ۠ۗ۫ۥۜ۬ۤۢۥۨۧ";
            while (true) {
                switch ((((str.hashCode() ^ 245) ^ 242) ^ me.o00000oO) ^ 165163282) {
                    case -1541658331:
                        parcel.writeLong(this.ServerTimestamp);
                        str = "ۧۢۥۘۧۢۡۘ۬ۤۛۡۘۜۖۢۚۢۗ۬ۤۤ۬ۖۘۜۥ۫ۖ۫ۖۦۘۧۛ۠ۦۡۜۘ۬ۖۖۙ۟۟ۢ۟ۥ۠ۗۨۘ";
                        break;
                    case -297643463:
                        str = "ۡ۫ۡۦۢۗۦۘۥۘۥ۠ۨۘۥۥۖۘۨۚۦۘ۠ۧۦ۬۠۫ۧ۠ۥۥۜ۠ۡۦۜۘۨۥۥۘۦۘۡۚۚۖۜۥۨ۫ۡۘ";
                        break;
                    case 21341889:
                        str = "ۖۧۨۡۜۗۤۨۧۗۢۦۘ۠ۛۤ۬۟ۦۘۚۦۡ۬ۥۡۘۨۚۤۡۨۧۘۥ۠۟ۘۙ۬۬ۙۚۦ۫ۢۜ۫۫ۧۚۧۛۖۘۤۢۡ";
                        break;
                    case 1002196281:
                        return;
                    case 1235681120:
                        parcel.writeLong(this.ExpireTime);
                        str = "ۛۚۡۧۖۚۤۡۡۘۗۡۘۖ۟۟ۖۥۢۗۘۘۚ۫۬۠ۗۗۚۜۨۨ۠ۦۚۙ۫۟ۡۘ۫ۖۧۥ۬ۤۤۤ۫";
                        break;
                    case 1444749913:
                        parcel.writeLong(this.ClientTimestamp);
                        str = "ۤۙۛ۠۫۠ۥۗۜۢۡۘۚ۠ۙ۬ۖۜۚۜۥۙۛ۫ۗۢۛۨۡۨۘ";
                        break;
                    case 1475996414:
                        str = "۬ۗۦۘۢ۟ۢ۠ۤۙۖۘۘۘ۟۟ۦۘ۬ۛۡۘۧۙۤۦۜ۠۠ۡۜۜ۠ۨۘۦۧ۬ۚۛۧۜۧۜ۫ۖۢۚۡۡ۟۠";
                        break;
                }
            }
        }
    }

    static {
        String str = "ۖۡۥ۠ۦۚۡ۬ۚ۠ۨ۟ۢۨۨۘۥۜ۬۬۠ۚ۟۫ۦۧ۠۫ۛ۠ۚ";
        while (true) {
            switch ((((str.hashCode() ^ 848) ^ 517) ^ 548) ^ (-1527393043)) {
                case -1780923408:
                    return;
                case -36745176:
                    CREATOR = new Parcelable.Creator<BindRegCodeResponse>() { // from class: com.cyjh.elfin.entity.BindRegCodeResponse.1
                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // android.os.Parcelable.Creator
                        public BindRegCodeResponse createFromParcel(Parcel parcel) {
                            String str2 = "ۦۜۥۘۦۧۥۘۖۧۜ۠ۤۘۖۘۘۖۨۘۦۨۧۚۗۤ۠ۗۜۘ۫ۚۡۡۗۚۨۛ۬ۧۚۖۘۦ۬ۜ";
                            while (true) {
                                switch ((((str2.hashCode() ^ 14) ^ 231) ^ me.o00000OO) ^ 1640196033) {
                                    case -2032001109:
                                        return new BindRegCodeResponse(parcel);
                                    case -143727047:
                                        str2 = "ۧۥ۬ۙۗۡ۫ۢۘۘ۬۬۫۟ۥۨۨۗ۬ۚ۟ۥۢۙۘۘۨۦ۠ۗۨ۟ۜۗ۟ۗ۫۬۬ۡۘۛۚۖۘ۫ۛۜۘۚۖۧ۟۠ۛۗۙۥ";
                                        break;
                                    case 721713519:
                                        str2 = "ۤ۟ۢۥۙۚۡ۫ۗ۫۟ۘۦۡۘۘۡۘۨۘ۟ۛ۫۬ۧۜۙۢ۠۠ۘۘ";
                                        break;
                                }
                            }
                        }

                        @Override // android.os.Parcelable.Creator
                        public /* bridge */ /* synthetic */ BindRegCodeResponse createFromParcel(Parcel parcel) {
                            String str2 = "ۖۥۖۡۧۥۘۛۡ۠ۤ۠ۢۙ۬ۚ۫ۛ۟ۤۦۦۛۥۧ۬ۚۢۦۛ";
                            while (true) {
                                switch ((((str2.hashCode() ^ UiMessage.CommandToUi.Command_Type.FW_ZORDER_VALUE) ^ 839) ^ 727) ^ 965606671) {
                                    case 85067006:
                                        str2 = "ۖۚۡۘۘۜ۬ۛ۫ۘۡۗۡۥۜۘ۠ۥۜۘ۠ۤ۫ۘۗۦۘۖۗۦۨ۟ۜ";
                                        break;
                                    case 781654227:
                                        return createFromParcel(parcel);
                                    case 1310775396:
                                        str2 = "ۥۛۖۘۥۨۨۘ۬ۜ۫ۙۜۘ۠ۚۜ۠ۜ۬ۘ۬ۦۧۙۨۢۖۧۘۖۡۡۘۖ۫ۗۚۛۗۚۢ۠ۛۙۚۤ۟۬ۤۘ۠";
                                        break;
                                }
                            }
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // android.os.Parcelable.Creator
                        public BindRegCodeResponse[] newArray(int i) {
                            String str2 = "۟ۚ۠ۡۘۧۘۧ۠ۡ۬ۖۤ۠ۘۙۛۘۧۚۥۘ۟۬ۥۖۤۖۤۜۨۘۖۜ۬۫ۚ۫ۦ۫۫ۗۥۘۙۛۘۘۨۗۡۚۙۢ۠ۛۜۘ";
                            while (true) {
                                switch ((((str2.hashCode() ^ 987) ^ 895) ^ 32) ^ (-852044531)) {
                                    case -1900840106:
                                        str2 = "ۗۢ۠ۖۢۖۙ۬ۜۘ۠ۛۥۘۢ۬ۜۘۘۘۜۧ۟ۙۨۖۘۨۢۜۘۛۡۡۘۛۦۜۘۘۛۢ";
                                        break;
                                    case -1776143608:
                                        str2 = "ۖۥۜۘۗۛۘۘ۟ۗۗۨ۫ۜۘۤۤ۫ۗۚۨۦۛۨۘۗۛۜۧۧۦۘ۟ۨۥۘۤۨۖۘ۠ۥۡۘۧۨ۟ۦ۟ۛ۟ۖۘۦ۠۬ۗۖۧۥۥۘ";
                                        break;
                                    case -804553487:
                                        return new BindRegCodeResponse[i];
                                }
                            }
                        }

                        @Override // android.os.Parcelable.Creator
                        public /* bridge */ /* synthetic */ BindRegCodeResponse[] newArray(int i) {
                            String str2 = "۬ۤۖۡۘۜۘۧ۫ۛۖ۠ۡۛ۫ۗۜۧۜۘۗۦۡۘۤ۠ۡۖ۟ۧ۫ۥ۫";
                            while (true) {
                                switch ((((str2.hashCode() ^ a.aX) ^ 988) ^ 682) ^ 1622601798) {
                                    case -1857419586:
                                        str2 = "ۚۢۚۤۦۨۦ۟۠ۛۘۥۘۖ۬ۧۡۜۙۛۥۛۛۗ۫ۥ۬ۛۦ۫";
                                        break;
                                    case -492876719:
                                        return newArray(i);
                                    case 24363119:
                                        str2 = "۬ۢۡۛۢ۬ۜۧ۫۬ۦ۫ۧۜۗۧۛۡۘۖ۫ۥ۟۫ۘۘ۟ۜۖۘۢۦۛ۟ۘۦۚ۠ۙ";
                                        break;
                                }
                            }
                        }
                    };
                    str = "۠ۘۨۢۜۗۦۘ۠ۘۘۖۖۧ۟ۨۤۥۗۜۧۚۦۘۛۜۨۦۚۥ۠ۢۖۡۥ۬۠۟ۦ۫۟ۦۘۦۤۚۜۘۛۛۦ۠ۘۥۖۘ";
                    break;
            }
        }
    }

    public BindRegCodeResponse(Parcel parcel) {
        this.Code = parcel.readInt();
        this.Message = parcel.readString();
        this.Data = (RegCodeTimeInfo) parcel.readParcelable(RegCodeTimeInfo.class.getClassLoader());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        String str = "۠ۙۖ۠۫ۗ۟ۘۛۚۤۡۘۡۖۗۖۤۥۗۦۡۧۖۦۘۨۡۥۚۚۙ۟ۚ۬ۥۤۜۙۥۘۛۗۗ";
        while (true) {
            switch ((((str.hashCode() ^ 22) ^ 818) ^ 662) ^ (-1206016134)) {
                case -865579942:
                    str = "ۗ۟۬ۚۥ۬ۧ۠ۧ۟۬ۦۘ۫ۜۜۤۥۧۘۛۖۘۘۤۤۡ۟ۡۘۥۨۖ۫ۙۢۤ۠ۨۤ۠ۦۘۦۛ۟ۥ۠ۖۘۗۡۧۘۡۢۜۘۢ۠ۥۘ";
                    break;
                case 1001399932:
                    return 0;
            }
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        String str = "ۡۧۡۘۘۙۦۘۖ۫ۜۘۖ۟ۖ۬ۧۨ۫ۦ۫ۜ۟ۜۘۤۚۘۨۜۦۡۚۖۘۘۖۨۘۛۦۗ";
        while (true) {
            switch ((((str.hashCode() ^ 774) ^ 69) ^ 842) ^ (-1931478203)) {
                case -1857027669:
                    return;
                case -1316268350:
                    parcel.writeInt(this.Code);
                    str = "ۡ۠ۦۘ۠ۜۜۘۜۤۜۘۘۘۤ۬ۚۙۗۚۦۘ۬ۧۘۘۗۥۜۘۤۥۘۘ۬۟ۡۗ۫ۦۛۛۘۘۙۥ۟ۡۙۡۘ";
                    break;
                case -1286313079:
                    str = "ۨۗۖۘ۬ۥۨۘۧۨ۟ۤۦۥۦۘۨۦۥۘۤۦ۫ۙۘۥۘۢ۬ۧ۠ۛۥۘۡۤ۬ۢۧۦۘ";
                    break;
                case -574180752:
                    str = "۠ۖ۟ۥۗ۠۟ۥۖۖۢۤۗ۫۫ۛۢۙۚ۠ۨۦۘۛۡ۬ۤۢۦ";
                    break;
                case 69229155:
                    parcel.writeString(this.Message);
                    str = "ۖۙۡۘۨۛۦۚ۬ۜۦۥۦۘۚ۬۟۬ۘۘ۫ۘۥۚ۬ۧ۠ۥۤۦۢۖۘۧۛۙۙۛۗۥۛۦ۫ۦ۟";
                    break;
                case 341448130:
                    str = "۟ۚۘ۟ۖۢۢۦۧۘۨۖۨۙ۬ۧۧۚۜۚۧ۠ۨۡۦۡۛ۟۬ۨۙ۫ۜۚ۟۟ۜۚۧۖۥ۟ۤۙۥۘۧۗۦ";
                    break;
                case 1039998191:
                    parcel.writeParcelable(this.Data, i);
                    str = "ۘۦۖۘۢۜۜ۬۫ۛۦ۟ۡ۟ۥۖۘ۟۠ۥۘ۟ۖۥۛۤۥۘۘۘۢۛۗۜۤۘۘۚۤۙ۠ۛۦۘۖۗ";
                    break;
            }
        }
    }
}
