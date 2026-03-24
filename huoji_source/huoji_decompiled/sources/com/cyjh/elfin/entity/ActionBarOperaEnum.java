package com.cyjh.elfin.entity;

import androidx.core.view.PointerIconCompat;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import com.github.kevinsawicki.http.HttpRequest;
import java.io.Serializable;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes.dex */
public final class ActionBarOperaEnum implements Serializable {
    private static final ActionBarOperaEnum[] $VALUES;
    public static final ActionBarOperaEnum ALL_CHECK;
    public static final ActionBarOperaEnum CANCLE;
    public static final ActionBarOperaEnum CLOUD;
    public static final ActionBarOperaEnum CREATE_NEW_FILE;
    public static final ActionBarOperaEnum DELETE;
    public static final ActionBarOperaEnum EDIT_SCRIPT;
    public static final ActionBarOperaEnum HEAD_ICON;
    public static final ActionBarOperaEnum MOVE;
    public static final ActionBarOperaEnum NO_ALL_CHECK;
    public static final ActionBarOperaEnum RENAME;
    public static final ActionBarOperaEnum RUN_SCRIPT;
    public static final ActionBarOperaEnum SAVE;
    public static final ActionBarOperaEnum SEARCH;
    public static final ActionBarOperaEnum START_DOWNLOAD;

