package com.cyjh.elfin.entity;

import cn.haorui.sdk.adsail_ad.view.scaleImage.SubsamplingScaleImageView;
import com.anythink.expressad.foundation.g.a;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import java.io.File;
import org.slf4j.helpers.MessageFormatter;
import z2.me;

/* JADX INFO: loaded from: classes.dex */
public class Script {
    public static final int SCRIPT_STATE_FREE = 0;
    public static final int SCRIPT_STATE_LOAD = 1;
    public static final int SCRIPT_STATE_PAUSE = 3;
    public static final int SCRIPT_STATE_PAUSE_BY_HEART_BEAT_VERIFI_ERR = 4;
    public static final int SCRIPT_STATE_RUNING = 2;
    private String appId;
    private File atcFile;
    private BestResolution bestResolution;
    private File cfgFile;
    private int changeFileList;
    private String description;
    private FileVersion fileVersion;
    private String id;
    private File infoFile;
    private File lcFile;
    private String name;
    private File propFile;
    private File rtdFile;
    private String selId;
    private String size;
    private File uiFile;
    private File uipFile;
    private String version;

    public String getAppId() {
        String str = "ۛ۠ۢۤ۠ۡۗۦۦۨۡۧۘ۟ۨۡۧۨۥۘۙۚۤۚۤۤۧۢ۫ۥۥۙۡۘۧۖۛ۫۬ۜۨۥ۠ۚ۫ۥۘۡ۬۟";
        while (true) {
            switch ((((str.hashCode() ^ 861) ^ 49) ^ 764) ^ (-753680911)) {
                case -1393363065:
                    str = "۫ۨۗۡۨۨۘۚ۬ۤۖۖۤ۬ۤۥۜ۠ۦۗۗۚۧۙۨۘۦۢ۫ۙ۠ۙۧۖ۫ۢۥۧۘ";
                    break;
                case 237432808:
                    return this.appId;
            }
        }
    }

    public File getAtcFile() {
        String str = "ۙۚۨۘ۠ۨۘۘۜۚۡۢۖ۫ۥۖۤۦ۠ۨۢۗۘ۠ۢۘۘۜۡ۠ۤ۬ۥۘ";
        while (true) {
            switch ((((str.hashCode() ^ 333) ^ 156) ^ 636) ^ 1043161443) {
                case -1205073385:
                    str = "۬۟۬ۥۖۥۘ۬ۛ۬ۢۡ۟ۥۗۙۥۤ۬۟ۘۢۧۜ۫ۜۙۙۢ۬ۧۡ۠ۛ۬۫ۡۙۧ۠۟ۥۤ۫ۗۚۗ";
                    break;
                case 1649776449:
                    return this.atcFile;
            }
        }
    }

    public BestResolution getBestResolution() {
        String str = "ۦۧۖۧ۬ۖۙ۫ۚۛۥۡۘ۬ۖۡۘۘۚۗۜۧۜۖۡ۫ۢۛۦ۬ۡۘۤۛ۫ۢۦۤ";
        while (true) {
            switch ((((str.hashCode() ^ 956) ^ 981) ^ 688) ^ (-628949587)) {
                case -320749300:
                    str = "۫ۦۥۤۨۧۚۜۘ۫ۜۗۚ۫ۜۢۥۦۙۛۛ۬ۥۨۜ۬ۤۤۥ";
                    break;
                case 1423530826:
                    return this.bestResolution;
            }
        }
    }

    public File getCfgFile() {
        String str = "ۚ۠ۦ۟۟ۦۘۜۧ۫ۤ۫ۖ۟۬ۡۢۥۘۛۦۦۘۗۚۘۨۚۜۘ۠ۦۖۘ";
        while (true) {
            switch ((((str.hashCode() ^ 771) ^ 880) ^ 447) ^ (-1682128782)) {
                case -1708973710:
                    str = "ۛۦۖۘۧۗۦۡۨۦۘۙۢۦ۫ۧۙۧۛۙۖۤۧۨۥۛۙۤۡۘۢۖۧۖۘ۟۫ۗۡۛۚۡ۟ۡۖۘ۫۬ۜۘۤۘۥ";
                    break;
                case -1024515407:
                    return this.cfgFile;
            }
        }
    }

    public int getChangeFileList() {
        String str = "۠ۖۨۦۧۧۘۨۘ۬ۡۘۗۗۛۖۧۦۥۢۚ۬ۙۗ۫ۚ۫ۚۜۤۛ۬ۡ۠ۘۥۘ۠ۧۧۡۡۥۘۛ۟ۤۢۗۧۙۗۦۘۛۜۘ";
        while (true) {
            switch ((((str.hashCode() ^ 481) ^ 318) ^ 492) ^ 559675198) {
                case -1229208576:
                    return this.changeFileList;
                case 75709676:
                    str = "ۧۥۨۘۚۢۚۚۖۙۚۚۖۡۙۨۘۘ۬ۨۘۛۖۧۘۥۛۧۧۘۘ۫ۛۡ۟ۗۤۜۡۥۗۛۤۜۡۘ";
                    break;
            }
        }
    }

    public String getDescription() {
        String str = "ۙ۫ۤ۟ۦۘۘۘۘۚۛۖۖۘ۬ۚۤۜۧۡۢۥۨۘۖ۬۟ۘۚۖۧۗۥۘ";
        while (true) {
            switch ((((str.hashCode() ^ 739) ^ 981) ^ 783) ^ (-1986821590)) {
                case -406702295:
                    return this.description;
                case -168268308:
                    str = "ۧۖۗۗ۬۬ۡۚۡۘۧۜ۫ۤۢ۟ۘۚۗ۬ۛۜۤ۬ۥۦۤۡۨ۫ۥ";
                    break;
            }
        }
    }

    public FileVersion getFileVersion() {
        String str = "ۗۦۖ۬ۥۛ۬ۛۥۢۚۧۦۜۡۘ۟ۤۦۘۛۡۡ۟ۜۦۘۜۥۚۥۨۥۘ";
        while (true) {
            switch ((((str.hashCode() ^ 387) ^ SubsamplingScaleImageView.ORIENTATION_270) ^ 365) ^ (-2042950597)) {
                case -960008402:
                    str = "ۨ۫ۨۘۗۥۥۗۖۜۦ۫ۦ۠ۘ۫ۚۜ۟ۤۙۤ۫ۛۨۘۖۖۡۜۘۖۡۗۚۚۥ";
                    break;
                case 2064972738:
                    return this.fileVersion;
            }
        }
    }

    public String getId() {
        String str = "۫۠۠ۜ۠ۦۦۘۨۘ۫۬ۡۗۡۜۛۨۘۡۚۥۘۛۛۨۘۦۥۚۘۙۛۥ۟ۥۘ۫ۡۖۘۘۧۥۘۤۧۨ";
        while (true) {
            switch ((((str.hashCode() ^ 848) ^ 569) ^ 58) ^ (-135038278)) {
                case 546974410:
                    str = "ۘ۠ۨۘۦۗۘۘۜۢۢۦۜۘۙۨۤۤۢۡۘۙۘۜۛۦ۠ۨۥۘۘۦۡ۟ۦ۠ۗۙ۫ۨۘۙۛۤ۫ۘۧۘ۟ۨۨۘۡۗ";
                    break;
                case 899622573:
                    return this.id;
            }
        }
    }

