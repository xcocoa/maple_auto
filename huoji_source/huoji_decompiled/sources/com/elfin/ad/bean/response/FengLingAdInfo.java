package com.elfin.ad.bean.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.anythink.basead.ui.GuideToClickView;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import java.util.List;
import z2.d8;
import z2.me;

/* JADX INFO: loaded from: classes2.dex */
public class FengLingAdInfo implements Parcelable {
    public static final Parcelable.Creator<FengLingAdInfo> CREATOR;
    private int actionName;
    private int adId;
    private String adPlatformIcon;
    private int adPlatformId;
    private String clickUrl;
    private int creativeType;
    private int drawType;
    private int height;
    private OooO0O0 imgs;
    private int rating;
    private String title;
    private OooO0OO webTracks;
    private int width;

    public class OooO00o implements Parcelable.Creator<FengLingAdInfo> {
        public FengLingAdInfo OooO00o(Parcel parcel) {
            String str = "۬ۨۢ۫ۥۧۧۢۛۗۥۗ۟ۤ۠ۧۨۜۜۘۧۘۡۨۨۛۢ۟ۛۗۨۚۥ۫۟ۖ۫۠ۚۛۢ";
            while (true) {
                switch ((((str.hashCode() ^ 338) ^ 158) ^ 824) ^ 1683066147) {
                    case -1644962246:
                        str = "۫ۦۥۚۙۤۤۗۜۗۙۡۘ۟ۢ۟ۢۥۦۘۛۙۥۤۡۖ۫ۚۨۜۖۛ";
                        break;
                    case -353258797:
                        str = "ۛۦ۫۫ۥۘ۟ۖۨۘۖ۬ۢ۟ۡۨۘۥ۠ۜۘۗۖۗ۟ۤۙۛ۬ۨۘۨۘۖۚۡۨۛ۟ۖۘۛۤ۫ۛۙۤۘۢ۬۠۟ۗ۬ۖۦۘۛۖ۬";
                        break;
                    case 560275546:
                        return new FengLingAdInfo(parcel);
                }
            }
        }

        public FengLingAdInfo[] OooO0O0(int i) {
            String str = "ۥۨ۬ۨ۠ۘۘۜۨۧۖۗۗۡۧۜۦ۠ۨۖۢۤ۬ۦۘۚۦۡۘۨ۬ۨۘۜ۬۬ۨۤۘۘ";
            while (true) {
                switch ((((str.hashCode() ^ 931) ^ 375) ^ 573) ^ (-258600148)) {
                    case -1719927192:
                        str = "ۜۡۖۘۧۜۧۘۧۢ۠ۡۢۜ۬ۡۙۢۙۦۘۥۜ۟۠ۨۜۤۜۧۙۘ۫";
                        break;
                    case -71841406:
                        str = "ۖۚۥۘۗۖۙ۫۫ۖۘۛ۬ۗ۠۠ۖۥۘۜۘۛۢۦۘ۬ۘۙۢۚۜۘ۟ۛۡۢۙۡۘۚۨۘۧۨۧۘۗۨۜ۟ۖۨۘۧۡۘ۫ۛۤۢۢۦۘ";
                        break;
                    case 744499734:
                        return new FengLingAdInfo[i];
                }
            }
        }

        @Override // android.os.Parcelable.Creator
        public /* bridge */ /* synthetic */ FengLingAdInfo createFromParcel(Parcel parcel) {
            String str = "۫۬ۛ۫۠ۚۙۖۘۘۦۙ۬ۘۜۘۗۥۥۘۛۢ۬ۦۛۜۘۥۧ۬ۛۙۙ";
            while (true) {
                switch ((((str.hashCode() ^ 255) ^ 150) ^ 466) ^ 2042775749) {
                    case -1441001041:
                        str = "ۢۗۡۘۗۢۙ۬ۜ۠ۙ۬ۘۡ۫ۖ۠۫ۡۘ۟ۢۨۘۛۢۡۘۖۥۙ۟ۧۥۤۜۘۢۤۘۗۥۦۘۚ۠ۦۘۖ۟۬۟ۢۜۘ۟ۛۥۘ۟۠ۦ";
                        break;
                    case 305890685:
                        str = "ۤ۠ۡۙۡ۫ۘۨۦۘۘۖۗۤۙۦۚ۠ۡۦۨۚۤۥۤۖۖۘۥۛۜۘۦۚۡۡۢۦۘۖۤۖۘۥۦۧۘۛۜ۫ۛۨ";
                        break;
                    case 716443907:
                        return OooO00o(parcel);
                }
            }
        }

        @Override // android.os.Parcelable.Creator
        public /* bridge */ /* synthetic */ FengLingAdInfo[] newArray(int i) {
            String str = "۟ۨۘۘۖ۟ۜۢۢ۟ۛۨۡۘۤ۬ۖ۬ۖۤۨ۬ۦۘۨ۠ۧۗۢۚۖۧۤ";
            while (true) {
                switch ((((str.hashCode() ^ 560) ^ 485) ^ 565) ^ (-1364259622)) {
                    case 599590895:
                        return OooO0O0(i);
                    case 681243299:
                        str = "۠ۤۨۘۛۘ۠ۛ۫۠۠ۧۦۖ۫ۖۤۢ۠۟ۚۡۗۜۢ۫ۢۤ۠ۡۦۘ۠۬ۢۧۖۧۘۖۘۨۙ۠ۨۗۛۛۡۦۘۘ";
                        break;
                    case 2071966466:
                        str = "ۢۜۡۖۘ۫۫ۚۦۜ۬ۜۘۛۢۛ۠ۗۦۛۡۡۘۖۜۤۚۗۜۘ۫ۥۚۜۚ۟۬ۗۛۦۢۖۨۖۜۘۨۥ۬ۗۜۚ";
                        break;
                }
            }
        }
    }

    public class OooO0O0 {
        private int OooO00o;
        private int OooO0O0;
        private String OooO0OO;
        public final FengLingAdInfo OooO0Oo;

        public OooO0O0(FengLingAdInfo fengLingAdInfo) {
            this.OooO0Oo = fengLingAdInfo;
        }

        public int OooO00o() {
            String str = "ۨۧۥۨۡۤۡۦۖۗ۟ۚۧۗۖۘ۠ۙ۟ۦ۫ۙۖۦۘۘۢۨۘۜۗۦۘۦۘ۫ۥ۠ۘۘ";
            while (true) {
                switch ((((str.hashCode() ^ 747) ^ 84) ^ 320) ^ 1787213638) {
                    case -1599410318:
                        str = "ۢ۟ۨۘۜۜۥۧۥ۠۬۟ۨۘ۬ۡۚۡۗۖۦۨۖۙۤۥۛۜۦۘۤۚۡۘ۠ۧۦۛ۟ۡۘ۬۬ۦۜۢۡۥۥۦۨۜۘۨۧۡۘۗ۫ۘ";
                        break;
                    case 389227670:
                        return this.OooO00o;
                }
            }
        }

        public String OooO0O0() {
            String str = "۫ۖۗۢۘۡۢۜ۬ۛۚۘۘۥۦۚۛۜۡۤۛۡۘۢۖۦۘ۬۫۟ۤۨۛۦۘۘ۫ۚۥ";
            while (true) {
                switch ((((str.hashCode() ^ 782) ^ 375) ^ 79) ^ 1895248203) {
                    case 659347025:
                        return this.OooO0OO;
                    case 971990729:
                        str = "ۙ۟ۜۘۧۧۜۗ۠ۘۧۨۥۗۜۢۤۘۢۙۛ۫ۘ۬۠ۦۧۥۡۙۥ";
                        break;
                }
            }
        }

