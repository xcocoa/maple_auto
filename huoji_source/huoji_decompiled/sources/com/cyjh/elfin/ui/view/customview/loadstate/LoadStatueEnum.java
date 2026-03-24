package com.cyjh.elfin.ui.view.customview.loadstate;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes.dex */
public final class LoadStatueEnum {
    private static final LoadStatueEnum[] $VALUES;
    public static final LoadStatueEnum COMPLETE;
    public static final LoadStatueEnum EMPTY;
    public static final LoadStatueEnum FAILED;
    public static final LoadStatueEnum LOADING;
    public static final LoadStatueEnum NON;

    static {
        String str = "ۨۜۦۘۢۙۖۘۧ۬ۧۨۡۨۘۢۚۤ۬ۙ۟ۢۤۚ۫۫ۖ۠ۥ۬ۚۤۛۛۜ۬ۖۗۥ۬ۨۘۤ۫ۚۥۖۢۥۚ۫ۜ۟ۘۘۨ۫ۙ";
        LoadStatueEnum loadStatueEnum = null;
        LoadStatueEnum loadStatueEnum2 = null;
        LoadStatueEnum loadStatueEnum3 = null;
        LoadStatueEnum loadStatueEnum4 = null;
        LoadStatueEnum loadStatueEnum5 = null;
        while (true) {
            switch ((((str.hashCode() ^ 774) ^ 897) ^ 740) ^ 1921799965) {
                case -1915483754:
                    $VALUES = new LoadStatueEnum[]{loadStatueEnum5, loadStatueEnum4, loadStatueEnum3, loadStatueEnum2, loadStatueEnum};
                    str = "ۡۘ۫۬ۦۤۜۚۖۘۧ۬ۘۘۥۘۛۜۖ۬ۨۡۘۧ۠ۨۙۛۙۙۨ۠۬ۘ۠ۚۧۦۘۚۙۡۢۖ";
                    break;
                case -1702694801:
                    str = "۠ۘۦۘ۟ۖۜۨۨۨۗۧۖۚۤۚۚۘۨۘۡۚ۠ۚۤۢۛۤ۠ۚ۬ۡۘۡۥۖۘ۫ۖۥۘۙۢ۠ۦۢۚ";
                    loadStatueEnum3 = new LoadStatueEnum("FAILED", 2);
                    break;
                case -1539206534:
                    str = "ۢۜۚۙ۬ۨۖۖ۫ۥۙ۟ۤۗۖۘ۬ۨۡۘۖۜۘۗۜ۬ۤۙۛۧۜۢۖۗ۠ۦ۫ۦۘ۫ۨۧۘۜۤۨۖۧۦۚۖۥۘۜۨۡۘۥۘ";
                    loadStatueEnum5 = new LoadStatueEnum("NON", 0);
                    break;
                case -1210450580:
                    return;
                case -391902239:
                    loadStatueEnum = new LoadStatueEnum("COMPLETE", 4);
                    str = "ۜۘ۫ۧۤۘۧۨۗۜۤۧۙۖۥ۠ۦ۬ۜۘۡۜۚۜ۠ۖۡۖۢۡۘ";
                    break;
                case -381043983:
                    str = "ۙ۬ۦۧ۟ۜۜۡۘۘۡ۬ۘۘۦۤۜۘۛۖ۟ۛۢۘۛۨۡۖۦ۫ۤۥۖۘۢۧۨۘۢ۟ۤ۫۠ۨۧۖ۟ۡۙۥۛۧ۠";
                    loadStatueEnum2 = new LoadStatueEnum("EMPTY", 3);
                    break;
                case 1581979:
                    NON = loadStatueEnum5;
                    str = "ۘۧۦۖ۫۟۫ۥۜۘۦۛۡۤۢۚۨ۠ۥ۫۟۟ۥۙۜۘۥۢۡۛۚۧ";
                    break;
                case 150999194:
                    EMPTY = loadStatueEnum2;
                    str = "۟ۛۡۘۚۗۖۘۙۧۤۘ۬ۨۘۘ۠ۧۜ۬ۧۢۥۘ۠ۨ۟ۧۦۨۡۦۖۧ۫ۨۛ۠ۚۡۘۖۘ۫ۚۢ";
                    break;
                case 493694923:
                    FAILED = loadStatueEnum3;
                    str = "۠ۦ۟ۗۥۛۗۧۧۨۛۚۜ۠ۖۤۥۙ۫ۛۨۘۙۡۜۙۗۛۚۖۘۘ";
                    break;
                case 561514869:
                    str = "ۡۢۖۘ۠ۛ۫ۖۜۛ۟ۛۡ۠ۖۜۛ۫ۖۘ۠ۖۖۤۥۖۘۖۥۧۘۘۡۦۡۖۗۘۥۘۤ۠۫ۧۚۨۘۜۤۨۘ۬۟ۘۘ";
                    loadStatueEnum4 = new LoadStatueEnum("LOADING", 1);
                    break;
                case 948553761:
                    LOADING = loadStatueEnum4;
                    str = "ۨۡۜۘۜۗۤۨۛ۟۫ۡۡۙۛۨۘۗ۫ۜۘۤۜۥۘ۠ۨۥ۟۫ۦۡۖۚۖۥۘۚۥۙ۠ۤۜۘۖۤ۬";
                    break;
                case 1072913436:
                    COMPLETE = loadStatueEnum;
                    str = "۫ۛۖۘۡ۠ۤۧۨۡۘۚ۠ۘۘۤۘۛۖۦۛۙۗ۠ۦۨۗۨ۟ۦۘۖۖۡۘ";
                    break;
            }
        }
    }

    private LoadStatueEnum(String str, int i) {
    }

    public static LoadStatueEnum valueOf(String str) {
        String str2 = "ۡۗۥۘۜۜۦۙ۫ۚۜ۫ۤۙۙۘ۟ۘۘۘۙۚۗۥۢۘۡ۫ۥۘۗۦۥۘ۟ۨۡۘۖۙ۟ۡۖۛۙۛۦ";
        while (true) {
            switch ((((str2.hashCode() ^ 248) ^ 574) ^ 105) ^ (-1590987942)) {
                case -1945709830:
                    str2 = "ۜ۟ۚ۟ۚ۬ۙۧۖۘۢۢۢۥ۟ۛۨ۠ۡۘ۠ۖۜ۟ۢۤ۫ۚۚۥۧۡۘ۫ۚ۬ۨۦۙ۬۬ۖۘ۠۠ۖ۫ۦۨۨۢۢۡ۫۟ۦۚ۠";
                    break;
                case -723893982:
                    return (LoadStatueEnum) Enum.valueOf(LoadStatueEnum.class, str);
            }
        }
    }

    public static LoadStatueEnum[] values() {
        while (true) {
            switch (((("ۦۛۜۜۢۘۡۗۦۥۧۜۨۦۜۘۖ۬ۙۛۜۘ۬ۦ۬ۤۨۤۙۨۖۘ۬۠ۡ۫ۘۛۨۛۧۢۛۦۘۧۘۘۘۛۜۛ".hashCode() ^ 333) ^ 593) ^ 493) ^ 1542670390) {
                case 2034650826:
                    return (LoadStatueEnum[]) $VALUES.clone();
            }
        }
    }
}