    public File getInfoFile() {
        String str = "۠ۦۧۘۥۙۦۘۤۨ۠ۦۜۘۦ۬ۜۘۗۚۛ۫ۢۜۖ۬ۖۘۨۧۡۘۙۨۙۗ۟ۧ۠ۤ";
        while (true) {
            switch ((((str.hashCode() ^ me.o0000oo) ^ 477) ^ UiMessage.CommandToUi.Command_Type.GET_FW_VISIBLE_VALUE) ^ 555031599) {
                case -1862014329:
                    return this.infoFile;
                case -1421698142:
                    str = "ۘۗۜۚۚۛۙۜۘۜۜۜۘۙۦۗۜۗ۠ۤ۠ۛۙۦ۠۟۟ۗۦۜ۬۠ۦۘ۫ۖۙ۫۟ۜۘۢۡۨ";
                    break;
            }
        }
    }

    public File getLcFile() {
        String str = "ۥ۟ۖۖۖۥۘۙۖۢۖۥۨۗ۫ۦۖۡۧۧۥۘۜۧ۬ۘ۟ۢۧۤۘۘۚۙۖۤۗۘۘۛ۠۫ۘۦۗ۟ۙ۬ۧۖۢ";
        while (true) {
            switch ((((str.hashCode() ^ 352) ^ 783) ^ 349) ^ 409640047) {
                case -430899857:
                    return this.lcFile;
                case 409047927:
                    str = "۬ۨۥۘۛۜۘۛۦۥۘۤۚۨۘۢ۠ۛۙۨۡۛۨۗۗۖۘۘ۠ۖۖۘۖ۫ۥۘۥۨۘۦۘۡۘۛۢۤۧۦۘ";
                    break;
            }
        }
    }

    public String getName() {
        String str = "۫۫ۘۖۧ۬۠ۘۙ۟۟ۦۘۜۜۥۘۙۚۡۧۥۘۘ۫ۤۨۘ۟ۚۖۡۘۜۗۚۦ۠۬";
        while (true) {
            switch ((((str.hashCode() ^ UiMessage.CommandToUi.Command_Type.FW_OPACITY_VALUE) ^ 70) ^ 65) ^ 1178691408) {
                case 594567816:
                    str = "ۢۖۧۢ۬۬ۥ۬ۧ۟۫ۙۗۡۖۘۗۥۡۗ۫۫ۦ۠ۧۤۘۢۤۢۛ۟ۥ۬۫۠ۨ۟ۖۘۘۥۜۘ۫ۜۗۗ۠ۜۘ";
                    break;
                case 778469495:
                    return this.name;
            }
        }
    }

    public File getPropFile() {
        String str = "۠۟ۧ۫ۢ۫۬ۜۘ۫ۧ۬ۧ۟ۥۛۢ۬۟ۛۙۖۙۤۖ۟ۜۚ۠۠ۨۜۘۦۘۦۘ";
        while (true) {
            switch ((((str.hashCode() ^ 712) ^ 322) ^ 523) ^ 693884039) {
                case -477534207:
                    return this.propFile;
                case 132174519:
                    str = "۫۟ۘۘ۠۬ۥ۟ۚۜۘۙۗۜۘۡۡۚۤ۫۠ۤۜۚۚ۠ۧۖۦۜۘۘۚۜۘۙ۟ۚۖۧ۟۫ۗۘۤۗ";
                    break;
            }
        }
    }

    public File getRtdFile() {
        String str = "ۨ۟ۦۘۢ۬ۧۡۡۢۢۖۥۢ۫ۢ۟ۤۦ۟ۖۘۗۢۤۥ۟ۧۙۨۙ";
        while (true) {
            switch ((((str.hashCode() ^ 289) ^ 32) ^ 632) ^ (-323761130)) {
                case -140935528:
                    return this.rtdFile;
                case 1558718383:
                    str = "ۙۤۤۨۚۦۘۨۚۦ۬ۤۢۨ۠ۚۡۜۢۘۖۘۢۡۨۘ۟ۢۛۙۗۜ";
                    break;
            }
        }
    }

    public String getSelId() {
        String str = "ۧۧۦۘۛۗۖۨۦۜۘۘۛۘۘۛۤۡۤۧۡۘۥۙۥۨ۬ۙۙ۬ۢ۟ۚۦۗۜۘۡۖۥۧۥۚۦۗ۟ۨۥۢ۬";
        while (true) {
            switch ((((str.hashCode() ^ 635) ^ 1001) ^ 129) ^ (-1547556373)) {
                case -1595861413:
                    str = "ۘۥۡۥۗۢۛۤ۫ۖۖۨۘۢۜۘۘۜ۟ۥۘۡۗۤۧۖ۫ۛ۫ۦۥۗۥۘۛۤۤۨۜۜۘ۠ۤۛۥۘۘ۟۟ۙۦۘۧۘ";
                    break;
                case -1516333518:
                    return this.selId;
            }
        }
    }

    public String getSize() {
        String str = "ۥ۬ۨۘۢۢۘۚ۠ۡۘۙۦۡۘۛۤۡۘ۫ۚۨۘۡۖۨۘۧ۟ۦۘۧۢۦۤ۟ۖ۟ۚۦۙۨۘۘ";
        while (true) {
            switch ((((str.hashCode() ^ 811) ^ 29) ^ 953) ^ 543935335) {
                case -1386810254:
                    str = "ۧۤۜۗۥ۟ۜ۟ۤۦۥۜۙۨۦۚۛۜ۠ۘۤۥۙۥۘۙۘ۟ۚۙۗۖۘۨ۠ۖۚۢ۫ۜۦ";
                    break;
                case 80909122:
                    return this.size;
            }
        }
    }

    public File getUiFile() {
        String str = "ۗۗۨۘ۠ۧ۫ۦ۬ۥۨ۠ۦۗۗۜۛۢۡۥ۬ۧۤۤۜۚ۬ۡۘۦۤۨ";
        while (true) {
            switch ((((str.hashCode() ^ 902) ^ 588) ^ 724) ^ (-541667393)) {
                case -1949850386:
                    return this.uiFile;
                case 954182821:
                    str = "۠ۥۘۘۦۡۛۥۗۧۨۗۚۗۙۥۘۢۤۚۜۥۦۗۢ۟ۢۙۥۥ۫ۚ";
                    break;
            }
        }
    }

    public File getUipFile() {
        String str = "۫ۗۥۨ۟ۨۘ۟ۜۧۙۦۜۘۗۦۥۘۖۘۦۘ۬ۥۜۘۗ۟ۘۘۢۗۢۖۢۛۡۚۖۘۨۧۖ";
        while (true) {
            switch ((((str.hashCode() ^ 374) ^ 628) ^ 797) ^ 1039290183) {
                case -231613758:
                    return this.uipFile;
                case 1175763500:
                    str = "ۧ۫ۧۖۡۛۨ۫ۘۘۦۗۘۛۦۘۗۢۤۜۥۚۡۛۚۦۗۥۘۛۥۚ";
                    break;
            }
        }
    }