        public int OooO0OO() {
            String str = "ۥۜ۬ۜۡ۟ۧ۠۠ۘۧۜۘۙۜۦۘۗۛۗۧۧۙۦۚ۠ۖۖ۫ۜۜۢۧۧۚۦۛۛ";
            while (true) {
                switch ((((str.hashCode() ^ UiMessage.CommandToUi.Command_Type.SET_FONT_VALUE) ^ 16) ^ d8.OooOOo) ^ (-654560621)) {
                    case -1465036770:
                        return this.OooO0O0;
                    case 994508969:
                        str = "ۦۙۦۢ۠ۘۙۨۘۨۚۡۡ۟ۗۢۡۡۗۨۨۥۚۘۘۗۙۦۥۧ";
                        break;
                }
            }
        }

        public void OooO0Oo(int i) {
            String str = "ۤۜۨۘ۠ۦۥۘۧۛۥ۠ۡۘۘ۫۠۠ۘۙۢۤ۬۫۠ۧ۫ۗۡۜۘ۫ۗۘۘۘ۟ۡۘۛۦۧۘۨۜ۠ۘۚۖ";
            while (true) {
                switch ((((str.hashCode() ^ 426) ^ 253) ^ UiMessage.CommandToUi.Command_Type.FW_SET_LEFT_VALUE) ^ 711504864) {
                    case -2127235526:
                        this.OooO00o = i;
                        str = "ۗۙۛۥۘۙۘۚۢۛ۠ۜۘۢۖۥۘۤۚۘۥۛۙۖ۫ۤۦ۟۠ۖۛۡۘۢۚۦ۬ۜۡۘۧۖۘۤۚۡ";
                        break;
                    case -1639006965:
                        str = "ۢۡۨۘۘ۟ۜۘۧۙۨۖۙۛۧۡۛۛ۫ۥۗۦۛۖۨ۫ۤۘۚۥۖۧ۠ۜۥۘۦۜ۠ۛۥۘۘ";
                        break;
                    case 281147920:
                        return;
                    case 1417332439:
                        str = "ۤۗ۫ۖۥۙۚۙۢۖ۬ۗۤۖۢۧۚۧۨۤۚۗ۬ۜۚۖۖۧۦۥۘۜۨۧۘۜۘۧۡۗۢۨۜۨ۟ۤۙۚ";
                        break;
                }
            }
        }

        public void OooO0o(int i) {
            String str = "۬ۜۧۘ۟ۜۧۘۨ۟ۢۤۥۤۨۡۜۘۨ۠ۨۜۜۤ۟۬ۜۜۖۙ۬ۥۙۙۜۛ۫ۥ";
            while (true) {
                switch ((((str.hashCode() ^ 950) ^ 846) ^ 984) ^ (-530309570)) {
                    case -1251550324:
                        str = "ۗۢ۠ۙۨۢ۫۠ۨۘۙۧ۠ۨ۫ۜۙۦ۬۟ۙۦۨۡۘۦۗۚۖۡۘۘۖ۬ۢۛۗۗۢۖ۬ۛۚ۫ۘۧۨۘۗۛۡۘ";
                        break;
                    case -888338496:
                        return;
                    case -570935169:
                        this.OooO0O0 = i;
                        str = "ۗۦۘۘ۫۠۬ۤۖۘۜۗۤۡۤۤۦۙ۬ۥۛ۠ۗ۫۟ۖۘۤۘۘ";
                        break;
                    case -410872297:
                        str = "ۧۛۡۘۥۗۦۢۚۦۘۚۤ۬ۛ۬ۘۘۗ۟ۛ۠ۛۦۨۥۖۥۥۧۘۖۤۡۤۚۦ۟ۢۦۘۡۡۨۜ۬ۧۤۢۢۖۧ۠ۥۥ۟ۘۘۢ";
                        break;
                }
            }
        }

        public void OooO0o0(String str) {
            String str2 = "ۚۢۖ۬ۜ۬۟ۤۢۢۨۖۘۙۦۜۘۚ۟ۥۘۜ۟ۚ۬ۨۨۗۤ۟ۛۗۖۦۖۜ۬ۜۧ۬ۖۢۚۜۘۙۛۘۡۦۗۛۚۦ۫۟ۖۘ";
            while (true) {
                switch ((((str2.hashCode() ^ UiMessage.CommandToUi.Command_Type.FW_SET_LEFT_VALUE) ^ 856) ^ 800) ^ 1405063771) {
                    case -1743063396:
                        str2 = "ۘۘۙۗۙۦۙۥۗۜۘۥۤۤۦۜۚۡۧۡ۟۟ۡۘۙۧۚۖۙۦۗ۬۫ۢۗۨ";
                        break;
                    case -796467392:
                        str2 = "ۛ۬ۘۘۧۥۖۗۤۥۘۤۧ۠ۙۥۘۦۤۘۢۛۡۘۥۙۦۘۚ۠ۡۥ۟ۨۘۙ۫ۛ۬ۖۜۘ۬ۤۚ۫ۖۨ";
                        break;
                    case 349590920:
                        this.OooO0OO = str;
                        str2 = "۠ۦۜۘ۟ۢۧۤۧۥ۫ۡ۠ۜۧۦۥ۬۠ۗۨۘۘۢۜۧۘۧۡۛۘۙۙۥۢۥۢۚۖۘۜۥۛۡۥ۬";
                        break;
                    case 475150174:
                        return;
                }
            }
        }
    }

    public class OooO0OO {
        private int OooO00o;
        private List<String> OooO0O0;
        private List<String> OooO0OO;
        private List<String> OooO0Oo;
        public final FengLingAdInfo OooO0o;
        private List<String> OooO0o0;

        public OooO0OO(FengLingAdInfo fengLingAdInfo) {
            this.OooO0o = fengLingAdInfo;
        }

        public void OooO(List<String> list) {
            String str = "ۗۚۘۖۙۚۚۜۖۘۖ۫۟ۤۖۖۘ۟ۛ۬۠ۛۡۤۚۗۙ۟ۢۤۥۜۘ";
            while (true) {
                switch ((((str.hashCode() ^ 712) ^ 499) ^ GuideToClickView.a.f) ^ (-1139665073)) {
                    case -507726648:
                        str = "۠ۙۜۢۧ۠ۛۡۘۨۨۛۘۜ۫۫ۗ۟ۜۖۘۛۧۙۗۘ۫ۥۤۘۢۘۢۡۘۜۘ";
                        break;
                    case -341989222:
                        str = "۫ۜۡۖۛۛ۫ۤۦۘۚۗ۠ۙۦۖۜۧۨۘۤ۟۫ۥۡۥۘۤۥ۫ۜۛۘۖۖۤ۟۟۟ۙ۬ۥۛۦۦ";
                        break;
                    case 286250030:
                        this.OooO0o0 = list;
                        str = "ۧۛۗ۠ۢۛ۠ۙۜۤۡۜۘ۠ۛۦۘۢۥۘۖۡۧۧ۠ۗۜۘ۟ۦۘۘۢۚۖۘۦۡۦۘۡ۫ۨ۠ۙۨۘۗ۬ۡۛۥۤ";
                        break;
                    case 1756403721:
                        return;
                }
            }
        }

        public List<String> OooO00o() {
            String str = "ۤۦۜۘۙ۬ۖۘۧۚۚۥۨۘۗ۬ۡ۟ۨۜۘۚۡۛ۫ۡ۠ۙۥ۫۬ۡۛ";
            while (true) {
                switch ((((str.hashCode() ^ 118) ^ 742) ^ 775) ^ (-1764611925)) {
                    case -1612114255:
                        str = "۠ۤۡ۠ۗ۠ۙۢۢۖۡ۟ۤ۫ۨۘۡۤۦۘۥۤۚ۠ۢ۟ۚۢۦۡۗۥۘۦۗۨۙۦۛۗۗ۠ۘۦۚۨ۟۬ۤۚ";
                        break;
                    case 1881171626:
                        return this.OooO0OO;
                }
            }
        }