    static {
        ActionBarOperaEnum actionBarOperaEnum = null;
        ActionBarOperaEnum actionBarOperaEnum2 = null;
        ActionBarOperaEnum actionBarOperaEnum3 = null;
        ActionBarOperaEnum actionBarOperaEnum4 = null;
        ActionBarOperaEnum actionBarOperaEnum5 = null;
        ActionBarOperaEnum actionBarOperaEnum6 = null;
        ActionBarOperaEnum actionBarOperaEnum7 = null;
        ActionBarOperaEnum actionBarOperaEnum8 = null;
        ActionBarOperaEnum actionBarOperaEnum9 = null;
        ActionBarOperaEnum actionBarOperaEnum10 = null;
        ActionBarOperaEnum actionBarOperaEnum11 = null;
        ActionBarOperaEnum actionBarOperaEnum12 = null;
        ActionBarOperaEnum actionBarOperaEnum13 = null;
        ActionBarOperaEnum actionBarOperaEnum14 = null;
        String str = "ۤۖۜ۠ۥۦ۫ۖۡۛۜۗ۠ۚۧ۬ۚۜ۬۫ۗۨۜۗۢۛۦ";
        while (true) {
            switch ((((str.hashCode() ^ UiMessage.CommandToUi.Command_Type.FW_SET_WIDTH_VALUE) ^ PointerIconCompat.TYPE_GRAB) ^ 26) ^ (-2124432406)) {
                case -2145547228:
                    DELETE = actionBarOperaEnum4;
                    str = "۟ۚۜۘۘۡۨۘۧۗۥۘۘ۫ۜۘ۫ۗۨۘۡۛۨۛ۫ۖۘۥ۠ۢۧۥۖۖ۠ۙ";
                    break;
                case -2007911548:
                    actionBarOperaEnum = new ActionBarOperaEnum("CANCLE", 0);
                    str = "۬ۙ۟۠ۚ۫ۥۨۘۧۥۦۘۥۜۦۘ۠۟ۦۘ۟۠۠ۥۤ۫ۙ۟ۥۛۥۧ";
                    break;
                case -1930801675:
                    actionBarOperaEnum8 = new ActionBarOperaEnum("NO_ALL_CHECK", 7);
                    str = "ۨۤۙ۠ۚۖۘۘۘ۫ۨۖۗ۠ۗۧۡۡ۫ۙۦۘۘۡۡۡۥۙۦۘۧۜۥۘ۫ۙۙۜۜۛۗۧۙۨۙۨ";
                    break;
                case -1759819457:
                    actionBarOperaEnum9 = new ActionBarOperaEnum("CLOUD", 8);
                    str = "ۜۢۥۨۡۚۦۨۧ۫ۧۜ۟ۡۨۘۥۨۤۙۦۧ۬ۨۙۦۜ۫۬ۖۡ";
                    break;
                case -1747421055:
                    actionBarOperaEnum10 = new ActionBarOperaEnum("CREATE_NEW_FILE", 9);
                    str = "ۗۖۢۧ۫ۘۤۢ۬۬ۦۚۨۘۚۦۦۘۛ۫ۘ۬۫ۢۗۘۜۗۨۗۙۨۛۚۘۜۘۢۗۦۧۗۥۘۙۤ۫۬ۨۡ۠۠ۥۘ۫ۢۚ";
                    break;
                case -1152843707:
                    CANCLE = actionBarOperaEnum;
                    str = "۬ۗۦۘۧ۠ۦۘۘۗۤ۫ۧۚۨ۫۟ۥۗۜۘۢ۬ۖۘ۬ۤۥۖۤۙۥۧۦۘۖۚۡۙۨۢ۟ۥ۟۟ۦۙۛۖۘ";
                    break;
                case -1120567966:
                    actionBarOperaEnum3 = new ActionBarOperaEnum("RENAME", 2);
                    str = "ۧۦۘۘ۠ۤۨۘۦۢۖۢۦۡۘۘۦۚۘۡۖۘۧۜۜۘۘ۠ۖۙۥۘۖۛ۬ۨۘ۠ۛۙۡ۫ۗۢۖۨۗ";
                    break;
                case -1111089525:
                    actionBarOperaEnum6 = new ActionBarOperaEnum("EDIT_SCRIPT", 5);
                    str = "ۙۖۧۤۗۜۗ۬ۚۡۢۛۢۘۢ۠۠ۗۥ۬۠ۗۘ۬۫ۜۚۘۨۧۘۗ۬ۤۧۛ۬";
                    break;
                case -152801618:
                    actionBarOperaEnum4 = new ActionBarOperaEnum(HttpRequest.METHOD_DELETE, 3);
                    str = "۠۬ۚۙ۠ۤ۟ۘ۟ۨ۬ۧۦۤۙ۟ۥۘۡۙۚ۫ۨۥۘۦۢۖۘۘ۠ۜۘ۫ۧۦۘ۠ۦ۠ۙ۫ۘۘۦۘۧۜۚۜۨ۬ۨۘ";
                    break;
                case 30885735:
                    START_DOWNLOAD = actionBarOperaEnum14;
                    str = "ۖۤۧ۫ۨۥۘۧۤ۫۠ۖۧۧ۫ۡۥۖ۬ۙ۟ۥۚۚۤۗۘۥۧۗۦۘ";
                    break;
                case 72086602:
                    RUN_SCRIPT = actionBarOperaEnum11;
                    str = "ۢۛۘۘۡۧۘۖۚ۬ۧۛۡۘۤ۫ۤۜۦۘۙۨۨۢۚۜۙۛۨۘ۟ۖ۟";
                    break;
                case 172035449:
                    $VALUES = new ActionBarOperaEnum[]{actionBarOperaEnum, actionBarOperaEnum2, actionBarOperaEnum3, actionBarOperaEnum4, actionBarOperaEnum5, actionBarOperaEnum6, actionBarOperaEnum7, actionBarOperaEnum8, actionBarOperaEnum9, actionBarOperaEnum10, actionBarOperaEnum11, actionBarOperaEnum12, actionBarOperaEnum13, actionBarOperaEnum14};
                    str = "ۚۦۡۛ۠ۨۘۡۨۦۘۧۘۙۘۘۚۘ۫ۨۘ۟۠ۡ۟ۙۚۛۗ۫ۢۚۨۘۡۡۥ۫ۧۜ";
                    break;
                case 498142606:
                    actionBarOperaEnum12 = new ActionBarOperaEnum("HEAD_ICON", 11);
                    str = "ۜۤ۫ۧ۟ۨۘ۬ۧۨۘ۫۠ۘۘۖ۟ۧۥۧۜۘۡۨۖۧۤۦۜۨۚۜۜۡۦ۟ۨۘ۫ۙ۫";
                    break;
                case 727565044:
                    SEARCH = actionBarOperaEnum13;
                    str = "ۙۖۚ۟ۛۤۢۧ۠ۖۜۨۘۛۢۙۤۛۧ۟ۤ۬۫ۗ۬۫ۧۦۘۦۥۖۘ۠ۖۧۖۨۧۡۤ۫ۧۤۨ۠ۥۢۥۙۦۛۧۧۥ۟";
                    break;
                case 755995587:
                    actionBarOperaEnum14 = new ActionBarOperaEnum("START_DOWNLOAD", 13);
                    str = "ۦ۠ۘ۬ۗۢۦۥۡۤ۬ۤۚۙۦ۠ۧۥۥۡ۫۟۠ۚۧۖۘۡۧۨۢۡۙ۟۠ۜ۬ۘ۫ۦۧۛ";
                    break;
                case 781691924:
                    return;
                case 840434088:
                    CREATE_NEW_FILE = actionBarOperaEnum10;
                    str = "ۙ۟۫ۦ۠ۥۧ۬ۘۘۨۧ۫ۜۨۖۨۜۜۧ۫ۨۘۧۘۛۦۨۥۤۤ۟۬ۖۘ۠ۤ۠ۢۨۦۛۘۙۚۦ۟۠۟ۙ";
                    break;
                case 873876498:
                    actionBarOperaEnum5 = new ActionBarOperaEnum("MOVE", 4);
                    str = "ۛۢۡۛۡۨۘۙ۠ۘۘۦۦۤ۫۫ۚ۫۫ۗۡۙۖۗۧۖۗۗۘۡ۟ۙۖۥ۠ۡۨۦۖۤۙۥۙۖۘۜۤۨۚۢ۠ۛ۟ۢۤ۟ۘۘ";
                    break;
                case 931317032:
                    actionBarOperaEnum13 = new ActionBarOperaEnum("SEARCH", 12);
                    str = "ۢۢۦۘۚ۬ۖۡۦۘۢۢۤۧۦۘۤۨۦۗ۫ۨ۫ۡۗ۠۬۠ۡۥۥۧۧۜۙۥ۟ۨ۠ۙۚۜۤۢۗ۫ۤۚۖۢۦۘۧ۠۟";
                    break;
                case 1650199053:
                    MOVE = actionBarOperaEnum5;
                    str = "ۛۚ۠ۨۘۡ۫ۙ۠۠ۦۘۘ۠ۨۜۘۦۧۖۥۧۘۤۜۛۦۜۗ۬ۦۘۘ";
                    break;
                case 1681255116:
                    EDIT_SCRIPT = actionBarOperaEnum6;
                    str = "ۦۨۖۚ۟ۜۘۥۦۡۘۗ۫ۧۥۛۜ۫ۦ۫۟ۤۛۙۡۢۖۘۖ۬ۧۗۖۧۦۥۨۘۡۦۘۛۚۤ";
                    break;
                case 1867986409:
                    actionBarOperaEnum2 = new ActionBarOperaEnum("SAVE", 1);
                    str = "ۢۦۧ۟ۦۡ۟ۜۦۘۢۜ۬ۙۜۧۚۡۦۘۖۥۧۧۘۖۙۢ۟ۨ۬ۢۜۘۜۡۖۘ";
                    break;
                case 1927072522:
                    actionBarOperaEnum11 = new ActionBarOperaEnum("RUN_SCRIPT", 10);
                    str = "ۤۥ۠ۦۜۦۘۛ۫ۜۘۡ۠ۘۘۧۗۥۘۤۘۘۛۡۖۘۙۡۢۦۨۘۘۘ۬ۖۘۤۛۖۘۧ۠ۧۛ۠ۙۛۥ";
                    break;
                case 1971714496:
                    NO_ALL_CHECK = actionBarOperaEnum8;
                    str = "ۖۦۙ۬ۤۤۥۘۧۘۘ۟ۥ۫۟ۜۦۢۛۨ۬ۧۢۛۤۨ۠ۘۘۗ۟ۢۧۡۦۙۗۘۙۖ۬ۚۙۥ";
                    break;
                case 1982834425:
                    CLOUD = actionBarOperaEnum9;
                    str = "۬ۡۨۘۡۡۤۙۤۜۦۚۖۧ۠ۖۘۗۤ۬ۗ۠ۤۚ۠ۜۡۢۜ۟ۤۘۘۨ۠ۤۜۙۥۥۦۢۦ۟ۜ";
                    break;
                case 2040807960:
                    HEAD_ICON = actionBarOperaEnum12;
                    str = "۟ۤۜۦۛ۠ۛۦۤۢ۠ۨۙۡۙۛ۬ۥۘۗ۬ۗۨ۠ۧۚۜۖۘۜۡۖۘ۫ۛۥۤۢۤۙۨۖۘ۬ۢۢۨۢۗۨۡۦۘ";
                    break;
                case 2050005213:
                    ALL_CHECK = actionBarOperaEnum7;
                    str = "ۜۥۖۘۨۡۖۡۡۧۘۙۘۧۗ۬۟۬ۜۡ۠ۨۖۘۧۛۥۘۢۡۘۤۧۡۘ۟ۨۥۘۜۖۖۘۜ۬ۛ۫ۙ۟ۢۗۡۘۦۚۨۖۧ۬ۖۨۖۘ";
                    break;
                case 2094226048:
                    actionBarOperaEnum7 = new ActionBarOperaEnum("ALL_CHECK", 6);
                    str = "ۤۘۘۥۤ۫ۘ۠ۨۗۜۨۘ۠۬ۙۛۡۧۘۡۙۙۚ۫ۛۘ۫ۧۦۥ";
                    break;
                case 2127300711:
                    SAVE = actionBarOperaEnum2;
                    str = "ۢۛۢۚۘ۫ۥ۠ۜۘۤۘۛۥۡۢۨۗۨ۠ۡۡۘۡۘۡۘۧۨۗۤۙۨ۬ۜۖۘۥ۠ۢۤۦۘۤۖۡۘ";
                    break;
                case 2138585003:
                    RENAME = actionBarOperaEnum3;
                    str = "ۛ۬ۙ۫ۧۚۜۘۡۘۘۙۖۡۦۡۘۘ۬ۜۘۥۗ۬۟ۡۘۥۢۡۥۦۘۘۛ۬ۡۦۧۥ۟ۥۧۦۦ۬ۙۖۤۙۛۙ";
                    break;
            }
        }
    }