    public String getVersion() {
        String str = "ۨۗ۬ۡۙۚۦ۟ۨۘۧۥۡ۟ۡۗ۠ۖ۟ۤۡۘۢ۫ۜۘ۬۟ۘۦ۬ۥۤۘۡۘۘۦۜۗۦۧۥ۫ۘۥۢۛ۬ۜۘ";
        while (true) {
            switch ((((str.hashCode() ^ 218) ^ 198) ^ 650) ^ 773408728) {
                case -1155822006:
                    return this.version;
                case 965456632:
                    str = "ۜۧۧۥۤۗۗۨۨۘۥۢۦۘۘۤۧۤۨ۟ۦۡۨۘ۠ۧۢ۠ۚۜۘۡۨۛ۠ۚۨۘۙۜۘۘ۟ۛ۫ۚۢ۠ۘ۟ۨۗۤۢ";
                    break;
            }
        }
    }

    public void setAppId(String str) {
        String str2 = "ۘ۫ۢۛۗۙۚۘۘۘ۠ۙ۬۫ۛۜۗۘۧۘۜۜۖ۫ۜۜۘ۟ۖ۬ۙۗۨۘۥ۠ۙۙۖۘۖۨۥۖۘۜۡۜۡۘ۠ۨۖۨۗۚۜۚۖۘ";
        while (true) {
            switch ((((str2.hashCode() ^ 34) ^ 569) ^ 227) ^ 868188070) {
                case -1825701869:
                    this.appId = str;
                    str2 = "ۥۜۡ۠ۚۡ۟ۘۧۥۧۖۘۗۦۛۜۚۘۘۤۢۘۢۛ۫ۧۜۥۧۛ۬ۙۘۖۘ۟ۢۤۧۦۜۘ۫ۜۦۘ۟ۧۨۡ۬ۗۥۢۤۚ۬ۥۘ";
                    break;
                case -405305836:
                    str2 = "۫ۗۘۥۖۘۘۥۗ۟ۢۗۘۘۨۧۢۥۤۥ۬۬ۢۦ۠ۚ۠ۥۘۗ۟۬ۛۤۘۘۜۗۖ";
                    break;
                case 56789253:
                    str2 = "ۥۡۚۦۧۗۦۙۜ۟ۜۘۖۤۛۡۖۥۘۜۡۨۘۨ۫ۢۦۦۖۗۛۥۙۧۥ۟ۚ۬ۚۦ۬۠۬ۨۘۡۜۚۛۧ۠";
                    break;
                case 673041417:
                    return;
            }
        }
    }

    public void setAtcFile(File file) {
        String str = "ۡۥۨ۬۬ۨۘۙۡۦۘۨ۬۠۫ۛۧۤۙۘ۟۟ۚ۫ۖۚۥۙۖۥۦۨۘۨۗۧ۠۬۟۠۬ۜۧۗۘ";
        while (true) {
            switch ((((str.hashCode() ^ 975) ^ 568) ^ me.o00000OO) ^ (-907570178)) {
                case -2000340442:
                    str = "ۥ۫۫ۢ۫ۚ۬۬ۛۤۖۧۘ۫ۤۤۗ۬ۥۘ۫ۘۡۘۗۧۦ۠ۗۘ۠ۧۤ۫ۙۛۖۖۦ۟ۧۥۧ۬ۘۘۘۗۜۘۤۙۥۘۛۘۤ۬۠ۨ";
                    break;
                case -1718984601:
                    this.atcFile = file;
                    str = "ۦۘۙۚۖۘۘۨۨۨۘۚۢۘۘۙۚۤۖۤۦۘ۠ۘۥۘ۫۠ۚۥۦ۬ۖۥۘۚۥۙۥۜۘ۬ۜۨۘ۟ۧۛۗ۬ۨۘۗۧ";
                    break;
                case 630632028:
                    str = "ۙ۠ۛۛ۬ۨۘۖۨۥۤۥۛۘ۫ۘۘ۟ۖۥۡۦۡۘۖۙۛۖۛۤۡۤۜۘۧۡۥۙ۠ۜۘ";
                    break;
                case 779388398:
                    return;
            }
        }
    }

    public void setBestResolution(BestResolution bestResolution) {
        String str = "ۘۢۨۘۢ۬ۚۖ۟ۜۘۗۨۤ۫ۤۧۦۨۡۢۛۖۘۙۜۜۘ۬ۗ۫ۦۙ۠ۧۛ۬ۢۗۢۖۘۢ۫ۨۘ۫ۚۛۛۜۧۘۛۛۢۥ۬ۢ";
        while (true) {
            switch ((((str.hashCode() ^ 69) ^ 308) ^ 827) ^ 651568633) {
                case -1848053948:
                    str = "۬ۘۖۥۚۨۢ۟ۜۨ۬ۨۘۢۡۥۘۨۙۥۘۛۚۘ۟ۧۖۘۧۦ۬۟۬ۘۗۨ۠ۙۧۥۗۖۚۜۤۦ۠۫ۡ۬";
                    break;
                case -665630479:
                    str = "۟ۢۦۗۙۦۚ۠ۤ۬ۧۚ۬۟ۛۡۙۨ۫ۥۨۗۡۘۖۡ۠ۜۧ";
                    break;
                case -170022715:
                    this.bestResolution = bestResolution;
                    str = "ۖۜۖۘ۫ۛ۠۠ۛۥۙۤۥۘۚۚ۫ۖۤۘۘۧۘۧۘ۫۠ۦۚۢۥ۟ۥۥۘ";
                    break;
                case 2106921747:
                    return;
            }
        }
    }

    public void setCfgFile(File file) {
        String str = "ۜۖۨۘۤۢۗۘۗۦۘ۟ۦۛۦۥۜۗ۟۬ۥ۬ۧ۟ۢۜۤۨۛ۬۟";
        while (true) {
            switch ((((str.hashCode() ^ 818) ^ 850) ^ 299) ^ 1179188579) {
                case -1782772550:
                    str = "۟ۜۗۘۖۗۥۘۖۘۚۚۗۨۖۧۧۡۖۨ۠ۚۜ۬ۦۘۛۚۡۘ۬ۨۙۢۘ۟ۜ۟ۦۥۘۡۘ۫ۛۦۤۖۘۜۨۗ";
                    break;
                case -576649562:
                    this.cfgFile = file;
                    str = "ۘۖۧ۠ۙۘۘۤۡۨۘۦۦ۠۬ۤۨۘۨۘۦۥۜۖۗۗۚۗۘۘۖۘۘۙۧۨۘ۟ۚۘ۠ۡۘۤۤۖۤۡۧۤ۟ۖ";
                    break;
                case 99878608:
                    return;
                case 516489374:
                    str = "ۨۧۢۛۖۥ۫ۗۦۘۜۡۥۙ۟ۜۡ۠۠ۜۛۤۜۤ۬ۗۧۖ۟ۖۡۦ۟ۖۗۖ۬ۧۨۦۧۖۘۖ۠ۡۘۜۗ۫۠ۡۥۗ۫ۘ";
                    break;
            }
        }
    }

