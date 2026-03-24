package com.cyjh.elfin.entity;

import android.os.Parcel;
import android.os.Parcelable;
import cn.haorui.sdk.adsail_ad.view.scaleImage.SubsamplingScaleImageView;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class GameSwitchInfo implements Parcelable {
    public static final Parcelable.Creator<GameSwitchInfo> CREATOR;
    public String Id;
    public String Name;
    public String Path;
    public String Type;

    static {
        String str = "ۥ۫ۚ۟ۧۡ۫ۙۖۘۥ۬۠۬ۢۖ۠ۙۨۘۗ۟ۘۘۘۥۚۤۙۗۤۧ۠ۥۨۢۦۥۙ۠۫ۘۘۨۛ۟ۜۡ۬۬ۤۘۘۢۗۨۛۧۘ";
        while (true) {
            switch ((((str.hashCode() ^ 158) ^ 811) ^ 94) ^ (-439439589)) {
                case -2087565703:
                    return;
                case -732781091:
                    CREATOR = new Parcelable.Creator<GameSwitchInfo>() { // from class: com.cyjh.elfin.entity.GameSwitchInfo.1
                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // android.os.Parcelable.Creator
                        public GameSwitchInfo createFromParcel(Parcel parcel) {
                            String str2 = "ۤۚۖۗۦ۬ۡۛۘۘۛۡۗۚۧۤۧۗۤ۠ۛۜۘۙۛۚۤۛ۟ۗۗۘۤۘۨۘۘۡۥۘ";
                            while (true) {
                                switch ((((str2.hashCode() ^ 868) ^ 196) ^ 921) ^ (-2124760164)) {
                                    case -1909867336:
                                        str2 = "ۥ۫ۧۢۚۦۘ۫ۤۡۘ۟ۥۗۡ۫۟۠ۘۢۦۗۡۘۗۥۘۢ۬ۙۙۗۙ";
                                        break;
                                    case 7063142:
                                        return new GameSwitchInfo(parcel);
                                    case 1231712863:
                                        str2 = "ۛۙۘۧ۠ۗ۬ۦۧۘۛ۬۠ۧۡۛۖ۫ۗۗۘۢۙۙۗۥ۬ۖۘۜۡۧۚۚۡۘۢۧۛ";
                                        break;
                                }
                            }
                        }

                        @Override // android.os.Parcelable.Creator
                        public /* bridge */ /* synthetic */ GameSwitchInfo createFromParcel(Parcel parcel) {
                            String str2 = "ۢۚۖۘۥ۠ۛ۠ۥۖۚۛۘۘۙۤۙۨۢۘۡۧۗۧۛۨۧ۠ۜۘۙۤۡۘ";
                            while (true) {
                                switch ((((str2.hashCode() ^ 286) ^ 228) ^ UiMessage.CommandToUi.Command_Type.SET_FONT_VALUE) ^ 1284008302) {
                                    case -1402504202:
                                        str2 = "۫ۙۨ۬ۜۜۗۚۖۘۛۗۡۥۢۘۘ۟۟ۛ۫ۡۢ۟ۥۦ۟ۨ۟۠ۦۥ۠۠۟ۨۗ۟ۤۤۖ۟۠ۜۘۤۢۡۘ۟۠ۦ";
                                        break;
                                    case -86769387:
                                        return createFromParcel(parcel);
                                    case 600190651:
                                        str2 = "۠ۜ۟ۜۨۜۘ۬ۛۜۦۧۦ۟ۡۧۘۧۥۗۨۧۚۡۡۙۢۘۥۘۜۗۙ۟۫ۖ۬ۨۧ";
                                        break;
                                }
                            }
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // android.os.Parcelable.Creator
                        public GameSwitchInfo[] newArray(int i) {
                            String str2 = "ۛۚۖۘۗ۠۟ۡۜۜۘۘۚۢۤ۬ۡۤۗۜۧ۠ۢۖۧ۬۬ۨۘۘۜ۟ۙۤۦۛۙۤۥۘ";
                            while (true) {
                                switch ((((str2.hashCode() ^ 369) ^ 675) ^ 431) ^ (-1674178807)) {
                                    case -658169353:
                                        return new GameSwitchInfo[i];
                                    case -591810969:
                                        str2 = "۫ۛۗۡۗۖۘ۫۫۟ۘۨۘۘۛۡۖۘ۟ۛۨۢۢۨۖۢۖۘۜۢۧۙۖ۫ۦۚۢۢۘۘۢۤۙۘ۬ۤۗۘۙۗۢۡ";
                                        break;
                                    case 1379797230:
                                        str2 = "۟ۚ۠ۢۖۚۛۛۢۛۖۡۛ۫ۦۘ۫۬۫ۛۨۡۛۧۛۙۤۨۘ۬ۨ۟ۘۤۡۘۢۨۨۘ";
                                        break;
                                }
                            }
                        }

                        @Override // android.os.Parcelable.Creator
                        public /* bridge */ /* synthetic */ GameSwitchInfo[] newArray(int i) {
                            String str2 = "۠ۧ۬ۗۤۥ۠ۙۛۖۨۨۦۢۖۢۤۘۛۡۧۚۜۘۘۡۤۖۘۜۜۘۘ";
                            while (true) {
                                switch ((((str2.hashCode() ^ 838) ^ SubsamplingScaleImageView.ORIENTATION_270) ^ 651) ^ (-1571394484)) {
                                    case -801292468:
                                        str2 = "ۨۙ۬ۢۧۜۙ۫۫۠ۧۡۘۘۢۦۘۜۦۡۜۙۚۨۖۘ۬ۡۧۘۧۧ۫";
                                        break;
                                    case -579631049:
                                        return newArray(i);
                                    case 1389227658:
                                        str2 = "۟ۛ۟ۨ۟ۨۘ۟ۜۥۘۢۖۡۦۦۥۘۦۛۖۘۗ۫ۨۡ۬ۥ۠ۨۤۛ۟ۡۘۛۜۜ۬ۚ۬ۧۧۖۡ۟ۘۘۦۡۦ۠ۗۦۡۧۦۨ۬ۘۘ";
                                        break;
                                }
                            }
                        }
                    };
                    str = "ۢ۫ۖۢۜۛۘۚۥۘۧۢۡۘۙۤۧ۫ۙۦ۟۬ۖۧۜۘۚۢۜۢۖۘۛ۫ۥۘ۟۫ۙ";
                    break;
            }
        }
    }

    public GameSwitchInfo() {
    }

    public GameSwitchInfo(Parcel parcel) {
        this.Id = parcel.readString();
        this.Name = parcel.readString();
        this.Type = parcel.readString();
        this.Path = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        String str = "ۤۗۖۘۗۤۢۢ۬ۡۘۚۗۥۙۤ۠ۥ۠ۧ۬ۡۨ۫ۖۘۨۗۡۘ۟ۙۨۘۢۚۡۘ۠ۤۗ";
        while (true) {
            switch ((((str.hashCode() ^ 38) ^ 783) ^ 103) ^ 214272998) {
                case 949873248:
                    return 0;
                case 1128449844:
                    str = "ۛۘۜۗ۠ۥۡۛۘ۫ۖۧ۬ۥۘۚۙۦۘۘۚۜۘۦ۬ۢۡۡۧۘ۠ۤۨۘۡۛۛۨۡۜۘ";
                    break;
            }
        }
    }

    public String toString() {
        StringBuilder sb = null;
        String str = "ۨۜۥۘۗۧۖۘۨۖۢۨۥۥۘ۬ۦ۟ۡ۟۠۫۬ۧۘ۬ۚ۠ۦۘۤۘۖۖۦۡۧ۫ۗۘۨۡۢۢۧۤۤۡ۬۬ۤۨۗۨۘۦۨۖۘ";
        while (true) {
            switch ((((str.hashCode() ^ 189) ^ 713) ^ 185) ^ (-197187980)) {
                case -2069000240:
                    sb.append('\'');
                    str = "ۨ۬ۙۖۖۘۘۢۦۘۤۥۘۤۗ۫ۢ۟۬۬ۗ۟۫ۧۜ۟ۦۘ۟ۡۤۚۛۦۘۜۜۜ۠ۤۤۛۡۧۘ۫ۖ۬ۚۘۤ";
                    break;
                case -1455048773:
                    sb.append('\'');
                    str = "ۚۦۢ۠ۢۙۤۤۦ۠ۨۖۘۥ۫ۧۙ۠ۧ۟ۚۡۡۛۘۙۧۡۡۛۢۦۨۛۧۤۨۘۛۧۥۘۗۙۤۘۤ۫ۨۖۘ";
                    break;
                case -1172909014:
                    return sb.toString();
                case -1070952952:
                    sb.append(", Path='");
                    str = "ۜۨۘۗ۬ۜۤ۠ۜۛۡۘ۫ۡۢۖۗۚۜۘۙ۬ۖۚ۟۫ۡۘۘۖ۠ۙۨۖۖ";
                    break;
                case -987001329:
                    sb.append('\'');
                    str = "ۜۚۤۨۡۥۦۚۗۘۖۦۘۨۙۙۥۖۥۘۙۢۧۚۧ۫ۤۢۧۧۦۗۧۙۨۘۦ۟ۦۤ۠ۘۘۗۦۨۘ";
                    break;
                case -976480198:
                    sb.append(MessageFormatter.DELIM_STOP);
                    str = "ۘ۠۫ۛ۫۬ۜۡۧۢۨۜۢ۬ۥۘ۟ۗۘ۠ۛۨۘ۬ۗۙۙۧۧۜ۬ۦۘ۬۟ۥۦۚ۫";
                    break;
                case -948172209:
                    sb = new StringBuilder();
                    str = "ۢ۫ۥۘۡ۫۫ۧۢۘ۬ۢ۬ۥۚۙO۟۫ۡۘۦ۟ۚ۬ۜ۬ۚۢۡۜ۠ۘۘۚۦۧۙ۬ۘۛۘۘۙۘۘۜ۠ۛۘۧۤۦ";
                    break;
                case -821026459:
                    sb.append(this.Type);
                    str = "ۖۖۖ۟ۘۥۘۧ۟ۛۚ۠ۙۢ۟ۨۢۚۜۚۛ۟ۖۧ۬ۧۖۦۘۧۖ۠ۘ۫۫۫ۚۡ۠ۢۗۤۥۥ۠ۗۙۦۜۥۘۦۚۙۛ۬۟";
                    break;
                case -656826330:
                    sb.append(", Name='");
                    str = "۫ۢۢۡۙۥۘ۬ۥۧۘۦۤۧ۫ۦۡۘ۠ۨۘۘۖۖۜۘۤۨۘۤۥۘۡۧۖ۠ۢۨۘۨۨۨۦۥۖۦۦۗۨ۫ۜۘۡۘ";
                    break;
                case -116295851:
                    sb.append(this.Id);
                    str = "۠۠ۜۘۨۚۖ۠ۚۜۨۜۦۘۙۖۗۚۤ۬ۜۡۖۚۥۜۘۙۥۖۚۧۖۘ";
                    break;
                case 87839919:
                    str = "ۤۜۛۚۚ۫ۜ۬۟ۙ۠ۗۧۨۢۡۗۡۘۨۗ۬ۚ۬ۚۡ۟۠ۢۘۘۘۦۜۢ۠ۖۙۘۚ۬ۖۗۦ۬ۙۛۨ۫ۘۘۚ۫ۜۘۦۘ۬";
                    break;
                case 111546887:
                    sb.append(this.Name);
                    str = "ۙ۬ۘۘۥۘۚۦۥ۬۫ۢۚۙۥۧۘۢۖۚۤۗ۠۠ۖۖۥۖۘۢۗۜۘۙۚۜۖۦۚۢ۬ۜۢ۬ۧۜۚۤۜ";
                    break;
                case 163724952:
                    sb.append(this.Path);
                    str = "۬ۖۡ۠ۛ۠ۢۖۚۘۡۘۤۙۜۦۨ۠ۖۥۤۦۧ۬۠۠ۤۥۜۘ۬ۘ۠ۙۤۚۡۛۨۥۦۚۧۦۤ۠ۙۙ";
                    break;
                case 253758163:
                    sb.append("GameSwitchInfo{Id='");
                    str = "ۙ۫۟ۥۛۙۗ۬۫۟۠ۖۘۤۗۘۘۘ۬ۡۘۜۤۨۨۜ۫ۖ۫ۦ۠ۗۜۘ";
                    break;
                case 479933985:
                    sb.append(", Type='");
                    str = "ۗ۟ۜۘۡۜۘۢۛۘ۬۫ۜۥۖۘۗۙۜۧۘۛۧۜۘۛ۬ۦۘۡ۠۬ۗۘ۠۫ۘۤۗۦۘۧۧۥۘ۫ۚۢۡۥۖۘ";
                    break;
                case 1848166522:
                    sb.append('\'');
                    str = "ۥۤۘۘۡۤۨۘۙۤۡۘ۫۟ۦۡۖۛۥۚ۠ۨۤۚۘۧۖ۬ۚۜۘ۠ۛۘۘۛۥ۬ۜۜۖ۬ۚۗۢۦۙ";
                    break;
            }
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        String str = "ۤ۠ۨۘۨۜۢۙۚۗۨۛۖۘۦۛۢۙۛۖۘۦۖۡۧ۟ۛۜ۬ۙۗۛۜۘۢۦۜۙۦۥۧۤۦۘۗۨۙ";
        while (true) {
            switch ((((str.hashCode() ^ 551) ^ 374) ^ 906) ^ 975741449) {
                case -1569800409:
                    parcel.writeString(this.Path);
                    str = "ۖۘۙۧۡۚ۫ۧۡۧۡۖۘۢ۟۟ۛۦ۫ۦۧ۫ۛۢۨۗ۟ۗۧۜۛۢۖۙۖۡۡۘ۬ۙ۬ۖ۟ۥۘ۠ۙۙۢۛۘۛ۠ۖۘ۬ۖۚ";
                    break;
                case -884460068:
                    parcel.writeString(this.Id);
                    str = "ۨۖۜۤۢۖۘۥ۫ۘۘۚۦۡۤۡۤۨۛۢۙۚۘۘۜۙۛ۫۟ۦۛۦ۟ۢ۬۬ۘۛۥۚۖۜۘۦ۫ۦ";
                    break;
                case 151883239:
                    parcel.writeString(this.Type);
                    str = "۠ۖۨۥۛۚۛ۠ۨۡ۫ۖۘۚۛۘۢۦۨۘ۠ۚ۠ۦ۫۬ۢۘۢۗۖ۠۠ۢۤ۬ۧۧۧۚۙۦۚۚ۬ۡۤ۬۠";
                    break;
                case 212367137:
                    parcel.writeString(this.Name);
                    str = "۠۫ۧۨۖۘۘۦۦۥۘۚۧۡۘۢۤۚۖۛۦ۫ۡۖۘ۠۠ۛۖ۠ۘۘۘۚۚ";
                    break;
                case 1525737880:
                    str = "۬ۡۦۘۘۙۥۘ۟۫ۦۗۖۗۚۦ۠ۨۦۘۘۙۘۚۘۥۘ۠ۜۦ۬ۗۢ";
                    break;
                case 1658586324:
                    str = "ۡۧ۟۫ۧۜۘ۠۬ۖۘۡۧ۟ۡۥۨۘۥ۠ۛۥۦۦۘۗۥۘۘۖۖۨۖۢ۬ۤۘۨۡۜۥۘۖۙ۬ۥ۫ۨۘ۠ۙۘۗۜۦۘ";
                    break;
                case 1726196900:
                    str = "ۜۡ۠ۨ۠۟ۤ۬ۥۘ۬ۧۦۘۙۧۧۨۢۗۗۥۢ۠۫ۘۤ۠۠ۤۧۡۤۖ۫ۥۘۡۧۦ۬ۢۗۨۜۨۘ";
                    break;
                case 2106391456:
                    return;
            }
        }
    }
}