    private ActionBarOperaEnum(String str, int i) {
    }

    public static ActionBarOperaEnum valueOf(String str) {
        String str2 = "ۛ۬ۤ۠ۡۤ۬ۙۥۘ۠ۡۗۖۗۘ۫ۙ۟۠ۘ۫ۥ۫ۘۘۗۨ۠ۢ۬ۡۜۛ۫ۧ۫۟ۡۚ۟ۛۚ۫";
        while (true) {
            switch ((((str2.hashCode() ^ 54) ^ 1010) ^ 549) ^ (-1289545457)) {
                case -1472374263:
                    return (ActionBarOperaEnum) Enum.valueOf(ActionBarOperaEnum.class, str);
                case 1733532152:
                    str2 = "ۜۖۨۘۜۖۗۙۢ۠ۤۨۧۖۡۥۘۘۜۥۘۦۗ۬ۦۖۦۢۧۖۡۘۦۘۖۤۖۘۧۗ۫ۛۢۘۘۥۥ۟ۡۤۚۨۥۧۧ۫ۚۨۘۢ";
                    break;
            }
        }
    }

    public static ActionBarOperaEnum[] values() {
        while (true) {
            switch (((("۠ۦۢۚۦۛ۟ۨۤۨۛۖۘۢۧۜۘۧ۬۠ۦۢۜ۟ۢۜۤۧۖۘۧۢ۟ۦۡ۟ۘۥۚۚۡۤۛۛ۟ۗۖۜۘ۟ۥ۟".hashCode() ^ 934) ^ 530) ^ 709) ^ 575314073) {
                case -321667422:
                    return (ActionBarOperaEnum[]) $VALUES.clone();
            }
        }
    }
}