    public void setChangeFileList(int i) {
        String str = "ۗۧۖۘ۫ۧۡۖ۟ۛ۬۠ۖۘ۫ۨۜۙۙۘۘۥۖۖۧۤۡۜۨۥۘۢۛۤ";
        while (true) {
            switch ((((str.hashCode() ^ 174) ^ 495) ^ a.aP) ^ (-265399003)) {
                case -2061263654:
                    return;
                case -1465547778:
                    str = "ۥۖۖۘۙ۠۫ۦۧ۫ۡ۟ۡۘۧ۫ۜۘۨۡۛ۬ۢۛ۫ۡۥ۠ۧۡۥۙ۟۬ۧۖۜ۫ۘۙۛۚۦ۬ۨۘ";
                    break;
                case -886503121:
                    str = "ۨۤۙ۬ۛۤ۬ۢۜۦۡۨۖۥۗۧ۠۟ۦ۠ۙ۫ۖۘ۠ۡ۠ۖ۟ۥۘۥۗۢ۫ۛ۬ۢ۟ۜۘۖ۬ۡۖۜۡۥۜۜ۬۫۠ۦۥۦۘ";
                    break;
                case 893112445:
                    this.changeFileList = i;
                    str = "۟ۢ۟ۤۗۘۥۨۚۛۢ۫ۗۗۡۗۥ۬ۨ۟ۛۦۨۦۘۚۦ۟ۨ۠ۖۘۗۦۡۜۗ۫ۘۙۧ۠ۥۧۘ";
                    break;
            }
        }
    }

    public void setDescription(String str) {
        String str2 = "ۜۦۘۦۚۨۘۚ۠ۥۙۥۥ۟ۡۦۘۙۢۦۘۚ۫ۚ۠ۥۚۘ۠ۜۘۥ۠ۥۘۖ۟ۢۥ۟ۡۘۛۤۦۖ۬ۢۧ۬ۜۘۚۨۘ";
        while (true) {
            switch ((((str2.hashCode() ^ 293) ^ 222) ^ 686) ^ (-914045766)) {
                case -1008243230:
                    str2 = "ۖۥۘۡۛۖۧۥۗۡۦۙۧ۟ۧۤ۬ۘۘۗۨۜۢۧۤ۬ۨۖۙۧۡۘۗۡۦۖۗ۫ۗ۠ۨۘۙ۫ۙۦۨۥ۟ۜۜ";
                    break;
                case -856468654:
                    return;
                case 498585286:
                    str2 = "ۡۙۦۨۘۙۖۛۜۘۚۢۚ۠ۘۦۘ۬ۘۢ۟ۦۥۗۚۜ۬ۜۨۥۙۡۘۘۤۡۖۘۖۧ۠ۧۖۦ";
                    break;
                case 1425070293:
                    this.description = str;
                    str2 = "ۧۘۧۘۛۧۖۛۙۚۗۦۦۚۥۛۛۜۡۘۜۦۘۘۤ۟ۖۘ۫ۗ۫ۨۖۜۘۨۤۨۘۡۢۧ";
                    break;
            }
        }
    }

    public void setFileVersion(FileVersion fileVersion) {
        String str = "ۚۧۦۗ۟ۦۘۦۖۢۡۨۧۘۡۗ۫ۚۢۡۖ۫ۜۡۛۨ۬ۚۦۤۚ۬۟ۘۦۗ۫";
        while (true) {
            switch ((((str.hashCode() ^ 844) ^ 499) ^ 825) ^ 299005503) {
                case -1114492885:
                    this.fileVersion = fileVersion;
                    str = "ۦۨۚۧ۠ۥۢۤ۠ۡۘۨۙۗ۬ۖۘۧۘۖۖۘ۬ۦۡۙ۟ۙۜۖۥۘ۠۫۠ۤ۬ۧۡۧۨۧۦۘۡ۠ۙۥۙۖۘ۫ۜۜۘۤۚۜ";
                    break;
                case -735997294:
                    str = "ۤۦ۟ۛۨۤۜۥۨۘۘۜۘۘۧ۠ۙۨۙۨۘۖۘۛۘ۠ۨۘ۫ۨۜۘۡ۫ۨۘۨ۫ۡۥ۟ۖۘۨۖۖۘۧۧۨۗۖۥۤۥۦ۫ۢۥۦۢۥ";
                    break;
                case -556699656:
                    str = "ۙۡۛۖۨۖۗۖۖۧۤۧۥۗۦۘۡۖۥۙۚۧ۠ۖ۠۬ۢۡۘۛۡۨۘ۠ۨۖۘۨ۬ۤۜۥۧۗ۟ۛۖۘۥۜۚۖۜۥۜۘۜۛ۠";
                    break;
                case 634786456:
                    return;
            }
        }
    }

    public void setId(String str) {
        String str2 = "ۡ۫ۦۘ۬ۗۨۘۦ۫ۦ۠ۗ۟ۤۘۧۛ۠۠ۗۤۜۘ۫ۛ۬ۥۜۛۧۧ۟";
        while (true) {
            switch ((((str2.hashCode() ^ 893) ^ 860) ^ UiMessage.CommandToUi.Command_Type.SET_CHECK_BOX_VALUE) ^ (-103086585)) {
                case -667592830:
                    return;
                case 340075758:
                    this.id = str;
                    str2 = "۬ۖۦۘۘ۠ۦۛۨ۫۟ۤۚۥۦ۬۬ۡ۟ۜ۟ۥۧۚۢۜۜۘۢۥۥۘ";
                    break;
                case 781916451:
                    str2 = "۟ۗۙۨۤ۠ۘۘۘ۠ۡۡۘۧۘۧۖۖۢۥۛ۠ۗۘۡ۫ۘۖۘۚ۠ۘۢۥۘ۠ۢۡۘۗ۬ۨۘۦۖۛ";
                    break;
                case 1040273191:
                    str2 = "ۧۢ۫ۥۦۧۙ۠ۖۘۨۧۛۘۦۨۙۢۧۖۥ۟ۨۘۤۖۗۚۘۡ۟ۚۜۘۢۥۜۨۜۡۘۛ۬ۦ";
                    break;
            }
        }
    }

    public void setInfoFile(File file) {
        String str = "۟۫ۡۧۗۥۤ۫ۢۚۦ۠ۡۥۘۗۧۚۥۥۧ۬ۨۥۘۛۧ۠ۘۧۘ";
        while (true) {
            switch ((((str.hashCode() ^ 504) ^ 723) ^ 897) ^ 323872932) {
                case -1707134222:
                    str = "ۖۗۜۨۤۘۨۥۧۙۤۘۘۜۚۘۘۖۚۢۡۡۤۗۦۙۚۚۗ۫ۛۤۤۢۨۖۨ۫۬ۥۘۢۦۛۦ۬ۦۘۦۧ";
                    break;
                case -108424358:
                    return;
                case 37591553:
                    str = "ۢۚۤۖۤۖۡۖ۬ۡۡۘۡۙۢۙۚ۫ۢۖۥۘۢۢۥۥۚۚۡۗ۫۟ۖ۠ۧۗ۠۬ۧۚ۟";
                    break;
                case 1852413398:
                    this.infoFile = file;
                    str = "ۥ۟ۙۚۘۜۘۥۦۥۢ۠۬ۛ۬ۖ۫۠ۨۘۥ۫ۦۘۖ۟ۙۡۜۜۘۡۘۦۦۤۚۦۦ۫۟ۙۖۛۛۚ";
                    break;
            }
        }
    }