        public List<String> OooO0O0() {
            String str = "۟۫ۘۘۛۘۚۗۜۦۜۨۘ۟ۤ۠۟۫ۧۙۥۥۚۖۥۘۢۡۡۧ۟ۖۘۙۧۡ۟۠ۘۖۡۦۘ۠ۤۜۘ";
            while (true) {
                switch ((((str.hashCode() ^ 778) ^ 881) ^ 466) ^ (-1600753332)) {
                    case -377937292:
                        str = "۫۬ۚ۬ۢۥۖۜ۫ۘۖۖۢۡ۠ۢۖ۠۫۬ۘۚۤۙۘۖۡۘۤۢۛۧۡ۟ۘۜۤ";
                        break;
                    case 623634258:
                        return this.OooO0Oo;
                }
            }
        }

        public List<String> OooO0OO() {
            String str = "ۨۖۖۙ۫ۜۡۚۖۤۦۗۜ۬ۧۧۜۨ۬ۘۘ۫ۛۡۛۖۙۛ۫ۥۘۙۗۨۘۥۜۦۘ۬ۡۛۜۡۖ۟۫۟ۗۖۘۤ۬۟ۗۛ";
            while (true) {
                switch ((((str.hashCode() ^ 679) ^ 194) ^ 963) ^ (-594813927)) {
                    case 996710471:
                        return this.OooO0O0;
                    case 1574721426:
                        str = "ۧۢ۬ۢۗۙۥۗ۬ۚۢۨۘۥۡ۬ۨ۬ۡ۫ۗۜۤۜۥۘۤۢۘۚۚۖۚ۟ۛۗۚۤ۬ۥۘ۫ۧۥۘ";
                        break;
                }
            }
        }

        public List<String> OooO0Oo() {
            String str = "ۙ۫ۡۚۧۥۘۢۘۘ۠ۥۚۜ۠ۤ۬ۥۛۘۚۘۛۦۜۘۙۥۗۢ۠ۛۨۘۘۙۙ۫ۦۜۨۘۡۘۙۖۧۗۘ۠ۢ۠ۧۨۗ۫ۘ";
            while (true) {
                switch ((((str.hashCode() ^ 631) ^ 588) ^ 529) ^ (-331252482)) {
                    case -146159343:
                        str = "۬۬ۡۤۤۘۘ۠ۤۖ۠ۛۗۛ۟ۜۡۙۤۡۢۤ۠۠ۙۜ۟۬ۚۗ۫۠ۘۤۛ۫ۧۧۘۨۘۘۨ";
                        break;
                    case 2001299234:
                        return this.OooO0o0;
                }
            }
        }

        public void OooO0o(List<String> list) {
            String str = "ۧۗۡۘۙۛ۠ۦ۠۬ۙ۠ۧ۫ۤۛ۟ۦۥۘۖۜ۠ۗ۬ۨۘۧۘۨۘۢۚۢ۟ۜ۟ۦۖۧۛۢۘۛۥۘ";
            while (true) {
                switch ((((str.hashCode() ^ 720) ^ 38) ^ 473) ^ 1863472314) {
                    case -669045584:
                        return;
                    case 420914822:
                        str = "۬۬ۤۛۙۢۘۡۨۡۢ۠۠ۜۘۛۗۧ۫ۙۦۢ۫ۖۚۨۗۘۤۨۘ۬ۖۤۚۥ۫ۖۤۤۜ۟ۡ";
                        break;
                    case 445111755:
                        this.OooO0OO = list;
                        str = "۠ۥۗۤۜۧۙۨۧۘۢ۟ۡۜۨۚۚۨ۠ۦۤۗۙۖۘۢۥۘۘۧۛ۠ۨۤۦۛۗ۬ۥ۫ۤ۫ۗۧۙۘ۟ۙ۫ۦۘ";
                        break;
                    case 1275707610:
                        str = "ۨ۬ۧ۠ۢۥۡۖۤۛۡۛ۠ۢۡ۠ۜۨ۫ۘۛۖ۫ۛۗۛۖۘۨۨۘۘۛۡۘۡۤۘ۫ۙۧۙۘ۬۠ۜۜۜ۬ۦ";
                        break;
                }
            }
        }

        public int OooO0o0() {
            String str = "ۖۘۤۡۢۨۘۚۘۜۘۤۥ۫ۦۚۛۨۨ۠ۜ۫ۨ۠ۤ۫ۚ۠۟ۢۗۙۖۜۥۘۙ۬ۨۗۨۘۜۛۘۘ";
            while (true) {
                switch ((((str.hashCode() ^ 785) ^ 245) ^ 497) ^ (-2053033046)) {
                    case -2053444878:
                        return this.OooO00o;
                    case -1761834394:
                        str = "ۦ۫ۖۤۦۥۘۡۘۧۨۘۥۜۢ۫ۛۢۖۛۗۡۙۥ۫ۗۡۧۥۢۖۘ";
                        break;
                }
            }
        }

        public void OooO0oO(List<String> list) {
            String str = "ۘۖ۟ۡۖ۫۫ۙۦۘ۠ۚۧۦۤۥۧ۠ۧ۠ۛۗۗۨۢۡۧۢ۠ۛۢ۠ۛۜۡۘ";
            while (true) {
                switch ((((str.hashCode() ^ 325) ^ 88) ^ 271) ^ 1844852275) {
                    case -757405828:
                        this.OooO0Oo = list;
                        str = "ۤ۬ۢۦ۫۟ۚۨۧۘۚۛ۟ۚۜ۫۠ۢۚۖۖۥۘۤۧۡۢۨۨۙۘ۠ۖۧۘۘۡۦ۫";
                        break;
                    case 47222392:
                        str = "ۖۖۧۘۙۦ۫ۨ۠ۙ۬ۖۥۘۨۘۤۘۙۜۘۧۡۦ۟ۧۖۨۘۘۨ۟ۡۘۘ۟ۛۚۡۧۘۧۥ۟۬۬ۙۥۜۛ۫ۨۘ";
                        break;
                    case 938977720:
                        return;
                    case 1295087110:
                        str = "ۧ۠ۧۦۥۥۘۜۙۦۘ۫ۖۦۦۗۨۦۖۧۧ۫ۖۤۗ۬ۜۧ۟ۖۧۘۧۘۧۢ۠ۧ۫ۛ۫ۘ۠ۥۘ";
                        break;
                }
            }
        }

        public void OooO0oo(List<String> list) {
            String str = "۠۠ۛۦۨ۬ۢۤۗۙۧۦۗۧۘۘ۟۬ۗۥۗۘۘ۫ۜۘۘۨۖ۠ۥۜۖۘۥۘۘ۠۟ۤۖۥۨۘۨۡۘۘۥۤۥۘۘۜۥ";
            while (true) {
                switch ((((str.hashCode() ^ UiMessage.CommandToUi.Command_Type.GET_BACKCOLOR_VALUE) ^ 200) ^ 920) ^ (-2133590692)) {
                    case -2068459855:
                        str = "ۚۙۚ۟ۢ۠ۦۘ۫ۛۙ۟ۨۧۖۘ۫ۥۨۘۚۨۤۙۡۡۗۥۜۘۖۧۨۘ۫ۡۗۧۤۘۗۧۜۘۚۜۦۗۢۛۦۚۘۜۖ۠ۢۦۧ";
                        break;
                    case -649247051:
                        this.OooO0O0 = list;
                        str = "ۡۙۡۘۚ۠۟ۜۙۜۘۤ۠ۨۘۛۛۨ۬ۛۚۖۜۘۘۨ۫۬ۜۤۥۦۚۛۦۡۙۗۖۛۘۥۘۡۢۥۘۥۙۖۘۢۦۤ";
                        break;
                    case 886666109:
                        return;
                    case 1523024782:
                        str = "ۚ۠ۖۘۖۢۡۧ۠۟۬ۧۡۙۢۥ۠ۦۡۘۧ۠ۧۙۨۦۘۨۦۤۢۚۛ۟ۧۖ۠ۗۤ۫ۜۡ۫ۢ";
                        break;
                }
            }
        }

