package com.cyjh.elfin.entity;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.ac.R;
import com.anythink.expressad.foundation.g.a;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;

/* JADX INFO: loaded from: classes.dex */
public class FloatEditBean implements Parcelable {
    public static final Parcelable.Creator<FloatEditBean> CREATOR;
    public String intentContent;
    public String intentTtile;
    public boolean isCancle;
    public String leftContent;
    public String rightContent;
    public ActionBarOperaEnum type;

    static {
        String str = "ۚ۬ۨۘۢ۟ۡۚۥ۟ۘۚ۟ۨۙ۠ۗۖۘۡۗ۠ۖۜۡۘۤۜۥۦۦۘۘ۬ۚۤۢۗۗۡۢۖۘۨ۠۠۫ۦۨۖۢۚۡ۟۬ۜۚۦۘ";
        while (true) {
            switch ((((str.hashCode() ^ a.aV) ^ 106) ^ 876) ^ (-1222198278)) {
                case -1571460790:
                    CREATOR = new Parcelable.Creator<FloatEditBean>() { // from class: com.cyjh.elfin.entity.FloatEditBean.1
                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // android.os.Parcelable.Creator
                        public FloatEditBean createFromParcel(Parcel parcel) {
                            String str2 = "ۢ۠ۚۢۚۜ۠ۨۡۚۖۛۦۚۗۧۗۖۘ۫ۖۚۡۡ۠ۛ۠ۙۗ۟ۦ۬ۥۜۘۧۤۗۡۚۘۘۙ۬ۘۘۜۘۚۚۡۚۥۙۗۥۨ۫";
                            while (true) {
                                switch ((((str2.hashCode() ^ 666) ^ 656) ^ 744) ^ (-1943930355)) {
                                    case -1726798690:
                                        return new FloatEditBean(parcel);
                                    case 44912422:
                                        str2 = "ۖۥۦۘۦۗۚ۠ۙۘۘ۬ۖ۟ۙۡۦۛۗۥۧ۠ۖۖۛۡۘۥۖۧۥۦۡۘ";
                                        break;
                                    case 1207118267:
                                        str2 = "ۜ۬ۘۘ۫ۧۡ۫۟ۢۧۚ۫ۗۖۘۛ۫ۚۖۜ۟ۢۤۢ۠ۢۦۘۢۨۜۘۜۨۗۘۤ۟ۡ۟ۢۛۚ۟";
                                        break;
                                }
                            }
                        }

                        @Override // android.os.Parcelable.Creator
                        public /* bridge */ /* synthetic */ FloatEditBean createFromParcel(Parcel parcel) {
                            String str2 = "ۚۡۖۚۖۨۛۨۨ۬ۥۖۘۥ۬ۢۜۛ۫۟ۢۢۥۘ۟ۚۦۛۛۤۢۛۧۜۖۚ۟ۥۚۘۙ۟۬۠ۘۡۘ";
                            while (true) {
                                switch ((((str2.hashCode() ^ 822) ^ 417) ^ 983) ^ 659646735) {
                                    case -1545137781:
                                        str2 = "ۛۖ۟ۙۙ۟ۦۦۧۘۥۗۢۡۨۚۦۨۦۘۜۖۚ۫ۢۙ۬ۡۦۘۘۘۜۘ۠ۥۗۥۥۜۘۖۥۥۗۙۡۢۡۨۘ۫ۨۦۘ";
                                        break;
                                    case 60849986:
                                        return createFromParcel(parcel);
                                    case 327713521:
                                        str2 = "ۦ۠ۥۚۙۚۧۖۖۘ۬۠ۘۧۥ۬ۡۤۡۘۛۜۡۜۥۡ۬ۗۖۘۦۚۢ";
                                        break;
                                }
                            }
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // android.os.Parcelable.Creator
                        public FloatEditBean[] newArray(int i) {
                            String str2 = "ۚۧۡۘۛۛۜۘۡۖۧۛۤۗۚۤۜۜۛۦۚ۟ۖۛ۟ۘ۫ۖۘۥۖۥۙۡ۬ۘۖ۟۬ۤۦۗۤ۠ۜۢۨۘۚۧۡ";
                            while (true) {
                                switch ((((str2.hashCode() ^ 366) ^ 300) ^ 738) ^ (-1207335797)) {
                                    case -2058526294:
                                        str2 = "ۙۤ۫۟ۢۡۜۛۨۘۧ۬ۢۗ۟ۡۘۨۢۘۘۘۨۜۗۛۥۘۦۗۜۘۙۧۥۘۦۘۜۘۧۖۖۘۗۨۥۘۘۜۘۦۚ۫۟۠ۧۙۨۜۗۘ";
                                        break;
                                    case -716223267:
                                        str2 = "ۙۗۘۜۗۡۘ۠ۢۚۜۘۥۨۦۘۙۚۨۘۗۧۤۗۦۜۘۗۘۨۘۥ۫ۖ";
                                        break;
                                    case 869282373:
                                        return new FloatEditBean[i];
                                }
                            }
                        }

                        @Override // android.os.Parcelable.Creator
                        public /* bridge */ /* synthetic */ FloatEditBean[] newArray(int i) {
                            String str2 = "ۡۥۘۢۜۛۜۙۚۚۨ۠ۜۜ۟۠ۜۜۗۚ۫ۜۢۨۤۜۛۚ۠";
                            while (true) {
                                switch ((((str2.hashCode() ^ 835) ^ 745) ^ 278) ^ (-1967649644)) {
                                    case -299257116:
                                        str2 = "ۧ۟۫ۗۜۢۢۚۤ۟ۢۛۜۜۚۗۢۦۜ۟۬ۗۢۖ۟ۜۤۤ۬";
                                        break;
                                    case 247173488:
                                        return newArray(i);
                                    case 1045102846:
                                        str2 = "ۙۛۥۘۛۖ۬ۗۛۘۘۚ۫ۚۤۧۖ۟ۥۦۘ۫ۤۦۤ۟ۦۘۗ۫۠ۢۦ";
                                        break;
                                }
                            }
                        }
                    };
                    str = "ۥۘۜۘۥۛۦۙۦۜ۠ۧۜۘۚۗ۟ۨۛۙۗۧۡ۠ۘۜۘۦۙۖۘۦ۠ۜۘ";
                    break;
                case 220708046:
                    return;
            }
        }
    }

    public FloatEditBean() {
    }

    public FloatEditBean(Parcel parcel) {
        boolean z;
        ActionBarOperaEnum actionBarOperaEnum;
        this.intentTtile = parcel.readString();
        this.intentContent = parcel.readString();
        this.leftContent = parcel.readString();
        this.rightContent = parcel.readString();
        String str = "ۚۢۦۘۚ۠ۥۜ۠ۡۢۦۦۘۨۥۦۘ۫ۨۖۚ۠ۡۘۜۤ۫ۘۗۘۥۥۦۗۥۨۘ۬۟ۦ";
        while (true) {
            switch (str.hashCode() ^ 365518573) {
                case -1753482062:
                    str = "ۗۧۜۜۚۛۗۘ۠ۜۖۦۗۦۢ۬ۧ۠ۥۥۘۡۖۧۘ۬۟ۜۘ۟۫ۧ۟ۖۛۚۘۘۛۧۨۧۨۖ۫۬ۦۗ۬ۤۢۘۘۙ۟ۚ";
                    continue;
                case -1325410231:
                    z = false;
                    break;
                case -803150012:
                    z = true;
                    break;
                case 2141453715:
                    String str2 = "ۜۡۛۤۨۘۘۛۖۡ۫ۛ۠ۧۤۦۘ۠ۘۚۙ۟ۨۘۥۥۜۚۖۥۘۜۖۚ۬ۗۘۘۜۛۦ۬۫ۧ۫۟ۚۗۤۚۜۢ۬";
                    while (true) {
                        switch (str2.hashCode() ^ 732905932) {
                            case -1362383596:
                                str = "۬۠ۖۛۜۦۘۘۘۦۡۨۘ۫۫ۤۛ۬ۦۖۖۥۡۜۨۤۢ۫ۖۗۥۛۗۨۙۦۖ۟۠ۦۗ";
                                continue;
                                continue;
                            case -655675946:
                                str = "ۛ۫ۥۘۡۧۦ۬ۤۦۘۤ۟ۡۘۚ۫۠ۙۜۜۘۜۜۡۤ۬ۦۘۜ۟ۧۛۚۖۜۦۘۘۘۘ۫ۦۗۖۚ۠ۢۨۛۖۘۨۛ۫";
                                continue;
                            case 1648584213:
                                str2 = parcel.readByte() == 0 ? "ۦۖۜۘ۫ۚ۟ۘۘۛۖۥۚۚۨۘۥۦۖۘۡ۫ۡۘۨۘ۟ۖۗۢۥۛۛ۠ۖۖۘ۟ۡۧۘۗۙۡۘۢۗۜۘۧۖۡ۫ۨۛ" : "ۗ۬ۡۘۚۜۤۜۜۨۘۤۛ۬ۥۗۙۡۤ۫ۤ۟ۦۘۗۨۨۢۨۘۖۦۧۛۛۙۢۗۢ";
                                break;
                            case 2053957439:
                                str2 = "ۧۢۡۦۢۦۘ۫ۗۘۜ۟ۨ۟ۤۡۧۦۜۦۥۡۘۛۢۜۧ۬۬ۙۗۖۘۗ۫ۖۘۘۦ۬ۛۜ۬ۧۘۢ";
                                break;
                        }
                    }
                    break;
            }
        }
        this.isCancle = z;
        int i = parcel.readInt();
        String str3 = "ۜۘۙۖۡۛ۟ۧ۠ۢۧۨۘۡ۠ۦۨۖۨۘ۬ۦۧۘۧۥۡ۠۟ۜۘۧۘۥ";
        while (true) {
            switch (str3.hashCode() ^ (-1908942781)) {
                case -1916145235:
                    actionBarOperaEnum = null;
                    break;
                case -885810161:
                    str3 = "ۙۨۡۘۦ۟ۗ۟ۨۜ۠ۢۜۘۘۛۨ۟ۢۘ۟ۖۦۘۙۜۥۘۧۡ۬ۥۘۘۥۢۛۢ۫ۚ";
                    break;
                case -191072465:
                    String str4 = "ۚۛۨۤۖ۟ۖ۬ۢۨۢۗۛۦۘ۠ۙۚ۠ۡۖۥۦۙ۫ۙۘ۬۬۬ۗۚۦۛ";
                    while (true) {
                        switch (str4.hashCode() ^ (-456903432)) {
                            case -1659112550:
                                str3 = "ۘۖۜۛۜۤ۫۬ۤۨ۬۠ۡۡۘۖ۟ۖۘۖۗۛۘ۟ۗۦ۠ۨۘۦۙۤ۠ۤۦۘۙۦۢۗۗۛۧۖۧۘۜۥۖ۟۟ۗۙۚۚۧ۬";
                                continue;
                            case -1625693213:
                                str3 = "ۖۧۡۗۙۛۤۛۨۘ۬ۘۗۚۨ۬ۖۖۦۘۖۤۡۡۧۡۘۤۚۦۘۢۘۖۘۚۥۦۚۤۚۥۖۦۘۙۙۘ۬ۦۨۘۦۧۖۘۥۡۙ۠ۢ";
                                continue;
                            case -809571756:
                                str4 = "ۧ۬ۦۘۦۚۙۢۤ۫ۡ۫ۥۡۘ۫ۤۚۡۨۤۥۨۗۛۖۥۥ۫ۖۘۦۜۙ۟ۜۥۘ";
                                break;
                            case 1520250640:
                                str4 = i != -1 ? "۬ۘۡۧۖۜۜۤۨۢ۠ۨ۬ۨ۠ۜۚۧ۬ۜۥۢۢ۫ۢۘۜۡ۠ۧۚۨۘۢۗۙۖۤۘۡۤۤۜۜ۠ۖ۟ۖۘ" : "ۙ۫ۢ۠ۜۛۙۖۚۗۤ۫۟۠۠ۦۥۜۗۥ۠ۧۘۜۘۨۥۖۘۥۛ۬ۚ۟ۥۘ۫ۗۤۨ۠ۡۘ۬ۗۤۤ۬ۨۤۨۡۗ۠ۖۘۘۜۨ";
                                break;
                        }
                    }
                    break;
                case 595927054:
                    actionBarOperaEnum = ActionBarOperaEnum.values()[i];
                    break;
            }
        }
        this.type = actionBarOperaEnum;
    }

    public static FloatEditBean getDeleteFloatBean(Context context, String str) {
        FloatEditBean floatEditBean = null;
        String str2 = "ۚۙۙۧۥۨۧۡ۬ۥ۟۠ۗ۫ۦۡۡۦۖ۟ۦۘۛۘۘۤ۠ۥۘۥۗۗ۠ۤۘۛۗۥۘ";
        while (true) {
            switch ((((str2.hashCode() ^ 97) ^ 823) ^ 329) ^ 35689090) {
                case -1605431595:
                    return floatEditBean;
                case -1521005469:
                    floatEditBean.type = ActionBarOperaEnum.DELETE;
                    str2 = "۬ۘ۫۠۠ۘۡۧ۟ۥ۬ۥۘ۬ۦۖۛۧ۟ۤۗۨۥۡ۟ۢۖۧۜ۫ۥۗۜۙۤۤۚۡۗ۠ۤۢۨ";
                    break;
                case -1383194080:
                    floatEditBean.leftContent = context.getString(R.string.btn_cancle);
                    str2 = "ۤ۟ۨۘ۠ۖۡۘ۠ۤۦ۫۫ۜۘۦۖۤۡ۟ۨۤۥۜۘۥۚۧ۫ۘ۠ۜۧۡۙ۠۠ۨۙۥۘ";
                    break;
                case -681547922:
                    floatEditBean.intentTtile = context.getString(R.string.menu_delete);
                    str2 = "۬۠ۖۘۗۡۜ۠ۥۛ۠ۨۡۤ۠ۡۧۧۚۡ۟ۙۢۗ۟ۙۤۢۖۤۦۘ";
                    break;
                case -179401431:
                    floatEditBean.intentContent = str;
                    str2 = "ۥۡۤۢۗۛۖۚۤۥ۟ۗۗ۫ۦۜۖۧۘۙۦۢ۬ۙ۬ۢ۟ۚۡۛۡ۠ۦ۬ۨۚۖۧ۫ۛ۫۫۠";
                    break;
                case -134089252:
                    floatEditBean.rightContent = context.getString(R.string.btn_ok);
                    str2 = "۠ۖۥۘۛۤۗ۟ۨۙۜ۟ۘۘۤۚۨۘۖۘۥۘۘۨۖۘۢۦۙۚۖۧۘۡ۟ۖ";
                    break;
                case 115333576:
                    str2 = "ۛ۟ۦۘۦۖۘ۫۠ۨۡۙ۫ۘ۫۟ۚۖۙۛۦۤ۬۫۠ۚۙۛ۠ۦۥۘ";
                    break;
                case 655865004:
                    floatEditBean.isCancle = true;
                    str2 = "ۦۛۧۤۡۦۥۜۦۥ۬ۡۘۧۢۜۨۦۥۘۧ۬۫ۥۘ۟ۛۢۦۘۘۙۧ۫۫ۘۘۗۗۥۘ";
                    break;
                case 1016591346:
                    floatEditBean = new FloatEditBean();
                    str2 = "ۖ۫ۤ۬ۙ۬ۖۥۛۡۙۦۥۦ۫۟ۙ۫ۦ۠ۨۘۙۘۗۚۤۢۧۤۥۘ";
                    break;
                case 1755326135:
                    str2 = "ۛ۟ۡۤۖۨۛۚۛۢۧۛۧۡۘۘۗۜ۬ۡۙۘۗۘۘ۟ۙۤۨۦۥۘۨ۫ۘۘۧۖۧۘۦۖۥۙۗۖۚۛۖۘۤۡ۟";
                    break;
            }
        }
    }

    public static FloatEditBean getEditFlloatBean(Context context, String str) {
        FloatEditBean floatEditBean = null;
        String str2 = "ۙۜۖۘۨۙۗۧۥ۠ۦۡۢۤۧۖۖۤۘۘ۬ۨۨ۫ۚۘۧۤۢۖ۟۬ۧ۬۫ۢ۟ۘۘ۫ۤۥۘ۬ۚۢ";
        while (true) {
            switch ((((str2.hashCode() ^ 912) ^ 712) ^ 618) ^ (-799087558)) {
                case -2044015759:
                    floatEditBean.rightContent = context.getString(R.string.btn_ok);
                    str2 = "ۢۙۡ۫۟ۘ۬۟ۛۘۛ۫ۨۘۘ۬ۘۘۜۢۨۘۦۡۡۡۤۛ۟ۚۡۘۚۘۘۡ۠ۙ";
                    break;
                case -1327366049:
                    floatEditBean = new FloatEditBean();
                    str2 = "۠ۜۛ۬ۨۡۘۗۢۦ۠ۘ۫ۗۙۧۨۢۢۤ۬ۗۧۡۘۨ۬ۨۘۜ۫ۦۘۢ۟ۜۘ۟ۦۚ";
                    break;
                case -495047142:
                    floatEditBean.leftContent = context.getString(R.string.btn_cancle);
                    str2 = "ۙۧۨۘۢ۟ۛۧۖۗۗۢۙۢۜۧ۟ۧۚۙۜۗۢۧ۬ۙۧۖۘۦ۟ۨۧ۟ۘۘۙۧ۠";
                    break;
                case -269218302:
                    return floatEditBean;
                case -224370189:
                    str2 = "ۡ۫ۢۘۥ۟ۘۦۤۧۤۛۦۦ۫ۗۖۘۚۡۜۤۙۤۗۚۥۧۛۙۜۡۡۘۖۚۛۤۥۤۨۨ۫";
                    break;
                case 403314622:
                    str2 = "ۢۙ۫ۥۡ۠ۢۡۙۧۡۙۖۖۖۘۙۨۨۛ۬۠ۘۙۨۘۛ۫ۨۘۙۚۙۚۧۗ۟ۨۡۘ۟ۛ۫۬۠ۡۥۧۘۗ۟ۘۙ۬ۦۘۧۙۖ";
                    break;
                case 725596363:
                    floatEditBean.type = ActionBarOperaEnum.RENAME;
                    str2 = "۫ۖۥۘ۬ۖۙ۠ۜۘۘۗۨۤۚۛۜۖۡۦ۠ۥۨۢ۫ۨۤۜ۟۠ۡۨۜ۬۬ۡۖۚۘۡۧۛ۠ۖۘۧۨ۫۫ۗۦ";
                    break;
                case 912512432:
                    floatEditBean.isCancle = true;
                    str2 = "ۥ۬ۘۛۢۖ۬ۛۛۜۜ۫ۖۙ۠ۖۘۢۢۜۘۚۙۦۘ۟۬۟ۚۡۡۖۢۧۢۤۨۙۨ۠ۘ۬";
                    break;
                case 1750875196:
                    floatEditBean.intentContent = str;
                    str2 = "ۢۡۦ۠ۦۨ۬ۖۢۚ۟۟۟ۜۦۘۢۛۧۗۗۡۘ۬ۛۛ۟ۢۖۨۛ۫ۜۡۘۦۛ۠ۡۡۘۥۡۖ";
                    break;
                case 2135821153:
                    floatEditBean.intentTtile = context.getString(R.string.menu_rename);
                    str2 = "۬ۥۤۘۥۡۨۥ۫۬ۙۦ۟ۤۨۘۤۢۦۘۤۜۨۘۢۚۨ۟ۚۖ۫۫ۛۜۥۥۦۖۙۨۘۘ۬ۡۖۡ۠ۧ۫ۚۧۖ۠ۥۚۛ۫";
                    break;
            }
        }
    }

    public static FloatEditBean getNewCreateFlloatBean(Context context, String str) {
        FloatEditBean floatEditBean = null;
        String str2 = "ۛۢۘۘۘۖ۬ۦۧ۟ۡ۠ۜۘۛۨۖۨۘ۬ۘۨۗۢۙۛۜۗۜۘۦۙۨۥۛۛۚۢۧۦۛ۠ۦۦۤۡۙۘۨۘۡۘۢۨۙۤۘ۬";
        while (true) {
            switch ((((str2.hashCode() ^ 674) ^ 375) ^ 479) ^ (-373601461)) {
                case -2143166366:
                    floatEditBean.rightContent = context.getString(R.string.btn_ok);
                    str2 = "ۙ۠۫ۨ۟ۨۘ۟ۖۡۘۛۤۘۗ۟ۦۘۜۧ۬ۛۦ۠ۤۤۦ۠ۖۘۘ۬ۖۛ۬۬ۖۘۖۡۖۛۗ۟ۖ۟ۥ";
                    break;
                case -1994614700:
                    floatEditBean.leftContent = context.getString(R.string.btn_cancle);
                    str2 = "ۘۘۨۖۖ۬ۜ۟ۨۨۖۢۧ۬ۖۘۗ۫ۦۘۧۧ۠ۗۧۥۤ۬۠ۙ۠ۖۦۡۚۨۨ۬ۥۨۜۢۥۦ";
                    break;
                case -1894800116:
                    floatEditBean.intentContent = str;
                    str2 = "ۧۢ۟ۢ۟ۖۘۢ۟ۛۗۜۡۘۡۜۤۤۘۚۛ۫۫ۘۙۢۘ۟۫۬ۨۛ";
                    break;
                case -1763902990:
                    floatEditBean = new FloatEditBean();
                    str2 = "ۙۢۡۘۜۥۨۘۧۤۨ۬ۙۢ۬۬۟ۨۡۘۘ۠ۜۧۘۜۙۤۚۙۦۘۚۗ۬ۦ۟ۙۤۘ";
                    break;
                case -1606202511:
                    floatEditBean.type = ActionBarOperaEnum.CREATE_NEW_FILE;
                    str2 = "ۧۜۥۘۤ۫ۥۗۚۛۥۤ۬ۘ۬ۗۙۘۡ۫۬ۜۖۤۖ۬۠ۢۚ۬۠ۥ۬ۥۡ۬ۥۡ۠ۦۨۡۚ";
                    break;
                case -274646264:
                    floatEditBean.isCancle = true;
                    str2 = "ۙ۟ۡۘۡۛۛۗۜ۬ۧۨۖۘۥۤۘۗۚۡۗۧۜۘۥۢۚۦۘۘۘ۬ۖۘۘۘۧ۫ۛۧۘۜۙ۫ۦۦۧۥۤۖۥۘۧۘ";
                    break;
                case 91348730:
                    floatEditBean.intentTtile = context.getString(R.string.create_new_file);
                    str2 = "ۧۜۦۘۛۘۘۤۦۛۢۧۖۨۜۛۧۛۥۘ۫ۚۙۦۧۜۘۘۖۗۛ۟ۖۨ۬۠ۨ۫ۦ۫۬ۨۜۥۘ";
                    break;
                case 1434597436:
                    str2 = "ۙۘۙۘۗۜۘ۟ۥۧۜۚۜۖۧۦۘۥ۬ۜۗۖۧۘ۫ۡۥۘۙۤۡۘۜۚۨۘۡۨ۬۟ۙۥۗۘۘۘۚۨۧۘ۬۠۟ۛۦۚ";
                    break;
                case 1525900338:
                    str2 = "۟ۨ۬۫ۧۥۚ۬ۙۛۘۧۘۘۤۜۘ۫ۗۨ۬ۗۧۜۘ۟ۦۘۧ۬ۖۘۙۧۤۗۤۗۧ۠ۧ۬ۤۜۘۧ۟ۢۦۗ۬ۙۧۜۡ۠";
                    break;
                case 2099113036:
                    return floatEditBean;
            }
        }
    }

    public static FloatEditBean getSaveFloatBean(Context context) {
        FloatEditBean floatEditBean = null;
        String str = "۠ۙۡۘۙۡۙۖۥۢۘۥۘۘۗۥ۬ۦۥ۫ۧۗۥۘۗ۠ۘۚۜۜۦۙۙۛۡ۬ۚۜۧۖۛۘۘ";
        while (true) {
            switch ((((str.hashCode() ^ 570) ^ UiMessage.CommandToUi.Command_Type.FW_SET_TOP_VALUE) ^ 183) ^ 1469505446) {
                case -1754764379:
                    str = "ۚۡۥۖۤۢۛۨۨ۫ۜۧۘ۬ۛۢۖۦۖۘۘۦ۫۠ۚۨۨۢۧۘۤۘ۟ۧۖۗۜۘۘۖۥۘۗۘ۠";
                    break;
                case -1499613730:
                    floatEditBean.intentTtile = context.getString(R.string.save_script_title);
                    str = "ۗ۟ۙۚۗۚۜ۠ۗۧۡۘ۠ۚۛۥۘۡۤۙۖ۫۟ۜۘۥۜۘۘۨۘ۫";
                    break;
                case -779935544:
                    floatEditBean.type = ActionBarOperaEnum.SAVE;
                    str = "ۦۦۥۘۡ۟۟۫ۢۢۙۢۖۖۢۙۧۖۧ۬ۨۧۘۧۛۨۛۧ۫ۨ۫ۖۘۛۚۘ۬۠ۙۥۙۨۤۨ۬";
                    break;
                case -251669998:
                    return floatEditBean;
                case 293528101:
                    floatEditBean.rightContent = context.getString(R.string.save);
                    str = "۠ۜۜۘۨۘۙۛۛ۠ۘۚ۟ۤۛۚۙۖۢۧۜۤۚۢ۫ۦۛۙ۠ۦ۫ۛ۬ۛ۠۟ۜۘ۠۬ۜۘۖ۫ۜۜۤ۫ۛۤۨۘ";
                    break;
                case 381808509:
                    floatEditBean.intentContent = context.getString(R.string.tips);
                    str = "ۚۛۖۧۛۘۘۚۘ۟ۚۗۥۘ۟ۨ۫ۗۥۢۢۗۙ۠ۤۧ۫ۘۘۘۦ۟ۦۘۙۤۘ۬۟";
                    break;
                case 1768058071:
                    floatEditBean.leftContent = context.getString(R.string.cancel);
                    str = "ۥ۬ۜۘ۫ۥۧۘۢۗ۟ۤۡۖۗ۠ۨ۟ۧۥۗۘۦۘۛ۟ۘۨۜۖۗۙۘۨۢۦۙۚ۬ۤۡ۬ۧۙ۟ۢۛۜۘ۠ۙۧ";
                    break;
                case 1771499729:
                    floatEditBean = new FloatEditBean();
                    str = "ۙ۫ۘۘۜۦۘۘۗۙۜ۟ۛۜۘۚۘ۟ۥۛۘ۠۬ۗ۟ۖ۬ۥۦۗۗۘۜۨۗۤۡۚۘ۠ۢۘۘۧۡ۫ۦۘۜۘۜۜۡ";
                    break;
            }
        }
    }

    public static FloatEditBean getStartDownloadFlloatBean(Context context, String str) {
        FloatEditBean floatEditBean = null;
        String str2 = "ۤ۬ۨۤۡۘۘۧ۟۠ۥۦۢۦۡۜۘۥ۠ۚۜۖۦۦۗۦۙۡۘۗۜۙۦۧۖۘ۬۟۠";
        while (true) {
            switch ((((str2.hashCode() ^ 706) ^ 527) ^ 288) ^ (-752904126)) {
                case -1823477010:
                    str2 = "۫ۚۘۘۡۖۚ۫ۙ۫ۦۙۖۘۘۧۨۘۚۡۢۥ۠ۦۗۨۥۘۜ۟ۚۜۜ۫ۦ۠۠۬ۤۤ۠ۖۚۦۧ۠ۙۧۖۦۙۘ";
                    break;
                case -1517642662:
                    return floatEditBean;
                case -1243315282:
                    floatEditBean = new FloatEditBean();
                    str2 = "۬ۦۥۘۦۢۧۨۦۜۙ۠ۜۘۜۗۥ۬ۛۖۧۜ۫ۧۥۘۙۜۦۘۥ۬ۨۘۚۙۘۘ۠۠ۗۢۘۖۧۥۖۘ۟ۢۜۘ۬ۦۥ";
                    break;
                case -79237557:
                    floatEditBean.leftContent = context.getString(R.string.btn_cancle);
                    str2 = "ۨۛۢۖ۫ۧۜۗۦۘۜۜ۠ۚۛۢۧ۟ۢۤۡۧۘ۫ۡۜ۠ۛ۫ۧ۠ۘ۟ۘۜۦۨۨ۫ۤۨۡۛۧۨۖۗۜ۫ۡۥۥۛۖۨۘ";
                    break;
                case -48187132:
                    str2 = "ۗ۬ۧۤۜۜ۠ۧ۠ۧ۠ۚۥ۟ۙۦۙۥۘۙ۠ۙۧۤۦۢۤۜۘۨۖۧۘۘۗۗۙۢۥۙ۠ۜۧۤۘۛ۟ۖ۠ۜۜۘ";
                    break;
                case 132520447:
                    floatEditBean.intentContent = str;
                    str2 = "۬ۥۜۜۢۖۘۡۥۦۨۨۡۗۨۡۦۖۘ۫ۡ۬ۘ۟ۚۜۜۛۙۡۘۨۤۘۥ۬ۙۤ۬ۥۢ۬ۡ";
                    break;
                case 478385004:
                    floatEditBean.rightContent = context.getString(R.string.btn_down);
                    str2 = "ۡۧۗۡ۬ۚۧۗۛۡۥۘۤۦ۫ۖۗۜۘۚۡ۬ۢ۬۟ۢۥۘۜۦۨۘ";
                    break;
                case 924526657:
                    floatEditBean.type = ActionBarOperaEnum.START_DOWNLOAD;
                    str2 = "ۗۗۛ۬ۗۜۘۡۨۨۚۚۛۡ۠ۢۚۡۦۗ۫ۜۘۚۚۥۘۘۘۚۜۚ۫ۥۖۘۗ۟ۥۡ۠ۨۜۨۧۘۚۢۜۘ۫ۖۦۙۨۛ۬ۡۡ";
                    break;
                case 1671367311:
                    floatEditBean.isCancle = true;
                    str2 = "ۗۚۘ۫ۚۚۤۜۨۙۛۘۦۘۘ۟ۦۤۘۚۡۥ۫ۨۖۛۖۘ۫ۡۡ";
                    break;
                case 1830742043:
                    floatEditBean.intentTtile = context.getString(R.string.user_permission);
                    str2 = "۠ۨۧۘۚۛۚۢۨۢۛۤۚ۬ۤۥۛۗۜۦۗۜۚۜۙ۟ۨۙۨۦۘۧۘۨۙۤۜۛۨۜۘۥۡۗۢۗۙۗۚۙۚۥۖۧۜۜۘ";
                    break;
            }
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        String str = "ۗۨۚۧۥۜ۠ۗۧۖۛۤۡۘۡۘۛۡۨ۠ۢۖۘۥۧۨۜ۠ۥۘ۠ۘۧۘۡۛۦ۫ۘۗ";
        while (true) {
            switch ((((str.hashCode() ^ 436) ^ 746) ^ 347) ^ (-707721144)) {
                case -897942595:
                    str = "۠ۢۛ۫ۦۜۘۖۚۨۛۗ۬ۨۧۘۘۧۤۛ۠ۚۖ۠ۡۙۗۨۖ۫ۨۤ۫ۜۨ۟ۨ۟ۨۖۛۙۖۛۥۜۧۖۢۖۘ";
                    break;
                case 828494912:
                    return 0;
            }
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ActionBarOperaEnum actionBarOperaEnum = null;
        String str = "ۜۧۢۛۦۚۜۖۘۤۘۡۛۜۜۘۥۧۙۘ۬۠۠۫ۛ۬ۗۦۧ۬ۖۘ";
        int iOrdinal = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            switch ((((str.hashCode() ^ 198) ^ 166) ^ 266) ^ 1522442726) {
                case -2146544066:
                    iOrdinal = actionBarOperaEnum.ordinal();
                    str = "ۖۤۗۖۢۙۜۢ۠ۤۗۥۡ۬ۦۘۚۜۘۘۘۢۖۘۧ۬۬ۡۤ۟ۦۛ";
                    break;
                case -1796443348:
                    str = "۫۟ۘۘۦۨۜۡۦۡۘ۟ۚ۠ۦۘۘۘۙۚۢۤ۟ۖۘ۟ۜۨۤۗۛۨۛۦۦۤۥۘ۬ۥۗ۫ۡۥ۬ۤۦۗۨۨ۟ۖ۠ۦۚۡۦۖۛ";
                    break;
                case -1725429891:
                    parcel.writeString(this.intentContent);
                    str = "ۗۙ۟ۥۖۚۜۘۨ۫ۜ۬۬ۦۦۘۙ۬ۧۖ۬۬۫۬ۥۗۜۖ۬ۜۖۜۖۤۤۦۘۥۦ۠ۡۗۥۘۖۗۗۗۜۖ۬ۛۦۘ۟۬۬";
                    break;
                case -1646041635:
                    str = "۫۟ۘۘۦۨۜۡۦۡۘ۟ۚ۠ۦۘۘۘۙۚۢۤ۟ۖۘ۟ۜۨۤۗۛۨۛۦۦۤۥۘ۬ۥۗ۫ۡۥ۬ۤۦۗۨۨ۟ۖ۠ۦۚۡۦۖۛ";
                    i2 = iOrdinal;
                    break;
                case -1098395493:
                    str = "۟ۜۧ۠ۘۧۧۢۗۤ۟۫۬۟ۢۗ۬ۛ۠۠ۡ۠ۦۘ۫ۛ۠ۢ۬۠";
                    break;
                case -567220022:
                    return;
                case -464842841:
                    str = "ۥۢۘۘۤۖۧۘۘۥۘۡۗۢۙۖ۬۠ۙۢۗۗۘۚ۬ۗۚۘۦۘۘۜ۠ۤۢۦۘۦ۫ۨۘۧ۠۠۠ۙۘۘ";
                    break;
                case -206959307:
                    str = "ۦۖ۫ۚۖۤۡۜ۬ۚ۠ۢۘۡ۟ۖۖۜۢۚۨۛ۬۬۫ۥۖۘۚۜۧۖ۫ۥۘۡۡۨ";
                    i2 = i3;
                    break;
                case -201592489:
                    parcel.writeString(this.intentTtile);
                    str = "ۢۤۜ۬ۢۜۘۚۧۤۗۜ۫ۤۜۜۘۧۤۨۘۖۦ۬۟ۘۖۘۥۨۨۘۤۢۦۘۦۗۥۘۧ۟ۛۖۚ۟ۘۥ۠ۤۢۨۖۦۨۘ";
                    break;
                case -155911175:
                    str = "ۛۖۢۜۚۨۘۛۛۤۛۥۜۘۤۜۚۛۡۖۦۜۧۘۥۗۜۘۗۧۛۢ۠ۘۘ";
                    actionBarOperaEnum = this.type;
                    break;
                case 366632226:
                    parcel.writeByte(this.isCancle ? (byte) 1 : (byte) 0);
                    str = "ۤ۫ۧۖۦۘۡ۫۠ۧ۠ۘۘۨۤۤ۟ۥۘ۠ۡۜۗۨ۬۠ۨۘۜۧۥۨۥۜۤۜۤ۠ۦۙۧ۠ۙ";
                    break;
                case 400770875:
                    parcel.writeString(this.leftContent);
                    str = "ۦۢۡۡۢۚۢۗ۬ۘۧۤۢۡۨ۬ۦۘۥۡۥۘۘ۠ۛۚۥۢۗۨۖۡۚۡۡۜۧۘ۟ۚ۬";
                    break;
                case 607181284:
                    parcel.writeString(this.rightContent);
                    str = "ۗۢۜۘ۟ۥۘۘ۬ۢۖ۠ۗۨۡۡۛۗۤۘۘ۫۠ۤۥۡۥۚۙۡۜۤۡۘۢ۠ۜۘ۟ۡۡۧۤۛۜۚۢ";
                    break;
                case 871613661:
                    String str2 = "ۙۚۦ۬ۨۨۦۦۦۘۜۢ۠۟ۚۗۜۛۦۘۙۤ۬۠ۤۢ۠ۛۦۙۤۥۜۡۤۢۘۦۜ۠ۢ۬ۗۥۢ۫ۛۘ۬ۨ۬ۗۦۥۖۘ";
                    while (true) {
                        switch (str2.hashCode() ^ (-1403318727)) {
                            case -1300499800:
                                str = "ۗۜۧۤۦۛۖ۬ۘۘۡۢۖۘۨ۫۟ۡ۫۠ۢۗۥۦۤۥۚۜ۠ۤ۬ۦۘ۫۟ۚۘۦ۬";
                                continue;
                            case 706556058:
                                str2 = "ۥۢ۫۟ۢ۠۬ۜۧۘۗ۟ۦۘۡۨۢۡۖۘۘۖۦۧۢۛۦ۬ۨۨۨۛ۬ۙ۫۬ۥۡۦۘ۟ۖۖۢۚۢۥۘۧۤۘۥۘ";
                                break;
                            case 1559765834:
                                String str3 = "ۗ۠۠ۥۨۜۘۤۘۜ۟ۨۛۙۦ۟ۚۥۙۛ۫ۥۨۖۛۛۘۚۤۦۘۢۧۡۡ۠ۢ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-880473078)) {
                                        case -1788754530:
                                            str3 = actionBarOperaEnum == null ? "ۨۢ۠ۘۨۚۧۜۦۙۦۧۘ۬ۚۙۙۡ۫ۛۧۘ۟ۡۤۜۛۥۤۖۜۤ۠ۨۘۚۡ۟ۢۧۡۘۡۘۜ" : "ۥ۟ۡۘ۠ۡۙۗۦۛۙۘۦۘۨ۠ۤۘۘۘۘ۫ۤۤ۫۬۠ۦۦۙ۬ۖۖۗۧۦۚ۠ۚ۬ۖۚۦ۟ۡۘۚۘ۠ۚۛۥ";
                                            break;
                                        case 889397725:
                                            str2 = "ۖۢۚۛۚۖۘ۬ۗۧۡۡۢۖۚۘۘۤۢۢۖۢۨۨۤ۫ۢۤۨۘۢۦۜۘۨۘۚۘۜۚ۫ۧۤ۟ۧۘۘۢۛۘۢ۫ۥ۬ۙۥۘ۠ۧۛ";
                                            break;
                                        case 975722160:
                                            str3 = "ۥۗ۫ۡۨۤۡۛۙۥۛ۟ۦۦۘۜۡۘۚۨۦۛۨۗۡۦۜۘۡۜ۬ۛۘۘۤ۠ۧ۟ۚۥۘۧۥۖۘۡۘۘۢ۫ۗۧۡۜۨۧۘ";
                                            break;
                                        case 2004274445:
                                            str2 = "ۤۛ۫ۤۗۘۙۜۚۗۛۚۛۡۖۘۖ۠ۘۘ۠ۧۘۨ۫ۦ۠ۗۙۦۦۤ";
                                            break;
                                    }
                                }
                                break;
                            case 1608372879:
                                str = "ۥۦۦۘۤۡۨۘۚۡۨۘۙ۠۫۫ۤۗۘۨۥۘۖ۬ۥۨ۫ۘۦ۬۬ۧۡۘ";
                                continue;
                        }
                    }
                    break;
                case 1067585259:
                    str = "ۡۧۖۙۗۚۤۚۜۘۢ۫ۦۖۖۧۘۤۚۖۜۘۧ۟ۜ۠ۧ۟ۚۘۧۤ";
                    break;
                case 1729636163:
                    parcel.writeInt(i2);
                    str = "ۤۥۗۖۨۙۢۢۥۘ۬ۚ۠ۛ۟ۖۘ۟ۘ۫ۛ۟ۥۚۛۥۘۨۨۡ۬ۨۜۘۖۨۡۡ۠ۘۘۘۡۨۘۦۧۚ۫ۚۤ۫ۦ۟۠ۚۧۚ۟ۡۘ";
                    break;
                case 1986246659:
                    i3 = -1;
                    str = "ۛۡ۫۟ۘۗۗۥۨ۫ۖۡۘۢۛۛۧۜۙۡۙۖۖۚۦۘۘۙۦ۠ۧۜۘ";
                    break;
            }
        }
    }
}