    public void setLcFile(File file) {
        String str = "ۦ۟۬ۨۙۡۡۜ۬ۤۘۧۘۧۚۡۘۙۙۜۘۜۨۜۘۡۘۛۨۢۨۘۙ۠ۥۘ";
        while (true) {
            switch ((((str.hashCode() ^ 189) ^ 1001) ^ 589) ^ 426382395) {
                case 298703299:
                    str = "ۚۜۡۘ۟۬ۚۧ۠ۦۘۖۚ۠ۡۨۨۘۥۘ۠ۥۙۥۘ۬۠ۖ۠ۙۡۘۛۘۜ۫ۖۜ۟۟ۢۦۡ۬ۦۤۜۘ";
                    break;
                case 1061758154:
                    this.lcFile = file;
                    str = "۠ۨۖۥ۟۟ۤۧۦۘۦۡۗۧۥۥۨۜۗۤۨۡ۬ۙ۠ۗۧۘۘۦۙۡۘۢۧۘۘۢۘۧۘۡۥ۠ۜۦ";
                    break;
                case 1469141372:
                    return;
                case 2066288175:
                    str = "ۗۧۦۘۖۦۡ۬ۜۥۘ۫ۙۖ۬ۡۛ۟ۡۜۘۡ۬ۘۧۡۘۘۚۡ۠ۙۛۜۘۥ۫ۥۘۤ۬ۥۘۧۘۧۘۤۖۦۤۦۘۘۚۜۧۘ۫ۚ۬";
                    break;
            }
        }
    }

    public void setName(String str) {
        String str2 = "ۤۤۜۘۛۡۤۡۤۙۨۧۦۘۢ۬۠ۦ۫ۜۘۘ۬ۡۤ۟ۧۛۖۦۘۙۨۘ۬۠ۘۧۙۨۥ۠ۖۘۤۤۚۡ۟ۤ۬ۘۘۛۤ۠ۦ۠";
        while (true) {
            switch ((((str2.hashCode() ^ 814) ^ 345) ^ 68) ^ 625574271) {
                case -1972006649:
                    str2 = "ۧ۟ۜۨۡۖۘۧۨۗۖۨۤ۟ۛۖۘ۬ۧۦۘ۬ۧۥۤۥۨ۫ۡۤۘۧۘۘۙۛۥۘۜۙۥ";
                    break;
                case -285000134:
                    this.name = str;
                    str2 = "ۥۧۜ۬ۢ۟ۢۢۦۛ۫ۦۨۦ۟ۦۙۗۙۖۘۗ۠ۥۧۜ۟ۘۖۡۘ۟ۤۦۘ۟ۚۥ۬ۧ۫ۨۛۥۘ";
                    break;
                case 1303734515:
                    return;
                case 1967914165:
                    str2 = "۬ۖۦۦۛ۟۠ۜ۫ۖۘۗۢۧۦ۬ۜۘۤۚۗۚۡۗ۠۟ۜۘۙۥۥۘۨۡۚۡۜۜۤۥۜ۫ۦۤۜۖۨۘ۠ۥۗ";
                    break;
            }
        }
    }

    public void setPropFile(File file) {
        String str = "ۖۘۡۚۨۥ۠ۖۘ۬۬ۗۛۧۜۘ۠ۘۥۘۜۦ۫ۨ۬ۖۨ۟ۨۘۙۛۥۡۨۜۘۤۢۘ";
        while (true) {
            switch ((((str.hashCode() ^ 932) ^ 526) ^ 125) ^ 908403971) {
                case -279707772:
                    str = "ۥ۫ۢ۟۫ۘۘۜ۟۟ۚۖۘۦۤۧۨ۟ۦۤ۬ۘۦۥۖۘۡۦۖۘ۬ۜۗۤۦۘۘۧۜۦ";
                    break;
                case 592797658:
                    return;
                case 741233912:
                    str = "ۧۢۦۘۧۙۗۨۛۥۥۦۘۧۧۦۘۗ۬ۜۘۥۙ۟ۗۤۜۖۨۤۢ۫ۖۚۧۨۖۨۘۦ۟۫ۗۖۘۘۖ۠ۘۘ۬ۦۚ۟ۡۡۘ۫۟۬";
                    break;
                case 1237522374:
                    this.propFile = file;
                    str = "ۢ۠ۘ۫ۤۜ۬ۦۨۘۗۢۨ۠ۘ۫ۤۗ۬۟ۗ۫۠ۥۘۛۨ۠۟۬ۚۤ۫ۡۘۙۦۤۨۧۦۨۚۗۖۤۦۙ";
                    break;
            }
        }
    }

    public void setRtdFile(File file) {
        String str = "ۥۤ۬ۨۡۘۙۧۘۘ۫۫ۚ۬ۘۡ۬۠ۨ۬ۦۦۘۥۙۨۘ۬ۦۦۘۚ۠ۤۜۥۘۗۦ۠۠ۥۦۘۨۙ۬ۗۘۛۜۖۘ";
        while (true) {
            switch ((((str.hashCode() ^ 870) ^ 331) ^ UiMessage.CommandToUi.Command_Type.SET_BACKCOLOR_VALUE) ^ 1614549189) {
                case -1067638291:
                    this.rtdFile = file;
                    str = "ۦۙۦ۟ۚۥۘۦۢۘۘ۬۟ۤۗ۠ۡۢۖۤۡۛۘ۬ۦۜۘۦۤۨۘۙۘۗ";
                    break;
                case -389803420:
                    str = "ۦ۠ۥۘۥ۟ۡۡۘۗۢۨۘۥۤۨ۬ۥۢۖ۠ۡۘ۬ۘۜۘ۬۟ۛۦۖ۫۬ۢۖۛۧۛۙۢ۟ۛۗۘۘ۬۫ۨۘۗۗ۬ۨ۫ۨۘ۠ۙۦۘ";
                    break;
                case -65392743:
                    str = "۠ۢۨۘ۠ۙۘۜۙۨۖ۬۬۠۬ۚ۬ۢۚۧۡۦۡۡۨۡۨۢۡۤ";
                    break;
                case 947371611:
                    return;
            }
        }
    }

    public void setSelId(String str) {
        String str2 = "۠ۤۨۦۤۦۚۥۛ۟ۢۜۘۥۦۡۚ۬ۥۘۖۢۜۚۜۤ۠ۛۘۘ۫ۢۘۨۡۘۘۦۥۖ";
        while (true) {
            switch ((((str2.hashCode() ^ 53) ^ 509) ^ 257) ^ 147607154) {
                case -1613004682:
                    return;
                case -846236304:
                    this.selId = str;
                    str2 = "ۜۧۜۥۜۥ۫ۢۤ۬۫۟ۜ۟ۜۘۘ۟ۙۧۢ۟ۧۜۧۘۖ۬ۢۜ۫ۡ";
                    break;
                case 221100671:
                    str2 = "ۚ۟ۢۤۖۜۘۧۧۘ۬ۖۖۘۗۦۙۖ۠۬ۖۘۦۦۖۘۧۖۨۘۦۜۖۨۤۦۗۜۙ۟۫ۡۘ۠ۢۥۘۙۛۚۤۘۘۘۘۧۨۡۛۚ";
                    break;
                case 1907844126:
                    str2 = "۬ۜۥۘۡ۠۫۫ۛۦۢۨۧۜۘۥۘۖۨۧۙۢۡۘ۟ۛۜۙۛ۠ۛۘۘ";
                    break;
            }
        }
    }