        public void OooOO0(int i) {
            String str = "ۘۤۡ۟ۜۨۢۦ۫ۜۖۛۨۙۦۦۛۥ۫ۘۖۧۚۜ۠ۡۛۡۚۦ";
            while (true) {
                switch ((((str.hashCode() ^ 293) ^ 944) ^ 783) ^ (-257808220)) {
                    case -2114568195:
                        return;
                    case -1185918670:
                        str = "ۜۚۘۢۧۤۘۚۤۚۤۢۜۦ۟ۡۘۖۨۛۧ۟ۗ۟ۛۢۚ۟ۥۘۚۢ۟ۦۖۜ۬۬ۗۨۙۜۥ۟ۧ۫۫ۨ";
                        break;
                    case 130125056:
                        str = "ۙۜۘ۬ۖۗۚۜۚۡۚ۫۟ۥ۫ۦۘ۟ۤۡۘ۬ۡۥۘۤۘۘ۫ۗۜۘۙۤۘۧۘۡۥ۠ۦۙۧۦۚ۠ۦۚۤۥۘۗۘۢۛۙۡ";
                        break;
                    case 997591397:
                        this.OooO00o = i;
                        str = "ۖۦۥۘ۫ۚۦۥۜۨۘۘۢۘ۟ۢۢ۟۬ۖۡ۠ۘۘۚۗۛۢۖۛۢۙۦۘۗۨۤۚ۫۠۟ۗۖۘ۫ۚۤۤۨۦۨ۠۬";
                        break;
                }
            }
        }
    }

