package z2;

/* JADX INFO: loaded from: classes2.dex */
public interface ji {
    public static final int OooO = 32;
    public static final int OooO00o = 0;
    public static final int OooO0O0 = 1;
    public static final int OooO0OO = 1001;
    public static final int OooO0Oo = 1002;
    public static final int OooO0o = 114;
    public static final int OooO0o0 = 1003;
    public static final int OooO0oO = 115;
    public static final int OooO0oo = 31;
    public static final int OooOO0 = 33;
    public static final int OooOO0O = 34;
    public static final int OooOO0o = 35;
    public static final int OooOOO = 37;
    public static final int OooOOO0 = 36;

    void callback(int i, String str);

    void doSpecialFuction(int i, String str);

    String getForegroundPackage();

    String getRunningPackages();

    void inputText(String str);

    void keyPress(int i);

    void killApp(String str);

    void launchApp(String str);

    void onEngineStart(int i);

    void onKeyEvent(int i);

    void onPause();

    void onResume();

    void onScriptIsRunning();

    void onSetControlBarVisiable(int i);

    void onStartScript();

    void onStopScript(int i, String str);

    void onUpdateControlBarPos(float f, int i, int i2);
}