    public void setSize(String str) {
        String str2 = "ۢ۟ۜۘ۟ۤۥۘۘۤۦۛۚۡۘۡۧۨۡۥ۫ۢۦۥۘۙۧ۫ۖ۬ۧۦۛۘۛۥۛۨ۟ۚۨ۫ۤۥۡۘ";
        while (true) {
            switch ((((str2.hashCode() ^ 179) ^ com.anythink.expressad.video.dynview.a.a.w) ^ 330) ^ 1153095763) {
                case -1835632173:
                    return;
                case -909440085:
                    str2 = "ۥۡ۠ۜۖۨۘ۠ۘۧۘۙۚۡۖ۫ۦۘۜۦۜۚۤۨۘۡۦۚۥۦ۫ۙ۠ۗۚۗۧ۬ۢۚۡ۬ۦۘۤۖۜۦۘۦۘۧۘ۟";
                    break;
                case -434480708:
                    this.size = str;
                    str2 = "۟ۤۖۘۜۧۜۨۚۥۜۚۢۘۧۖۘ۬ۤۦۘۙۧۥۘ۟ۜۘۨۖۘۡۜۜ۬ۚۢۧۜۧ";
                    break;
                case -357177077:
                    str2 = "۫ۧۥۙۤۜۘۡۚۨۘۨۤۖۨ۬ۙۖۜۘۙ۫ۦۖۖ۫ۘۘۙۜۘۘۛۥۛۚۦۥۘۚۨۙ۬ۙۘۘۘۖۨۙۙ۠ۥۡۚ۬ۙۖ";
                    break;
            }
        }
    }

    public void setUiFile(File file) {
        String str = "ۜۨۜ۫۬ۥۦ۬ۜۖۖۘۙۚۧ۟۫ۦۘۢۦۨۘۢۥۦ۠ۜۚۦۘۜ۟ۦۘ۟ۨۦۘ۬ۚۧۘۡۨۘ";
        while (true) {
            switch ((((str.hashCode() ^ 504) ^ 879) ^ 292) ^ (-1931123305)) {
                case -1742042016:
                    this.uiFile = file;
                    str = "ۘۗۙۧۥۡۤۖۙۡۖۢۦۜ۟ۘۤۖۘ۟ۨۚ۠ۨۥۨۛۗ۬ۖۨ";
                    break;
                case -1250320598:
                    return;
                case -283831529:
                    str = "۟ۙ۫ۛۤ۠ۛۦۜۧۥ۫ۗۜۚۧ۫۫ۧۧۨۘۢۦۛۨۡۡۥۘۡۦۦۦۘۖۥۜۗۡۙۢۗۖۘ";
                    break;
                case 1217567552:
                    str = "۫ۙ۫ۤۦۦۧۤ۠۬۟ۚۦۖۛ۟ۜۛۘۥۜۗۛۙۜۛۜۜۜۚۘۨۘۘۛ۠ۦ۠ۘۗۥ۬ۜۥۡۘۥۖ۟ۙۢۘ۫۬ۜ";
                    break;
            }
        }
    }

    public void setUipFile(File file) {
        String str = "ۖۗ۬ۗۥۘۡۙۙۜۚۥۘۦۙۨۘۛۧۦۘۦۛ۠ۖ۬۫۫ۨۘۗ۠ۨۘ";
        while (true) {
            switch ((((str.hashCode() ^ 248) ^ 813) ^ 336) ^ 399408818) {
                case -26465439:
                    str = "ۤ۬ۖۘۚ۟ۘۘۧۙۛۗ۫ۗۚۥۢۥۦۦۘۨۙۖۘۨۜۘ۠ۙۛۤۖۗ۫ۚۘۘۚۗ";
                    break;
                case 926655268:
                    return;
                case 1691617032:
                    str = "ۚ۟ۜۙۡۡۘ۟ۢۚ۬ۧۨۘۥۛۨ۟ۘۥۨۡۜۘ۬ۤۗ۫ۧۙۜۧۤۨۦۡۘۨۙۧ۬ۘۘ۬ۚۦۢۡۡۤۘۤ";
                    break;
                case 1820810412:
                    this.uipFile = file;
                    str = "ۛۖۦ۬ۘۨۦۚۜۚۚۜۘ۟ۨۡۘۗ۟ۘۘ۟ۙۥۘۤ۠۠ۜۥۥۘۗۚۘ۠ۛۥۥۥۜۨۤۘ۠ۖۙۗ۠۬۟ۛۨۘ۟ۙ";
                    break;
            }
        }
    }

    public void setVersion(String str) {
        String str2 = "۠ۨۜۘۘۦ۟ۚۢۘۗ۬ۢ۟ۥۛ۬ۜ۠ۘۙۤۢۘۘۙ۠ۖۘۨۛۙۨۦۘۚۖۖۤۗۘۘ۟ۧۥ";
        while (true) {
            switch ((((str2.hashCode() ^ 397) ^ 115) ^ 798) ^ (-1463189821)) {
                case -1894287022:
                    str2 = "ۚۛۧۗۙۥۘۨۧۨۘۜۦۡۘۨۘۧۢۧۥۘ۫۫ۦ۠۬ۥۙۚۚۖۛ۠ۗۡۜۢ۬ۚ";
                    break;
                case -176579960:
                    this.version = str;
                    str2 = "ۤۜۙ۟ۢۦۡۜۖۘ۫ۙ۬ۨ۫ۦۘۡۦۘۥۦ۠ۛ۠ۦۘۧ۟ۥۘۙۨۡۘ۬ۡۜۘۛۦۧۧۤۚۗۚۡۨۚ۠ۘۢۨۘ";
                    break;
                case 328130439:
                    return;
                case 1927983860:
                    str2 = "ۡۖ۫ۥ۟ۗۛۡۦۨۤۙۢۘۘ۬۬ۨۘۖ۬ۦۦۛۗۧۘ۠ۨۦۘ";
                    break;
            }
        }
    }