    static {
        String str = "ۗۛۡۦۙۛۤۛ۫ۛ۟ۦۘۨۤۡۘ۠ۗۨۘۗ۟ۛۥۚۚۤۡ۟۬ۥۦۜۧۦۘ۠ۚۦۘۡۤۚ۠۟۟ۖۥۜۘۜۖۡۘۨ۠ۚۧۖۖ";
        while (true) {
            switch ((((str.hashCode() ^ me.o0000O0) ^ 427) ^ 42) ^ (-1529274718)) {
                case 1168081573:
                    return;
                case 1552864895:
                    CREATOR = new OooO00o();
                    str = "ۘۨۜۨۛۢۖۡۜ۠ۗۜۘ۟ۜۘۥ۟ۚ۬ۜۘۜ۠ۨۗۖۧۘۖۨۗ";
                    break;
            }
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
        String str = "ۦۛۙۗۢۗۖۨۘۢۦۜۘۗۥۨۜۨ۠ۗۦۨۗۜۘ۬ۦۡۘۙۢۡۘۘۗۡۗۜۘۛۨۘۖۨۧۧۡۢۜۘۘۧۗ۫ۢۥۢ";
        while (true) {
            switch ((((str.hashCode() ^ 246) ^ 618) ^ 331) ^ 42658485) {
                case -12153548:
                    str = "ۦۗۡۘۤۙۦۨ۬ۛۚۗۨۘۖۦ۫۟ۧ۟۫ۜ۬۫ۢۤۧۙۖۚۖۘۗۜۗۢۖۗ";
                    break;
                case 86247664:
                    return 0;
            }
        }
    }

    public int getActionName() {
        String str = "۠۟ۘۘۢۗ۫ۚۨۖۘۡۧۘۘ۟ۡۚۜۢ۫ۡۦۘۗ۟ۡۘۚۖ۬ۧۡۘۥۧۡ۬ۜۡۘۖۧۘۘۖ۫ۥۘ۬ۢۢۡۨۧ";
        while (true) {
            switch ((((str.hashCode() ^ 136) ^ 439) ^ 228) ^ 821412612) {
                case -600450190:
                    str = "ۛۖۨۘۧۗ۬ۚۦۢۚۦۚۗۦۙۨۨ۟ۚ۠ۘۘۧۙۧۙۛۙۨۤ۟ۚۙ۠۠۠ۖۘۥۢۖ۫۟ۙۥۜۘۢۦ۬ۛ۬ۜۖۡۘۘ";
                    break;
                case -304991966:
                    return this.actionName;
            }
        }
    }

    public int getAdId() {
        String str = "ۗ۠۫ۢۖۘ۟۫ۖۘۚ۬ۨۘۚۢ۫ۛۙۚ۫۬ۜۘ۬ۖۨۘ۟۠ۗۢۚۤ۫ۢۦۘۚ۬ۨۘ۠ۜۦۘۤۜۥ";
        while (true) {
            switch ((((str.hashCode() ^ 812) ^ 340) ^ 290) ^ (-1483056551)) {
                case -1226207268:
                    return this.adId;
                case 1826442079:
                    str = "ۧۚۖۘۢ۠۟ۤۧۙ۠ۖۥۥۘۚۨۢۨۘۥۨۦۘ۠۬ۡۥۛۢۨۖۘۡ۠۟ۦۡۚۡۗ۫ۗ۟۫";
                    break;
            }
        }
    }

    public String getAdPlatformIcon() {
        String str = "ۘۤۘۚۡۤ۟ۘۥۚۘۛ۬ۦۜۘۚۘۤۡ۫۫ۘۜۤۢ۬ۦۘۖۡۡۘۨۗۤۖۡۡۘۚ۫ۤۦۙۛۨ۟ۥۘۖ۟ۨ";
        while (true) {
            switch ((((str.hashCode() ^ 271) ^ 330) ^ 602) ^ (-2013017951)) {
                case -908332884:
                    return this.adPlatformIcon;
                case 277607562:
                    str = "ۛ۟ۙۥۨۘۘۗۘۦ۬۬ۖۘۜ۬ۦۘۙۘۘۗۧ۠ۤۦۤۧۚ۫ۗۤ۫ۨۦۛۨ۫ۦۘ";
                    break;
            }
        }
    }

    public int getAdPlatformId() {
        String str = "ۜ۫ۨۧۛۥۢۘ۟ۡ۠ۗۙۙۘۦ۠۫ۜۢۙۢۥۘۨ۬۟۫ۤ۟ۡۚۜ۠ۚۦۘ";
        while (true) {
            switch ((((str.hashCode() ^ 591) ^ 579) ^ 549) ^ (-464245)) {
                case -1864231540:
                    return this.adPlatformId;
                case 294073568:
                    str = "۫ۨ۠ۚ۟ۡۧۦۛۖۨۜ۟۠ۢۥۥ۫ۥۛۥۖۢۜۡۙۜ۠۠۠";
                    break;
            }
        }
    }

    public String getClickUrl() {
        String str = "ۧ۟ۦۙۗ۠ۢۗ۟ۙۦ۠ۥۚۗۧ۟ۛۚ۬ۜۨ۫ۡ۠ۦ۬ۢۦۗۧ۬۟ۗۦ۫ۡۖۧۘۜ۫ۙ۟ۢۡۗ۠ۙۜۦۚ۟ۛۡ";
        while (true) {
            switch ((((str.hashCode() ^ 139) ^ 228) ^ 661) ^ 1952783490) {
                case -44434503:
                    return this.clickUrl;
                case 1340649010:
                    str = "۫ۨۤۚۧۛۚۡۧۘۘۥۧۦۡۥۘ۬ۙۚۨۨۛ۠ۖۡۘۙۖ۬ۤ۠ۨ";
                    break;
            }
        }
    }

    public int getCreativeType() {
        String str = "ۗ۬ۖۙ۬ۖۗۘۥۗۦ۟۬ۗۘۖۘۡۡۚۜۤۗ۫ۗۘۨۘۚۦۖۗۨۥۘ۠ۦۘ۠ۘۜۡۨۥ";
        while (true) {
            switch ((((str.hashCode() ^ 688) ^ 574) ^ 588) ^ (-1685186884)) {
                case -1635038968:
                    return this.creativeType;
                case 48989210:
                    str = "۟۫ۛۗۚۜۨۡۡۘۥۧۖ۟ۖۦ۠ۘۘۧۦۖۦۤۙۗۚۜۘۘ۫ۚۤۘۘۡۤۜ۬۟ۘۘۛۥۘۘۚۛ۟ۜۚۧ";
                    break;
            }
        }
    }

    public int getDrawType() {
        String str = "ۙۡۡۘۥۘۦۘ۠ۛۧۖۘۢۢۜۜۢ۠ۢ۟ۡۘۛۛۦۙۡ۟۠ۗۖ";
        while (true) {
            switch ((((str.hashCode() ^ 10) ^ 565) ^ 241) ^ (-1257138858)) {
                case -1756733576:
                    return this.drawType;
                case -497627190:
                    str = "ۥۤ۠ۘ۬۠ۥۦ۠ۡۖ۫ۖۗۦۘۦۡۙۚۖۙۢۡۘۗۗۖۜۧۜ";
                    break;
            }
        }
    }

    public int getHeight() {
        String str = "ۦۧۡۧۗۥۘۙۦۜۗۥۚۙۚۦۗ۟ۨۦۙۨۘۛۜۜۘ۠ۧۡۛۙۤۢ۬ۘۘۥۢۤ";
        while (true) {
            switch ((((str.hashCode() ^ 837) ^ 535) ^ 158) ^ 1520657445) {
                case -1088704129:
                    str = "ۥۛ۟ۗ۬ۘ۠ۘۖ۬ۙۜۘۖۨ۟۬ۡۥۘۙۘۜۘۙۙۘۘۗۢۜۘ۠ۙۢۨ۠ۦۙۥۥۤۥۢۧۦۘ";
                    break;
                case 691221707:
                    return this.height;
            }
        }
    }

    public OooO0O0 getImgs() {
        String str = "ۥۦۖۘۨۧ۟۫۟۬ۚۛۙ۠ۜۘۤۙۘ۫ۘ۠ۧ۟ۧۙۖۖۘۜۚۘۗۙۤۧۜۧۘ";
        while (true) {
            switch ((((str.hashCode() ^ 732) ^ 117) ^ 892) ^ 983261386) {
                case -810740174:
                    str = "ۥۚۥۙ۬ۥۜۜۨۘۚۛۡۘۗۦۦۘۘۙۜۘ۠ۛۨۘ۠ۥۧۘۜۚۧ۠ۧۘ";
                    break;
                case -590312274:
                    return this.imgs;
            }
        }
    }

    public int getRating() {
        String str = "ۚۙۨۘۢۘۥۘۤۜۖۘۥۨۙۢ۟ۨۥۖۡۘۚ۠۬۬ۘۥۘۙۘۚۥ۠ۛۙۧ۫ۙۗۨۙۧۥ۟ۛۜۢ۟ۦۘۗۡۡۘۗۗۨ۟ۨۧۘ";
        while (true) {
            switch ((((str.hashCode() ^ 726) ^ 421) ^ 242) ^ (-185778980)) {
                case 238911858:
                    return this.rating;
                case 752858716:
                    str = "ۢۜۧۘۥۘۦۘۙۖۜۧ۠ۤۢۥۡۘۢۥۘۢۙۙۨۚۥۘۧۙۨۘۨۧۘ";
                    break;
            }
        }
    }

    public String getTitle() {
        String str = "ۤۢۡۜۖۧۦۢۚ۫۫ۘۧۢ۟ۖۚۗ۟ۚۥۘۛ۫ۘ۠ۘ۟۠۠ۘۗۚۡۘۘۢۡۗۡ۬ۚۢۜۘۡۙۨ";
        while (true) {
            switch ((((str.hashCode() ^ 918) ^ 356) ^ 119) ^ 2023903675) {
                case -2071134639:
                    str = "ۧۥۚۤۨۧۘۜۗۘۘۥۧۡۘ۟ۚۥ۬ۥۛۖۖۗۚۖۜۤ۠۠۟ۨۨۘۧۡۖۤۘۜۘ";
                    break;
                case 881089323:
                    return this.title;
            }
        }
    }

    public OooO0OO getWebTracks() {
        String str = "۫ۧۥۘۚۢۨۘ۠۬ۚۢۤۘۤ۠ۘۜۦ۠ۤ۟ۜۘۘۤۛۧۘ۫ۘ۫ۛۚۧۚۜ۫۬ۙ۬۠ۤ۠ۖ";
        while (true) {
            switch ((((str.hashCode() ^ 939) ^ 100) ^ 456) ^ (-13850326)) {
                case -279256778:
                    return this.webTracks;
                case 1501667287:
                    str = "ۚۥۙۛۖۙۛۘۘۦۜ۫۫ۚۧۨۥۡۘۧۘۧۨ۫۬۫ۧۖۛ۬۫ۨۗۖۘۡۘۡۖ۫ۖۘ۟ۡۚۤ۟ۛۥۛۖۘ";
                    break;
            }
        }
    }

    public int getWidth() {
        String str = "ۨۙ۠ۚۗۖۧ۫ۜۜۧۥۘۥۖۘۢۖۜۘۥۡۘۤۜۨۚ۠ۨۘۙۢۥۘۤۙۜۘۨ۠ۥۘ";
        while (true) {
            switch ((((str.hashCode() ^ 273) ^ 486) ^ 740) ^ (-430252342)) {
                case -1332830220:
                    str = "ۨۛۦۘۗۤۡۘۘۤۗ۬ۤۡۘۤۗۨۦۜ۫ۛۧۘۘۧ۬ۦۘۚۜ۠ۜۤ۬ۢۦ۫۫ۗ۠ۘۗۥۘۛۛۥۧۨۘ۫ۛ۫";
                    break;
                case 1834010633:
                    return this.width;
            }
        }
    }

    public void setActionName(int i) {
        String str = "۬ۨۥۘۖۢۡۘ۬ۖۧۤۨۡۘ۠۬۠۟۠ۘۘۥۤۚۘۙۜۘۦۧۖۘۗ۠ۨۗ۟ۘۘۙۤۜۘۢ۠۟ۙۙ";
        while (true) {
            switch ((((str.hashCode() ^ 365) ^ UiMessage.CommandToUi.Command_Type.GET_TITLE_TEXT_VALUE) ^ 919) ^ (-1427110151)) {
                case -1130272652:
                    str = "ۤۙۧۖۤۡۘۙۥ۟ۛۖۨۥۙۦۢۥۥۗۙ۬ۡۙۨۘۥۡۖۘۜۖۥ";
                    break;
                case -684363473:
                    str = "۫ۘ۟ۦۘۥۤۨۙۚۛ۟ۨ۠ۡۗۖۖۘۗۡۧۤۜۚۛۥ۫ۘ۠ۡۘ۟۫۠۫۫ۨۦۛۛ۬ۙ۫ۙۦۦۘۧۥ";
                    break;
                case -211819028:
                    this.actionName = i;
                    str = "۬ۦۨۡۛۢۧۚۡۘۦ۠ۥۗۥۥۛۗۨۘۥ۬ۜۘۚ۠ۧۨۥۡۘۚۗۘۘۥۡۙۘۙ۠ۧۤۡ۬ۛ۠ۜۡۘۘۗۜۘۛۤ۠ۛ۬ۖ";
                    break;
                case 879781034:
                    return;
            }
        }
    }

    public void setAdId(int i) {
        String str = "ۡ۫ۧۨۡۚۢۤۡۦۘۘۘۤۘۧۘۦۘۥۘ۬ۡۨۚ۫ۡۘ۫ۜۧۘۡۚۡۘۖۢۖ۫۟۫ۧۦۡۘۧۡۙۖ۫ۖۘۘ۬ۤ";
        while (true) {
            switch ((((str.hashCode() ^ 189) ^ 177) ^ UiMessage.CommandToUi.Command_Type.FW_ZORDER_VALUE) ^ (-1376382603)) {
                case -1833235356:
                    str = "۠ۖۘۘۜۥ۠ۚۘۨۘۘۨۘۘۙۜۧۘۥۜۚۜۚۢ۠ۨۥۛ۟ۙۨۘۘ۟۬ۢ۠ۜۗۙۙۡ۠ۛۧۢۛۚۚۘۤۡۚ۫ۜۧۦ";
                    break;
                case -1492503953:
                    return;
                case -856601825:
                    this.adId = i;
                    str = "ۡۧۡۘ۫۟ۖۘۘۦۘ۫ۧۗۨۢۢۚۥۜۡۖۙ۠ۘۘۡۛۚۜۚۨۙۧۙۙۘۨۘۥۢۢۗۥۗ۟ۘۖۘۖۨۥۘ";
                    break;
                case 1935912087:
                    str = "۠ۨۧۨۨۘۚۥۧۘ۫ۢۡۙۛۦۙۙ۟۠ۛۖۘۤۡۙۘۛۥۜۙۨۘۖۚ۠ۛۚۛ";
                    break;
            }
        }
    }

    public void setAdPlatformIcon(String str) {
        String str2 = "ۜۦ۟ۙ۬ۖۤۦۛۘۘۥۧۦۘۥ۟ۚۜۦۦۘۖۘ۟ۗۦۘ۟۠ۖۚۡۚۗۜۚۜۧۛۜۧۘۧۢۡۘۗۚۜۚۨۥۧۛ";
        while (true) {
            switch ((((str2.hashCode() ^ 622) ^ 866) ^ 128) ^ (-169030259)) {
                case -1940258638:
                    this.adPlatformIcon = str;
                    str2 = "ۨۡۡۤۨۥ۟ۦۧۙۡۚۗۗۢۛۘۡۘۙۥۜۘۗ۟۟ۛۖۥۘۤۥۜۡۘۘ۬ۨۖۥ۬ۚۚۡۘۖ۬۫ۧۧۥ";
                    break;
                case -1652533096:
                    str2 = "ۢۨۡۢۥۤۙۥۥۥ۫ۚۥۥۤ۟ۗۜۘۗۤۗۜۖۨۘۥۡۤۧۗۖۙۤۨۘۚۧۙۘۦۘۘۘۖۛ۟۬ۛۥ۟ۛ۫ۘ۬ۢۜ۠";
                    break;
                case -821867279:
                    return;
                case 1767549134:
                    str2 = "۟ۥۨۘۜۡۖۘۛ۟ۢ۬ۧ۫ۢۨۡۚۥ۬ۧۖۘۦۤۗ۬ۥۡۥۙ۫ۧۨۖۘۦۖۦۘ";
                    break;
            }
        }
    }

    public void setAdPlatformId(int i) {
        String str = "ۖۢ۠۠ۢۘ۫ۧۜۘۖۖۤۗ۫۠ۛۢۜۘۗۦۨۢۧ۠ۨ۠ۦۖ۫ۤ۠ۘۨۘۙۡۘۘۗۤۤۖۦۥۦۖ۟ۙۦ۠ۙ۟ۡۘۘ۬ۧ";
        while (true) {
            switch ((((str.hashCode() ^ 41) ^ 641) ^ 431) ^ (-1380849170)) {
                case -959389998:
                    return;
                case 1469289954:
                    this.adPlatformId = i;
                    str = "ۖۘۧۘۗۘۘ۫ۗۨۥۙۖۘۛۚۢۗۖۖۘۤۦۤۘۚۘۘ۠ۖۘۢ۫ۜۚۛۘۘ۫ۚۥۡۚۡۘۗۚۤ";
                    break;
                case 1995631974:
                    str = "۬ۢۖۘ۬ۗۜۘۘۙۤ۟ۥۦۘۗۢۜۚۤۖۥ۫۫ۧۛۡۘۦۢۚۨۡۚ۠ۜۧۘۥ۬ۗ۠ۢۙۡۧۘۘۧۚۜ۠ۥۚۖۥۘۦۚۦ";
                    break;
                case 2024357973:
                    str = "۟ۚ۟۠ۥۦۦ۬ۡۙۢۥۘۘۢۜۦۘ۬۟ۖۘ۬۠ۘۘۤۢۨۘ۠ۧۨ۠۠ۚ۫ۙۗ";
                    break;
            }
        }
    }

    public void setClickUrl(String str) {
        String str2 = "ۨۦۘۢۖۘۛ۫ۥۘ۬ۤ۠ۦۘ۟۠ۗۨۘۦۗۨۘۙۚۡۘۚۛۜ۫ۧۖۛۦۘۡۜۗۚ۫ۚۚۧۦ";
        while (true) {
            switch ((((str2.hashCode() ^ 852) ^ 321) ^ 546) ^ (-1127184817)) {
                case -1730453448:
                    str2 = "ۚۜۢۢۘۖۘۥۙۜ۟ۥۧ۬ۧۡۗۢۚۤ۠ۤۨۜۥۘۖۤۢ۬۫ۚۗۢۤ۫ۜۜۗۗۚۢۖۘۧۜۙۘۚۙۗۡۘۘۗ۠۬";
                    break;
                case -762216792:
                    str2 = "۠ۦۚۜ۫۬ۧ۬ۨۘۤ۠ۘۧۨۡۘۜۖ۬ۖ۬ۘۛۥۛ۬ۚۚۧۘ۠ۜۡۤۙۛ۟۟ۜۚۨ۟ۜۘۘۜۥۘۥ۬ۤ۬ۨۡۘۥۘۨ";
                    break;
                case 2049230821:
                    return;
                case 2080369270:
                    this.clickUrl = str;
                    str2 = "ۧۖۧۘۧۧۡۘۡۚۤۦۙۢۘۛۡ۬ۖۨ۠ۦۘۨۥۦۛۨ۫ۨۢۘۘۥۖۘۥۡۨ۬۫ۘۧ۠ۤ";
                    break;
            }
        }
    }

    public void setCreativeType(int i) {
        String str = "ۨۜۧۗۦۧ۫ۨۘ۟ۨۢۦ۬۟ۖ۫ۨۡۛۖۘ۠۬۬ۖۦۡۗۘۦ۟ۖۘۘۥۤۖ۬ۡۙۜۗۜۧۘۢۨۖۥ۟۟ۘۗۡ";
        while (true) {
            switch ((((str.hashCode() ^ 299) ^ 299) ^ 654) ^ 825579103) {
                case -1939210536:
                    this.creativeType = i;
                    str = "ۖۙۤ۫ۨۨۘۙ۟۬ۖ۠ۦۘۗ۫ۧۡ۟ۡ۫ۗۥۘ۬ۤۤۢۨۘۘۨۙۚ";
                    break;
                case 444086315:
                    str = "ۘۦۘۘۨۤۦۘۥۡۜۘ۬ۘۛۢ۠ۚۘۙۙ۟ۥۖۜۨۨۘۜۚ۬ۘۚۢۤۚۛۦۦۗۦۥۨۘ۫ۧۜ۬۟ۖۘ۫ۤۜۡ۟ۖ۫ۖ";
                    break;
                case 1944655740:
                    str = "ۘۨۧۘۗۨ۠۟ۚ۬ۗۤۗۤۗ۬ۥۧۤۦ۬ۖۗۘۥۜۨۨۘۢ۬ۖۘ۫۟ۧۛۡ۠ۢ۬ۗۘۡ۠ۡۤۦۨۤۧ۟ۧۥۘ۬ۤۡ";
                    break;
                case 2039741259:
                    return;
            }
        }
    }

    public void setDrawType(int i) {
        String str = "ۢۦۡۘۙۢۜۘۙۖۡۥۥۘۡۧ۟ۡ۫ۜۘۢۨۘۢ۟ۡۨ۫ۦۧۨۢۥۢۚۛۘۘۡۧۦۘ۠ۤۜۨۧ۬۠ۧ";
        while (true) {
            switch ((((str.hashCode() ^ 109) ^ 502) ^ 589) ^ (-1392880760)) {
                case -2055095051:
                    str = "ۢۧۚۗۘ۬ۤۢۜۘۛۤۥۘ۠ۧۧۜۚۘ۟ۤۘۨۙۘۗۙۖۥۘ";
                    break;
                case -1321579821:
                    this.drawType = i;
                    str = "ۦ۟ۚ۟۠۠۠ۜۖۜۦۢۧ۬ۘۘۦ۬ۙۗۢۡۘ۠ۗۦۘۘۡۜۤۗۧۘۨ۬ۥۥۤ";
                    break;
                case -282892040:
                    return;
                case 210327539:
                    str = "ۦۗۚ۬۠ۚۥ۠ۡۘۗۜۦۤۥۡ۬ۢۜۘۢۧۡۖۛۥۘۧۚۜۘۨۙۚۨۙۨ۫ۥۘۥۖۨۘۦ۟ۢۦۦۘۘۚ۠ۜۘ۬ۧۜۡ۫ۙ";
                    break;
            }
        }
    }

    public void setHeight(int i) {
        String str = "ۚۙۦۘۚۦۨۘۘۖۘۜۜۨۗۦ۬ۦۦۜۘۤۚۡۛ۬ۚ۟ۡ۠ۧۧۢ۟ۘۘۥۦۦۘ";
        while (true) {
            switch ((((str.hashCode() ^ 366) ^ 989) ^ 921) ^ 1973539829) {
                case -1220838163:
                    str = "ۘۖۦۘۦ۬ۖۘۘ۬ۤۤۦۜۘۜ۫ۥۘۛۛ۫ۛۥ۟ۦ۫ۖۘۙ۠ۖۘۧۚۜۘۚۨۜۘ۫ۜۧ۟ۡۚۤۤۨۘ۟ۥۗ۟ۙ۟ۘۨۧۘۦۘۖۘ";
                    break;
                case -581439399:
                    str = "۟۟ۦۙۖۦۚۦۧۡۡۥ۬۬ۦۢۡۤۛۧۨۘۘۘۖۗۖۚۢ۫۠ۦۜۡۘ۫ۤۡۚۧۛۘۙۖ";
                    break;
                case 413987967:
                    return;
                case 943090631:
                    this.height = i;
                    str = "ۤ۟۟۠ۢۦ۠ۧ۠ۘۤۤۡ۠ۨۙۡۜ۫ۥۜ۠۠ۜۥۧۘۚۡۙ";
                    break;
            }
        }
    }

    public void setImgs(OooO0O0 oooO0O0) {
        String str = "ۧۛۜۘ۬ۙۜۘۖۢۜۡۦۧۘ۬ۥۛۡۛۗۦۢۚۧۛۘۘۜۗۘۘۙۜۛ۟۠ۧۗ۟ۙ۬۠ۗۖۨۢ";
        while (true) {
            switch ((((str.hashCode() ^ 692) ^ 940) ^ 942) ^ (-1565195305)) {
                case -670909165:
                    return;
                case 104329514:
                    str = "ۙۘۡۘۗ۠ۙ۫ۙۖۘ۟ۜۜۘ۟ۜۧ۟ۨۢۛۧۦ۠۫ۛ۠ۨۦۤۧۘۘ";
                    break;
                case 1121330393:
                    this.imgs = oooO0O0;
                    str = "ۧۥۙ۟۬ۖۘۨۙۡۜۥۨۘۥۡۨۘۥ۬۫۟ۚۡۘۗۛۦۛ۬۬۬ۙۧۙۗۢ۫ۚۡۥۥۧ۠ۖ۠ۙۦۘۡۖ۫";
                    break;
                case 1243017944:
                    str = "ۗۙ۟۫ۦۢۛۧۖ۬ۨۦۖۚۤۚۤۢۢۥۢۧۧۦۘۖۤۛۙۚۜۘۛۢۦ۫۬ۥۘ";
                    break;
            }
        }
    }

    public void setRating(int i) {
        String str = "ۗۨۨۖۛۡ۟ۙۧۖۧۚۡۗۨۦۖۥۡۦۚۤۘ۠ۦۤۦۧۡۘۤ۟ۧۡۨۘ";
        while (true) {
            switch ((((str.hashCode() ^ 340) ^ 169) ^ 887) ^ 462227669) {
                case -1964130940:
                    str = "ۢۜۤۘۘۦۚ۫۠ۚۧۖۥۛۛۘۘۘۤۧۡۘۧۘۗۥۖ۠ۙۜ۬ۗۖۧۘۖۧ۠ۗۘ۠ۘۜۥۙۧۖۧۙۚۚۘۗ۬۫ۚ";
                    break;
                case -1559679367:
                    this.rating = i;
                    str = "ۙ۟ۥۘۚۙ۠ۖۤۜۘۜۦۡۘ۟۫۫ۧۦۧۘۥۤۧۚۛۛۧۤۨۚۗۦۘۧۗۥۘۧۘ۟";
                    break;
                case -861499223:
                    str = "ۢۘۖۘۡ۟ۥۘ۟ۚۤۦۛۡۘۘۗۨ۠ۥۘۗۧۜۡ۬ۛۨۚ۬ۨۤۜ۟ۨ۟ۖۡۜ";
                    break;
                case 1378345088:
                    return;
            }
        }
    }

    public void setTitle(String str) {
        String str2 = "ۖۨۨۘۜۘۧۘۨۘ۠ۤۚۤۛۤ۠ۦ۟ۤۜۥ۫ۦۨۦۘ۫ۢۘ۟ۦۨۛۥۚۜۙۨۖۘۘۨۜ۠ۜۘۙ۬ۨۘ";
        while (true) {
            switch ((((str2.hashCode() ^ 990) ^ 255) ^ 977) ^ 812074899) {
                case -2049067270:
                    return;
                case -2015722816:
                    str2 = "۬ۢۦۢۚۧ۫ۚۖۘۛۖۘۘۗۦ۠ۛ۬ۥۘ۟ۘۨۥ۫ۧۙ۬ۘۘۖۖۘۘۤۛۨۘۙۥۘ۟ۖۘۘۨۛۗ";
                    break;
                case -1152006572:
                    this.title = str;
                    str2 = "۫ۚۥ۠ۢ۫ۜ۫ۤۢ۠ۦۘۖۦۥ۫ۨۦۘ۬ۡۘۘۤ۫ۥۘۤۚۨۘۨۥۦۙ۟ۦ۟۫ۜۘۖۘۧۘۘۧۙ۠ۦۧۘۖ۫ۜۘ";
                    break;
                case -629991226:
                    str2 = "ۤۙۢۖۨۙۡۗۘۛ۠ۖۘ۟ۤۥۘۢۧ۬ۧۢۤۖ۠ۛ۠ۛۥ۫ۡۦۚۜۘۘۜ۟ۨۘ";
                    break;
            }
        }
    }

    public void setWebTracks(OooO0OO oooO0OO) {
        String str = "ۡۗۚۜۤۥۡۜۧۗۨۙ۫ۖۜۗۚۙۗۡۨ۠ۗۖۢ۟ۥۘۛۗ۬ۗۤۜۘۡۗ۟ۢۡۛ۟ۡۘ";
        while (true) {
            switch ((((str.hashCode() ^ 881) ^ 515) ^ 789) ^ 1200509524) {
                case -1274629059:
                    return;
                case -1150039354:
                    this.webTracks = oooO0OO;
                    str = "ۚۢۡۘ۫ۥۙۤۨۘۘۢ۠۬ۤ۟۠ۨۦۘۛۘۗ۬ۡۡۘ۠ۜۘۘ۫ۡۧ";
                    break;
                case 1016435718:
                    str = "۬ۦۢۢۖ۟ۧ۠ۗۤۢۧۧۢۜ۟۟ۛۖۖۙ۫۬۫ۦۙۖۘۘۥۛۜ۟۫ۚۦۤ۟۬ۨ";
                    break;
                case 1478057976:
                    str = "ۘۦ۫ۘۨ۬ۜۛۖۘۧۜۜۘۖۦۥۘ۬۬ۨۘۗۖ۫ۙ۫ۡۘۥ۬ۨۘۙۗۡۚۛۢۥۤۚۥۜۙۜۖۘ۠۬۟ۖ۠ۨۘۨ۠ۧۖۦۦۘ";
                    break;
            }
        }
    }

    public void setWidth(int i) {
        String str = "ۧ۫ۚۢۖۗۙۢۨۘۚۡۤۜۜۜۡ۟ۘۤ۫ۘۡۛ۠ۗ۫ۛ۠۬ۡ";
        while (true) {
            switch ((((str.hashCode() ^ 357) ^ 69) ^ 413) ^ 1379573173) {
                case -1000812665:
                    str = "ۧۧۘۜۛۤۦ۠۬ۦ۠ۙۖۘۘۘۛۥۘۘۦ۠ۦۖ۠۟ۚۚۦۚ۟ۜۧۖۘۦ۟ۧۢۢ۟ۥۘۘۧ۟ۜۨ۬";
                    break;
                case -963636656:
                    str = "ۧۨ۟ۥ۫ۖ۟۠۫ۤ۟ۧۘ۫ۗۦۛۗۜۤۡۥۡۡۖۚۧۚۤ";
                    break;
                case -422035305:
                    return;
                case 1195967829:
                    this.width = i;
                    str = "ۜۢ۟ۤۢۛ۠ۡۘۦۨۘ۟ۦۥۘۦ۟ۡۘۗۘۡۘ۬ۥۚۢ۟ۨۙ۟۫ۤۜۜۘۢ۬ۢۙۡ۬ۗۨۜ۫ۢۧۙۡۢ";
                    break;
            }
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        String str = "۫۠ۤۚ۠ۢ۬ۦۖۥ۬ۧۡۧۢ۠ۗۢۙۥۢۘۛ۬ۜۨۘۢۘۢ";
        while (true) {
            switch ((((str.hashCode() ^ 154) ^ 602) ^ 341) ^ (-1262109613)) {
                case -1828905666:
                    str = "ۜۢۘ۫ۦۢۘۖۥۘۗۜ۠ۚۖۧۘ۟۫ۨۘۛۛۢۘۘۘۛۖۡۘۨۗۨۘ";
                    break;
                case -1608916968:
                    parcel.writeInt(this.rating);
                    str = "ۦۨۜۘ۠ۛۗۛۙ۠ۗۛۘۘۥۨ۠ۧۗ۬ۘۦۥۘۘۡۚۚۗۨۦۧۘ۫ۧۘۘ۬ۖۚۛ۠ۦۖۥۦۡۡۥۚۥۥۖ۟ۢۖ۬۠";
                    break;
                case -1214704067:
                    parcel.writeInt(this.width);
                    str = "ۘۖۖۘۤۜۙ۫ۥ۫ۜۜۤۨۘ۠ۛۘۘۜۚ۠۫ۢ۟ۗۛۡۘۜۜۧۘۤۢۡۘۗۙۚۧۡۨۙۨۨۖۗ۠ۜۚ";
                    break;
                case -852238242:
                    parcel.writeInt(this.drawType);
                    str = "ۘ۫ۙۛۦۤۚۤۛ۠۠ۛۧۤۧ۟ۧۚۜۜۛۘۨۨۘۧۧۧۛۘۡ۫ۢۨۘۡۜۘ";
                    break;
                case -294553451:
                    str = "ۖۤ۫ۢۗۥۘۤۗۨۢ۫ۨۧۡۢۥ۟ۨۘۡ۠ۙۥۨ۠ۧ۬ۧ";
                    break;
                case -94566886:
                    str = "ۦۗۨۘۜۡۡۡۨۗ۠ۨۦۘۧۛۡۘۨ۫ۥۗ۠ۡۘ۟ۢۜۘ۫ۤ۠ۥۛۚۢ۠۫ۛ۫ۙ۠ۡ۠ۜۢۤۧۖۚ۫ۛۜۘ";
                    break;
                case 861758380:
                    parcel.writeInt(this.adPlatformId);
                    str = "ۗۤۨ۫ۜۚۖۛ۫ۧۗ۬ۨۘۨۥ۠ۜ۟۠ۘۘۡۘۘۘ۟۬ۡۥۙ۫ۧۜۘۛ۠ۖۡ۟ۜۖۗۜ";
                    break;
                case 872082803:
                    parcel.writeString(this.title);
                    str = "۠ۛۜۨۨۡۢ۟ۙۘۦۚ۠ۤۨۥۛۜۘ۬ۜۤ۟ۥۗۚۢۥۜۜۨۘۘۦۢ۠ۙۤۚۚۡۧۤۛ";
                    break;
                case 958285749:
                    return;
                case 970676803:
                    parcel.writeInt(this.creativeType);
                    str = "ۢ۬ۥۘ۟ۢۨۘۡ۠ۤۧۜۢ۫۬ۤۨۦ۟ۘۡۦۘۤ۬ۥ۠ۛۗۚ۫ۛۤۜ۬ۙ۠ۡ۫ۜۜۘۜۚۢ۠ۧۘۘۤۤ۬ۚۖۢ";
                    break;
                case 998138488:
                    parcel.writeInt(this.adId);
                    str = "۬ۘۧۘۦۖ۟ۦۢۘۗۙۥۘ۫ۚۢۗۛۖۘۦۨۧۘۢۦۧ۬ۨۨۖۢ۫ۤۗۤۦ۬ۨۛۢۘۤ۟ۙ۠ۢ۫ۜ۬ۧۜۡ۫ۘ۟";
                    break;
                case 1064353029:
                    parcel.writeInt(this.actionName);
                    str = "ۗۥۙ۫ۜۚۦۗۙ۟۬ۜۧۡۜۜ۟ۦۘ۠ۙۗۧۖۤۤۜۘۥ۠ۛ۬ۦۘ۟۬۬۬ۖۡۨۨۘۘۜۦۗ۟ۤ۟ۤۖۘۧۜۜ";
                    break;
                case 1089755454:
                    parcel.writeString(this.clickUrl);
                    str = "۫ۧۛ۠ۖۧۘۢۖ۟ۗۜۥۘ۠ۚۦۘ۟ۖۧۢ۫ۧۦۘۗۨۦۥ۬۟ۢۧۜۛۦۙۦۘۜ۠۫ۡۢۡۦۨۘ۫۠ۡۛۡۙۧۥۗ";
                    break;
                case 1271334045:
                    parcel.writeString(this.adPlatformIcon);
                    str = "ۥۥۦ۫۬ۨۤ۬ۧۜۜۤۧۢۦۘۖۤ۬۟ۛ۠ۘۨۘۥۥ۬۠ۙۨۦۥ۟ۥۡۥۚ۠ۘۘ۫ۨۜ";
                    break;
                case 1289114502:
                    parcel.writeInt(this.height);
                    str = "ۦ۟ۛۨۗۙۚۚ۠ۚ۠ۘۘ۫ۡۘۗۘۡۘۗۘۡۘۦۙۨۢۨۛۢۡ۟۫ۥۗۖۨۘۖۚۖۡۡۜۚۦۖۧ۠ۙ";
                    break;
            }
        }
    }
}