    public String toString() {
        StringBuilder sb = null;
        String str = "۬ۧۚۡۢۨۖۚۖۚ۬۬۟ۙۘۜۗ۠ۚۡۙۗۡ۫ۚ۟ۖۘۨۗۥۜۜۧۘۢ۟ۜۘ۬ۧۨۦۜ۫ۧۧۤۘۙۜۘ";
        while (true) {
            switch ((((str.hashCode() ^ 237) ^ 308) ^ 787) ^ (-595477509)) {
                case -2053706180:
                    sb.append(this.size);
                    str = "۬ۦۖۚۦۛ۠ۖۡۘ۬ۤۨۢۛۗۦۡۗۗۖ۠ۧۨۘۨۖۙۗۡۦۘۧۤ۟ۙ۠ۘۘ";
                    break;
                case -1969747084:
                    sb = new StringBuilder();
                    str = "ۛ۟ۨۘ۫ۘۥ۫ۨۨۘۦ۫۠ۗۙۥۘۗۤ۫ۥ۠ۨۘۥ۟ۖۢ۟۠ۤۡ";
                    break;
                case -1743747805:
                    sb.append(", uiFile=");
                    str = "ۙ۬۠ۡۛۗۦۙۨۛۤۧۗۛۦۛۤۘۘۗۧۛۛۧۜۘۥۨۘۡ۠ۦۘ";
                    break;
                case -1609980598:
                    sb.append(this.uipFile);
                    str = "۬ۥۜۘۘ۟ۢ۠۟ۦۢۡۧ۫ۡۨۘۚۢۥۚۧۦۘۙۢۦ۬ۦۥۘ۠ۗ۫ۛ۠ۘۥۛۦۘۢۦۘۖۧۢ";
                    break;
                case -1541984091:
                    sb.append('\'');
                    str = "ۤۦۘ۟ۦ۟ۗۗ۟ۤۦۥۘۤۗۜۜۗۨۘ۬ۡۤۘۤۖۧۜ۠ۡۦۘۢۨۡۙۡۡ۟۟ۖۤۙ";
                    break;
                case -1497804378:
                    sb.append(this.selId);
                    str = "ۖۗۤۜۜۢۛۨۡۘ۠ۤۡۘۨۨۥۘۚ۫ۢۚ۬ۡۘۡ۟ۡۘۚۖۡۙ۟ۖۘۨۦۡۘۡ۫ۡ۟۟ۘۘۥۘۘۜۤۧ۠ۥۦ";
                    break;
                case -1465539881:
                    sb.append(this.version);
                    str = "۠ۢ۬۬ۦۖ۬ۤۥۦۨۘۖۧ۬ۤۗۥۘۛۗۤۧۖۘۥۨۢۥۢۗۢۢۤۖۚۜۘۢ۫ۘۘۖۙۥۥۚۖۤۜۡۨۗۦۨۛۦۘ";
                    break;
                case -1215146794:
                    sb.append(this.atcFile);
                    str = "ۙۡۢۢۗۖۘ۫ۧۨۘ۬ۥۦۘۡۘۚۨۡ۟ۛ۫ۖۡۧ۠۠ۙۜۗۤۜۘۖۡۡۜۥۤ";
                    break;
                case -1202866102:
                    sb.append('\'');
                    str = "ۢۖ۬ۤۖۖۘۨۛۘۘۤۦۜۨۘۜۘۡۤۤۙۢۧۤۛۘۛۚۥ۟ۡۥۘۡ۫ۘۦ۟ۥۘۨۥۨۘۗۚۨۘ";
                    break;
                case -1200431900:
                    sb.append(this.bestResolution);
                    str = "ۡ۫ۡۘۡۢۨۘۥۚۧۚۗۦۘۖۚۜۚۥۘ۬ۖۥۘ۠ۜۜۗۧۧۢ۟";
                    break;
                case -1018951276:
                    sb.append(this.id);
                    str = "۬ۧۛۛۘۧۘۖۦۡۘۘۦۡ۫ۙۘۘ۫۠ۢۨۢۨۙ۫۟ۘ۫ۧۤ۫";
                    break;
                case -898482772:
                    sb.append('\'');
                    str = "ۛۢ۟ۥ۫ۗۚۥۨۘۢۚ۟ۧۨۨۤۦۦۢۡۥۘۥۥۤ۬ۛۤ۠ۦۘۘ";
                    break;
                case -722363706:
                    sb.append(", name='");
                    str = "۫ۚۡۘ۫۬ۨۘۡۖۜۢۜ۠۟۟ۡۦۘۚۥۘۧۧۥۥۡۘۘۙۙۖ";
                    break;
                case -522176599:
                    sb.append('\'');
                    str = "۫۬ۥۥۘۗۚۧ۫ۜۤۖۘ۠۠ۡۦۨۘۘۚۗ۠ۧۢۚ۠ۨۤۖۘۜ";
                    break;
                case -331450377:
                    str = "۬ۘۘۘۢۛ۠ۡ۠ۗۜۢۙۛ۬ۧۨۧۦۢۨ۠ۧۙ۫ۦۗۢۜۢۧۥۤۦۙ۟۫ۡۧۥ۠ۙۢۗۢۥۖۧۥ۫ۚ۫ۦۧ";
                    break;
                case -206032899:
                    sb.append(", fileVersion=");
                    str = "۬ۜۥ۬ۦۘۚۢ۫ۙۢۢۥۤ۟ۨۗ۟ۡۦ۫ۤۥۘۘ۠ۙۘۘۥ۬ۖۘۛۛ۟۠۫ۚۢۧۡۘ۫ۦۙ";
                    break;
                case -172083212:
                    sb.append(this.uiFile);
                    str = "ۡۘۦۘۨۧۚۘۥۥۖۙۜۘۛۘۥۛۜۘۘ۟ۛۚ۟ۜۘۥۛۨۘۖۡۤۤۙ۠ۡۡۦۗۧۡۘۡۛۡۘۢۧ۬";
                    break;
                case 73427425:
                    sb.append(", infoFile=");
                    str = "ۜۡۘ۟۬ۘۢۗۜۙۖۘۥۜۧۛ۬ۨۦۜۧۘۘۖۨ۟ۜ۠۫ۛۨ۠ۧۢۙۧ۠ۧ۟ۦۘۡۡۦۘ۫۟ۜۨ۠ۢۦۙۤۙۖۘ";
                    break;
                case 396192844:
                    sb.append(", cfgFile=");
                    str = "ۥۜ۫ۖۢ۟۬ۤ۫ۖۜۡ۬ۢۖۘۧۨۥۘۥ۬ۜۘۡۚۡۘۤ۬۟ۤ۠۟ۧۨۧۘۛۛ۠";
                    break;
                case 479806743:
                    sb.append(this.appId);
                    str = "۟۬ۙ۫۫ۥۘۨۡۦۦۤۥۘۢۡۨۚۖ۫۠۬ۨۘۗۘۙۗۚۥۘۦ۬۟ۥ۠ۚۢۚۤۜۧ۫ۗۡۘۚ۠ۛۡۜۘ";
                    break;
                case 596448206:
                    sb.append('\'');
                    str = "ۖۡۧۘۛۚۜۥۡۜ۫ۙۨۚ۬۬ۧۥۤۚۛۨۜۥۢ۬ۦ۬ۜۙۧۗۘۘۡ۟ۨ۫ۚۖۛۥۨۘ";
                    break;
                case 596989052:
                    sb.append(", version='");
                    str = "۟۫ۘۘ۬۫ۚۥۖ۫ۥۜۡۘۛۦۘۧۥۧۘۘۨۜۗۛۛۨۜۢ۬ۜۤ۬ۦۧۦۡۖۘۛۦۚۤۥ۠";
                    break;
                case 678580426:
                    sb.append(", propFile=");
                    str = "ۦ۠ۜ۠ۤ۫ۦۡۘۧۜۖۦۡۘۘۘۘ۟۟۟ۡۛۚۛ۫ۖۘۚۦۨۘۢۖۥۨۢۥۘ۠ۡۜۖ۠ۥۘۧۡۙۚۢۦۘ";
                    break;
                case 835441887:
                    sb.append("Script{changeFileList=");
                    str = "ۡۨۨۘ۟ۢۧ۠ۥۛ۫ۖۙۖۤ۫ۖۡۘۦۤۗۚۜۜ۫ۤۡۛۦۘ۬ۤۚۢۛۘۨ۬ۛۤۡۢۙ۬ۦۘۧۖۘۘۨۢ۬۫۟ۤ";
                    break;
                case 942812243:
                    sb.append(", uipFile=");
                    str = "۠ۨۜۦۜۘۘ۟۫ۡۘۜ۬ۚۦۛۨۘۘۧ۬ۖۨۜۗ۟۫ۤۜۡۧۗۘ۟ۤۢ۟ۥ۫";
                    break;
                case 949720084:
                    sb.append(this.name);
                    str = "ۙۘۧۘۜۚۖۘ۫ۖۘۦۙ۠ۨۘۦ۫ۘ۬ۤۢ۬ۜۖۖۘ۫ۚۥۗۢۧۖۛۥۘ۫ۨۥۘ";
                    break;
                case 967530461:
                    sb.append(this.propFile);
                    str = "ۗۜۖۘۡۥۚ۬ۚۦۚۖۡۘۛۜۨ۠۬ۚ۫ۨ۟۟ۙۡ۠۫ۥۙۡ";
                    break;
                case 997075287:
                    sb.append('\'');
                    str = "۟ۥۜۘ۬ۙۨۘۛۤۥۘۚۚۙۖۗۖۨۤۦ۬۟ۨۗۜۤ۠ۙۛ۫۬ۢۛۜۧۘ۫ۙۢ۫۠ۘۡۨۧۘ";
                    break;
                case 1051884484:
                    sb.append(MessageFormatter.DELIM_STOP);
                    str = "ۛ۫ۨۤۜۘۘ۟ۢۘۘۚ۬ۛۡۖۘۡۢ۫ۗۘۥۢۧۙۦۙۡ۬۫ۖۘۗۧۘۘۡۢۦۘۘۤۥۘۙ۫ۦ";
                    break;
                case 1061881257:
                    sb.append(this.changeFileList);
                    str = "۫ۨ۟ۧ۠ۘۜ۫ۜۘۤۦۦۘۤۖ۟ۚۦۜۘ۠ۜۦۧۗۥۘ۠ۨۛۗۗۨۘۘ۟ۗۡۡۘ";
                    break;
                case 1134120254:
                    sb.append('\'');
                    str = "ۗۖۢۘۡۧۙۢۛ۫۠ۡۡ۟ۖۘۤۤۖۘۤۢۖۡۙۦۘ۫ۨۥۘ۬۫ۥۘ";
                    break;
                case 1288821197:
                    sb.append(this.cfgFile);
                    str = "ۧ۠ۡۘۧۧۗۢ۠ۗ۫ۨۘۘۢۧۦ۬ۖ۠ۨۡۧۖۘۨۘۨۗۗۛ۫ۖۙ۠ۗۦۖۘ۟ۦۛۛۤۛ";
                    break;
                case 1308031502:
                    sb.append(", rtdFile=");
                    str = "ۧ۠ۦۘۡۘۜ۟ۢۥۚۧۘۖۧ۟ۧۚۧ۟ۘۜۘۤۢۤ۟ۨۘ۫۫ۡۘ";
                    break;
                case 1520461324:
                    sb.append(", id='");
                    str = "۫ۡۨۘۢ۫ۚ۫ۚ۫ۖ۟ۥۥۥۢۦۘۡۤۜۘ۫ۧۖ۟ۨۘۘۚۚ۠";
                    break;
                case 1816783395:
                    sb.append(this.lcFile);
                    str = "ۡۢۖۚ۟ۨۡ۫ۖۘۛۥۘۘۤۙۦۘۜۜۚۖۙۨ۟ۢۧۙۦۛۘ۬ۘۘ۟ۡۦ۬ۗ";
                    break;
                case 1819240105:
                    sb.append(this.fileVersion);
                    str = "ۦ۬ۡۘۧۡۧۘ۫ۛۦۨۜۛۨۤۢۢۧۜۖ۠ۜۦۡۥۜۢۥ۬ۦۦۧۡۤ۬ۖ۟۟ۧ۬ۗۡ";
                    break;
                case 1859125525:
                    sb.append(this.infoFile);
                    str = "ۧۛۖۘۧۗۘۘۡ۠ۥۘۛۙۖۨ۟ۘۘۧ۫ۧۛۙ۫ۛۖ۠ۨۘۧۘ۟ۖ۟ۤ۟ۖۦ۫۫ۖۗۡۢۤۘۘۖۡۗۛۤۢۦۥۦۘۧۥۜ";
                    break;
                case 1888312493:
                    sb.append(", description='");
                    str = "ۙۢۨۘۦۦۨۘۜۨۖۦ۟ۨۛۛ۟ۦۗۜۤۧۘۘۘۙۗۤۖۚۗۧۨ";
                    break;
                case 1892105828:
                    sb.append(", size='");
                    str = "ۨۖۘۘۡۘۢۜۧۖۘ۟ۛۜۘۙۦ۠۠ۦۗۦۧ۬ۥۨۘۘۡ۬۠ۙۤۙ۬ۡۘۢۙۖۘۗۖۙ۬ۥۘۘۖۖۘۘۙۨۘۘ";
                    break;
                case 1896699013:
                    sb.append(", bestResolution=");
                    str = "ۜۗۜۢ۠ۜۡۛۙۤۨۖۘۥۤۖۘۧ۬ۚۚۤۢ۫ۥۡۘ۫ۤۨۚۨۥۘۥۙۚۢۛۡ";
                    break;
                case 1901498763:
                    sb.append(", atcFile=");
                    str = "ۡۨۧۘ۟ۘۥۜۨۧۛۤۙۜۤ۫ۢۨۜۤ۬ۥۘۚۤۦۘۧۘۜۜ۬ۙ۬ۛۡۥۖۧۘۜۛۦۘ۠ۖۘۛۨۤۖ۬ۦ";
                    break;
                case 1947056385:
                    return sb.toString();
                case 1987773096:
                    sb.append(", selId='");
                    str = "۠ۗ۬ۛۜۨۘۖۛ۟۟ۙۜۘۙۥۡۘۦۛۡۙ۬ۚ۬ۚۙۦۨۘۨ۫ۡۢ۟ۢۙۖ";
                    break;
                case 2008493177:
                    sb.append(", lcFile=");
                    str = "ۡۡۙۦۦۡ۟ۙۥ۠ۜۤۡۗۚۢۨ۠۫ۤۥۛۧ۠ۧۛ۬ۛۘۧۙۤۦۘ";
                    break;
                case 2010438607:
                    sb.append(this.rtdFile);
                    str = "ۙۗۜۦ۫ۘۘ۟۠ۥ۟۫ۡۘۥۤۚۧ۠ۨ۬ۧۙۥۙۨۚۚۡۘۗۜۡۡۙۜۘ۠ۖ۬ۢ۠۬ۚ۠ۚۨ۫ۜۦۘۡ۫ۙۥۛۦۘ";
                    break;
                case 2059191972:
                    sb.append(", appId='");
                    str = "۫ۧۨۘۖۡۖ۫۬ۡۛ۫ۢۛۜۘ۟ۡ۠ۧۚۜۘۜۖۦۚۦۛۤۙ۬۠ۦۧۗۘۙۛۘۘۨ۟ۜ۫۬ۘۘۖۙۘ";
                    break;
                case 2097245464:
                    sb.append(this.description);
                    str = "۫ۜۦۘۗۛۥۘۚ۠ۛۜۨۤۛۡۜۘۚۢۥ۠ۛۘۖۘۧۨۤۖۗۘۖۨۦۘۗۦۥۛۛۗۡۧۨ۠۫ۤ۠ۧ";
                    break;
            }
        }
    }
}
