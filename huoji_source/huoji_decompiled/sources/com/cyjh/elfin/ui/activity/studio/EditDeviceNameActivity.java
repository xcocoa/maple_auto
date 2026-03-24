package com.cyjh.elfin.ui.activity.studio;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import com.ac.R;
import com.anythink.basead.ui.GuideToClickView;
import com.anythink.expressad.video.dynview.a.a;
import com.cyjh.common.base.activity.BaseActivity;
import com.cyjh.elfin.entity.Script;
import com.cyjh.elfin.ui.view.customview.TitleView;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import z2.a4;
import z2.b7;
import z2.c5;
import z2.fh;
import z2.l10;
import z2.me;
import z2.qc;

/* JADX INFO: loaded from: classes.dex */
public class EditDeviceNameActivity extends BaseActivity implements View.OnClickListener {
    public static String Oooooo = null;
    public static final String OoooooO = "device_name";
    private TitleView OooooO0;
    private EditText OooooOO;
    private Handler OooooOo = new Handler();
    private ImageView Oooooo0;

    public class OooO00o implements qc.OooO00o {
        public final String OooO00o;
        public final EditDeviceNameActivity OooO0O0;

        /* JADX INFO: renamed from: com.cyjh.elfin.ui.activity.studio.EditDeviceNameActivity$OooO00o$OooO00o, reason: collision with other inner class name */
        public class RunnableC0176OooO00o implements Runnable {
            public final OooO00o OoooOoO;

            public RunnableC0176OooO00o(OooO00o oooO00o) {
                this.OoooOoO = oooO00o;
            }

            @Override // java.lang.Runnable
            public void run() {
                String str = "ۨۧ۬ۗ۠ۥۘۖۡۘۘۖۥ۬ۢۙۥۘۚۤ۠ۥۦۧۘ۬۟ۛۢۦ۬ۦۡۡۘ";
                while (true) {
                    switch ((((str.hashCode() ^ 49) ^ 30) ^ 811) ^ 385937975) {
                        case -1495106092:
                            str = "۟۫ۘ۠ۥ۟۠ۤۥۨۜۤۜۘۡۙۜۧۘۧۤۖۘ۫ۨۧۘۖۧۜۘۚۨۡۚۨۡۡۢۨۗۙۢۚۧۦۘ";
                            break;
                        case -1259258339:
                            c5.OooO0o0(this.OoooOoO.OooO0O0.getApplicationContext(), "修改成功！");
                            str = "ۛۚۗ۠ۧۧ۬ۖۗۛ۬ۖ۫ۡۦۘۙۚۦۘۘ۬ۡۘۘۨۘۘۡۥۡۘۦۘۛ۠۟۬۟ۧۜۘ۫۬ۦ۫ۧۛۦۧۖۘۙۖۘۗۤۤ۠ۥۨۘ";
                            break;
                        case 866355412:
                            return;
                    }
                }
            }
        }

        public class OooO0O0 implements Runnable {
            public final String OoooOoO;
            public final OooO00o OoooOoo;

            public OooO0O0(OooO00o oooO00o, String str) {
                this.OoooOoo = oooO00o;
                this.OoooOoO = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                String str = "ۛ۫ۙ۟ۧۧۘۨۜ۠۠ۙۙۘۘ۫ۖۢۡۙۢۛۜۘۧۚۡۘۗ۫۬ۜۤۤۗۙۘۚۚۜ۟ۦۘ";
                while (true) {
                    switch ((((str.hashCode() ^ 129) ^ 596) ^ 468) ^ (-1890532804)) {
                        case 266600626:
                            str = "۫ۚۥۢۨۘۘ۠ۖۜۘۤۥۨۘۥۗۥۨۥۥ۟ۗۡۘۡۘۜۘۗۚۡۚ۠ۤۧۤ۫ۤۤۤ";
                            break;
                        case 1357774358:
                            return;
                        case 2002574481:
                            c5.OooO0o0(this.OoooOoo.OooO0O0.getApplicationContext(), this.OoooOoO);
                            str = "ۘۘ۬ۖۖۤۘۘ۠۠ۡۡۘۡۨۖۘۥۨۚۡۡۢ۟ۖۨۘۨۢۥۘۤۢۡۘ۫ۦۘۜۧۢۗ۬ۖۘۤۧۜ";
                            break;
                    }
                }
            }
        }

        public OooO00o(EditDeviceNameActivity editDeviceNameActivity, String str) {
            this.OooO0O0 = editDeviceNameActivity;
            this.OooO00o = str;
        }

        @Override // z2.qc.OooO00o
        public void OooO00o(int i, String str) {
            String str2 = "ۧۥۥۘۘۖۨۘۦۤۜۘۢۧۧۧ۟۬ۡۚۙۢۙۙ۬ۦۦۘ۠ۘۚۡۖۤۜۧۥ۠ۤ۠ۤ۫ۧۤ۬۫۬ۚۙ۠ۡ۫";
            while (true) {
                switch ((((str2.hashCode() ^ 933) ^ UiMessage.CommandToUi.Command_Type.GET_UIP_DATA_VALUE) ^ me.o00000OO) ^ (-1556559656)) {
                    case -2037108663:
                        EditDeviceNameActivity.OooO0oo(this.OooO0O0).post(new OooO0O0(this, str));
                        str2 = "۟ۘۦۘ۟ۙۙۢ۬۟۟ۘۧۘۦۧۦۘۚۘۘۘۛ۟ۘۘ۠۠ۜۨۥۧۧ";
                        break;
                    case -457191136:
                        str2 = "ۦ۠ۗۤۜۦۘۚ۟ۘۘۛ۟ۖۘ۫ۛۥۖ۬ۖۨ۠ۨۚۡۛۥۢۜۧۡۜۛ۠ۨ۬ۡۡۙ۬ۗۨۙۨۘۘ۬ۦۦۥۖۘۜۤ۠ۙۜۡ";
                        break;
                    case -387887608:
                        str2 = "ۧۖ۠ۘۚۙۦۖۘۘۧۘۦۘۜۗۡۘ۫۟ۥۜۘۢۛ۫ۡۢۨۡۛۢۤۡۡۘ۟ۤۦۘۥۤۜۖۙۦ";
                        break;
                    case 328430523:
                        return;
                    case 1412697379:
                        str2 = "۟ۖۨۘۤ۟ۜۘ۠ۡۤۛۘۥۘۦۚۗۨ۟ۦۖۜۢۗۨۥۧۡۥۘ۫ۛۛ۟ۡۚۥۘۘۢۨۜO";
                        break;
                }
            }
        }

        @Override // z2.qc.OooO00o
        public void OooO0O0(String str) {
            String str2 = "ۧۨۥۘ۫ۗ۫ۜۛۦۘۥۙۥۘ۠ۡۥۘۙۧۡۥۡۡۧۚۢۨۘ۫ۗۥۖۙ۬ۢۦۤ";
            while (true) {
                switch ((((str2.hashCode() ^ a.s) ^ 425) ^ 966) ^ 618077010) {
                    case -1267675665:
                        str2 = "ۘۚۢ۠ۚۖۦ۟۬۬۬۟ۖۢۖۘۚۜ۠ۥ۬ۙۢ۫ۖۢ۠ۢۚۡۨ";
                        break;
                    case -1062386364:
                        EditDeviceNameActivity.OooO0oo(this.OooO0O0).post(new RunnableC0176OooO00o(this));
                        str2 = "ۗۥۡ۟۟ۘ۬ۜۧۙۜۘۤۜۛ۬۫۫ۛۢۡۘ۫ۦ۠ۥۙۨ۬ۧۡ";
                        break;
                    case -149032488:
                        this.OooO0O0.finish();
                        str2 = "۟۟ۚ۟ۗۗۙۖۘۘ۟ۚ۫ۨۚۛۛۖۨۖ۬ۨۚۡۘۘۙۘۚۗۥۘ";
                        break;
                    case 678333077:
                        str2 = "ۚۘۘ۠ۘۤ۫ۙۨ۬ۢۡۘ۬ۚۖۦۦۖۘۦۢۗۙۜۘۘۛۖۡۘ۠ۖۖ";
                        break;
                    case 1665098211:
                        return;
                    case 2125112400:
                        l10.OooO0o().OooOOOO(new fh(10004, this.OooO00o));
                        str2 = "۟ۜۢۡ۟ۨۚۖۨ۠ۧ۬۠ۜۛۧۘۤۤۗۜۙۛۘۘ۬ۧۙۚۥۥۧۙ۬۟ۖۤۖ۟ۗۤ۟ۨۘ";
                        break;
                }
            }
        }
    }

    public class OooO0O0 implements Runnable {
        public final EditDeviceNameActivity OoooOoO;

        public OooO0O0(EditDeviceNameActivity editDeviceNameActivity) {
            this.OoooOoO = editDeviceNameActivity;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str = "ۖۦۡۨ۫ۧۚ۟ۜۤۥۤۚۜۡ۟ۘ۠ۚۥۨۘۤۘۦۧۡۧۘۤۤۥۘۡۢ۬ۜۜۖۘۗۚ۟۟۟ۜ";
            while (true) {
                switch ((((str.hashCode() ^ me.o00000Oo) ^ 80) ^ 655) ^ 614580552) {
                    case 629308867:
                        return;
                    case 1200211338:
                        c5.OooO0o0(this.OoooOoO.getApplicationContext(), "脚本数据出错");
                        str = "۟ۙۦۖۚ۫ۛۥۛ۬ۢۧۥۧۥۙۖۨۘۡۤۖۙۧۙۨۛۦۘۘۖۤۘۥۨ۬ۜ";
                        break;
                    case 2069481387:
                        str = "ۘۚۦۘۨ۟ۥۤۡۡۘۨۘۜۘ۟ۨۧۘۙ۠ۨۘۛۤۨۘۚ۟ۡۘ۟ۖۖۙۡۦۨۚۛۤۛۢۗۡۨۢۧۛۡۨۘۙۖۧ۬۟ۛۦۗۥ";
                        break;
                }
            }
        }
    }

    public class OooO0OO implements TitleView.OooO0O0 {
        public final EditDeviceNameActivity OooO00o;

        private OooO0OO(EditDeviceNameActivity editDeviceNameActivity) {
            this.OooO00o = editDeviceNameActivity;
        }

        public /* synthetic */ OooO0OO(EditDeviceNameActivity editDeviceNameActivity, OooO00o oooO00o) {
            this(editDeviceNameActivity);
        }

        @Override // com.cyjh.elfin.ui.view.customview.TitleView.OooO0O0
        public void onClick(View view) {
            String str = "ۖۡۡۘۗۜۥۨۢۦ۟ۦ۬۟ۦۘۗۤۜۢۦۡۛۧۨۦۤۧ۫ۜۙۨۦۙۜۦۗ";
            while (true) {
                switch ((((str.hashCode() ^ 54) ^ 219) ^ 356) ^ 1801470651) {
                    case -2098976265:
                        str = "ۖۤ۠ۜۚ۟ۨۥۘ۟ۦۜۘۤۥۛۨۦۚ۬ۘۢۢۛۨۘ۫ۡ۫ۥۧۡۘۙۜۥۘۙۘۘۦۧ۬ۥۤۥۘ۠ۧۡۘ۬۠ۨۘ";
                        break;
                    case -1331016530:
                        str = "ۥۚۥۘۚۥۗۧۖۧۘۨۘۙۚ۟ۦۘۨ۟ۡۘۥۦ۠ۘۦ۫ۚۚۘۘۗۖۥۚۛۘۛۘۖ۬۠ۜۘۥۨۜۘ۫ۦۡۦۧ۫";
                        break;
                    case -783474991:
                        return;
                    case 395894849:
                        this.OooO00o.finish();
                        str = "ۥ۠ۙۗۜۡۘ۬۟۫ۜۛۖۡ۟۬ۦۗۥۗۖۨۧۥۘۘۘۡۖۘ۬ۦۥۘۡۡۚۜ۫۫ۢۖۤۢۢۚۧۦۢۤۥۛ";
                        break;
                }
            }
        }
    }

    public class OooO0o implements TitleView.OooO0o {
        public final EditDeviceNameActivity OooO00o;

        private OooO0o(EditDeviceNameActivity editDeviceNameActivity) {
            this.OooO00o = editDeviceNameActivity;
        }

        public /* synthetic */ OooO0o(EditDeviceNameActivity editDeviceNameActivity, OooO00o oooO00o) {
            this(editDeviceNameActivity);
        }

        @Override // com.cyjh.elfin.ui.view.customview.TitleView.OooO0o
        public void OooO00o(View view) {
            String str = "ۘۤۨۘۧۘۖۙۙ۬ۗۛۤۜۢۦۖ۫ۘۘۖۖۘۘۢ۫ۥۧۙۘۗۨۗ";
            while (true) {
                switch ((((str.hashCode() ^ 844) ^ 867) ^ 813) ^ (-1389253246)) {
                    case -638393880:
                        EditDeviceNameActivity.OooO0oO(this.OooO00o);
                        str = "ۢۙۨ۠ۙۥۘۦۥۡۘۡۖۥۘۨۜۙۢۖۦۚ۠ۜۘ۬ۖۤۢ۠ۥۘۛۧۦۘۘ۠ۜۡۡۜۘۙۤۤۚ۟";
                        break;
                    case -221384572:
                        str = "ۙۤۛ۬ۥۛ۟ۘ۟ۙۗۚۡ۫ۘۘۖۖۢ۬ۦ۟ۨ۠ۦۘۦ۬۬ۧ۬ۛۥۥۨۧۛۥۘۛۤۛۨۦۨۘ";
                        break;
                    case -151738739:
                        return;
                    case 871673984:
                        str = "ۖۘۥۘۧ۟ۨۧۘۛۛۛ۫ۜۚۚۛۘۧۢۙۡۘۖۧۨۘۖۖۨۖۢۨ۟ۨۖۦۦ۠ۨۚۙۥۖ۫ۥۢۘۘۘۤۨۘۚۡۗۗۤۙ";
                        break;
                }
            }
        }
    }

    static {
        String str = "ۙۢۨۘۚ۬ۖۘ۟ۨۘۜۤۥۘۘۧۜۘۖ۫ۚۨۧۦۘ۟ۜۧۤ۬ۘۘۨ۫ۤۡ۠۠ۗۛۦۘ";
        while (true) {
            switch ((((str.hashCode() ^ 100) ^ GuideToClickView.a.e) ^ a.w) ^ (-41028175)) {
                case -2143443210:
                    Oooooo = EditDeviceNameActivity.class.getSimpleName();
                    str = "ۦۚ۫ۥۜۖۘۢۥۖۥۘۢۖ۬ۜ۫ۨ۬۠ۘۜۘۤۡۥ۬ۜۧۤۨ۫";
                    break;
                case -225395453:
                    return;
            }
        }
    }

    public static void OooO(Context context) {
        String str = "۠ۧ۠ۡۜۗۦۘۜۘۢ۬ۘ۫۟ۦۘۚۤۗۙۤۖۚۚ۬ۗۗۗ۟۠ۨۘۙۤۨۘۢۡۜ";
        while (true) {
            switch ((((str.hashCode() ^ 602) ^ 777) ^ 747) ^ (-120540164)) {
                case -1946636578:
                    return;
                case -1897867231:
                    str = "ۖ۬۬ۘۦۥ۠ۛ۠ۧ۫۠۠ۥۙۤۖۘۘۜۥۢ۟ۧۡۨۦۘۨ۟ۘۖۥۥۗۤۦۖۖۦۘ۫ۙۘ";
                    break;
                case -1867061788:
                    context.startActivity(new Intent(context, (Class<?>) EditDeviceNameActivity.class));
                    str = "۟ۦۚۥۖۤۤۗۛۤۗۡۙۡۨۘۚۢۖ۬ۧۜۗۥ۬ۡۧۨۙۛۦۨۛۦۘۘۡۧۢۚۡ۬ۧۖۘۙۖۦۡۤۡۘۤۘۙ۫ۗۤ";
                    break;
            }
        }
    }

    public static /* synthetic */ void OooO0oO(EditDeviceNameActivity editDeviceNameActivity) {
        String str = "ۡۚۡۙۜ۬ۨۦۦۜ۫ۤۧ۫ۡۡۘۛۥۥۜۘ۫ۖ۬ۥ۟۟ۢۡۖۧۨۡۡۦۛۦۙۖۘ۠ۥۡۢۛۥۘۥ۬ۡ";
        while (true) {
            switch ((((str.hashCode() ^ 185) ^ 624) ^ 430) ^ (-1575906370)) {
                case -2122764669:
                    editDeviceNameActivity.OooOO0o();
                    str = "ۤۜۦۘۡۜۧۘ۫ۤ۬ۘۘۡۦۧ۠ۘ۟ۡۖۘۖۙ۬ۦ۬۬ۖۢۨۥۤۡ۬ۖ۫";
                    break;
                case -212846940:
                    return;
                case 1627729126:
                    str = "ۛ۫ۗ۫۫ۖۘۖۘۦۦۢ۠۠ۥۨۘۖۗۧۛ۠ۤۚۡۖۛۢۥۗۢۡۘۨۙۘۘۚۨ۬ۗۜۜۘۢۨۦ";
                    break;
            }
        }
    }

    public static /* synthetic */ TitleView OooO0oo(EditDeviceNameActivity editDeviceNameActivity) {
        String str = "ۙۧۦۘ۠ۦۦۘۤ۬ۥۧۡۦۘۧ۠ۖۘۥۛۥۘۤۦۗۨۡۢۡۨۚ۟ۖۥ۫ۘۖ۫ۧۖۘۖۨۡۘۥۘۦ";
        while (true) {
            switch ((((str.hashCode() ^ 721) ^ 561) ^ 107) ^ 1707085747) {
                case -1452973838:
                    return editDeviceNameActivity.OooooO0;
                case 289443103:
                    str = "۬ۧۜۘۨۢۗۚ۫ۨۦ۬۠ۡۙۖۘۤۗ۫ۡۛۘۘ۬ۜۥۘ۟ۜ۬۬ۘۧۗ۠ۘۛۘۜۛۛۖۘۙۡۘۗۗۥۖۡۚ";
                    break;
            }
        }
    }

    public static void OooOO0(Context context, String str) {
        Intent intent = null;
        String str2 = "ۨۡۤ۟ۖ۟۠۬ۥۖۢۛۡۗۨۘ۬ۧۡۡۦۦۘۡۚ۫ۢۙۖ۬ۜۡ";
        while (true) {
            switch ((((str2.hashCode() ^ 736) ^ 878) ^ 423) ^ 501420611) {
                case -1774134591:
                    intent.addFlags(268435456);
                    str2 = "ۛ۠ۡۦۚۜۡۜۧۘۖۜ۫ۥۗۦ۠ۢ۟ۢۙۡۘ۫۬ۦۖۨۡۘۛۜ۠ۛۛ۠ۘۢ۟ۘۖۘۘۙۜۗ";
                    break;
                case 459260234:
                    str2 = "ۛ۟ۦۙۤ۠ۛۥۜۘۚۙۢۜۙۤ۠ۖۘ۠ۡۡۘۧۘ۟ۢ۠ۗۜۥۢ۫ۜۛۖ۫ۘ۟ۚ۬ۥۙۚۖۚۨۖۗ";
                    break;
                case 503679596:
                    str2 = "ۚۢۘۘۥ۬ۜۘۙۗۦ۬۟ۚۚۡۥۤۨۡۡۧۘۦ۫۬ۚۚۖۘ۫ۚۨۜۤۡۘۘۖۤۢۦ۫ۗۥۦۘ";
                    break;
                case 660098182:
                    context.startActivity(intent);
                    str2 = "ۡۧۡۘۘۦ۟ۨۘۢۨۜۘ۫ۙۙۗۙ۟ۤۘۖۘۛۛۙ۬ۨۨۤۜۘۥۚ۠ۚۙۤۡۥۗۖۜۧۘۡۙۜۘ۟ۨۥۘۨۖۘۢۛۤ";
                    break;
                case 914535347:
                    intent = new Intent(context, (Class<?>) EditDeviceNameActivity.class);
                    str2 = "ۤۛ۠ۨ۫ۥۘۦۤ۠ۗۢۛۗ۬ۜ۠ۙۦۙۗ۟۫ۚۙۘۘۘ۠ۖۜۢۢۚ۫۫ۙۧۦۘ۫۠ۜۘۤۢۜۢۗۖۘ";
                    break;
                case 1115777726:
                    intent.putExtra("device_name", str);
                    str2 = "ۧۘۘۡۚۖ۠ۗۧۥ۫ۖۦۡ۫۠۬ۧۥۡۘۘۗ۟ۢۥۜۘ۫ۚۛۥ۬ۖۘۡۦۤۦۥۗۥۡۧۗ۠۠ۘۧۘۢۛۧۡۛ۠";
                    break;
                case 1760525576:
                    return;
            }
        }
    }

    private void OooOO0O() {
        OooO00o oooO00o = null;
        String str = "ۦۘ۠ۢۡۦۘ۫ۢۡۙ۬ۗۦۨ۟۬ۜ۫ۧۥ۠ۨ۬ۧۛۡۘۢۤ۬۫ۧ۠ۧ۫ۘۘۦۦۦۙۜۤۧۧ۫ۢ۠ۡ";
        while (true) {
            switch ((((str.hashCode() ^ 460) ^ 94) ^ 838) ^ (-909933038)) {
                case -1358698807:
                    this.OooooO0.setVisibilityRightImage(4);
                    str = "ۧۗۢۖۛۖۘۧ۫۬ۥ۫ۘۖۢۜۘۚ۬ۛۚۙۢۙۨۡۘۗۜۘۦۨۛۜۡۧۗۥۤ";
                    break;
                case -937307866:
                    this.OooooO0.setVisibilityLeftImage(0);
                    str = "ۗ۬ۨۦۧۦۦ۟ۡۘۤ۠ۜ۟۠۬ۖۡۥۘ۫ۦۡۦۨۘۘۛ۬ۢۨۤۢۢۘۥۘۛۧ۠ۛۜ۠ۧ۠ۖۘ";
                    break;
                case -777163025:
                    this.OooooO0.setOnLeftImageViewListener(new OooO0OO(this, oooO00o));
                    str = "۬ۘۘۘۢۜۨۖ۟ۖ۟۬ۧۗ۠۟۟ۖۨۧۖ۠ۦۗۨۘۚۚۚۨۧۨۘۘ۟ۡۨ۫۬ۖۤۦۘۚۨ۟ۜۖۜۘۜ۠۠ۥۜۨۚۦۨۘ";
                    break;
                case 1123401229:
                    str = "ۘۥۙ۬ۙۨۘۜۜۖۖۗ۫ۨۨ۠۠ۚ۟ۤۖۘۨۥ۬ۢ۟ۨۨۡۨۘۖ۫ۖۤ۠ۡۘۨۙۥۙۦۨ۬ۥۧۨۘ";
                    break;
                case 1189518019:
                    return;
                case 1963591278:
                    this.OooooO0.setOnRightTextViewListener(new OooO0o(this, oooO00o));
                    str = "ۥۘۖۘۡۨۤۘۘۢۨۥۥۛ۫۠ۜۦۧۘۙۘۨ۬ۛۖۧۜۚۜ۬ۧۢۨۘۡ۟ۢۗۤۖۘۛ۬ۨۘ";
                    break;
                case 2004918087:
                    this.OooooO0.setleftImage(R.drawable.ic_back);
                    str = "ۗۨۨۘ۟ۜۜۗۡۘۧۖ۟ۨۖ۟ۘۡۡۧۤۖۖۙۚۦ۫ۤۚۗۜۘ۫ۚۙۦۖۦۘ۟ۙۡۘۗۜۥۘ۬ۧۛۚۤۖۘۗۚۨۢۖۘ";
                    break;
                case 2055198410:
                    this.OooooO0.setTitleText(R.string.edit_device_name_title);
                    str = "۫۟ۥۦۧۨۘ۠ۜۦ۫۠ۨ۠ۜۘۘۧۨ۬ۡۘۥۧۚۖۦۨۖۘۛۢۘۖ۠ۥۢۡۘۛۚۛۢۙۡ";
                    break;
            }
        }
    }

    private void OooOO0o() {
        String str = "۟۠۬ۖۢۡۙۢ۟ۨۥ۠ۢۜ۫ۗۨۥۧۨۘۘ۬ۦۧۘۥۜۜ۫۠ۘۡ۠ۛۛ۫ۢۡۜۙۦۖۛۧۘۘ۬ۘۚ";
        Script scriptOooO0oO = null;
        String string = null;
        while (true) {
            switch ((((str.hashCode() ^ UiMessage.CommandToUi.Command_Type.SET_TEXT_VALUE) ^ 308) ^ 646) ^ 1712405257) {
                case -1873735886:
                    String str2 = "ۖۘۖۤ۠۟ۥۤۘۘۘۨۡۙۨۧۨۚۨۘۦۗۨۥۢۧۘ۬ۙۜۨۘۘۧۜۨۚۚۨۜۧۚۜۨۘۜۢۥۡ۟۠";
                    while (true) {
                        switch (str2.hashCode() ^ (-1348606257)) {
                            case -731315917:
                                String str3 = "۬ۚۨۘۡ۬۟ۥۗۨۘۤۨ۠ۨۨۢۜ۠۟ۢ۟ۗۤۖۢۡۤۥ۫ۢۖۙ۬ۥۘۦۗۨۙۧۖۘۛۧ۬۟ۦۡۘۙ۟۫";
                                while (true) {
                                    switch (str3.hashCode() ^ (-1590713235)) {
                                        case -1758363852:
                                            str2 = "ۗۗ۫۠ۖۛۥۗۗۥ۫ۜۤۜۘۘۧۢۨۘۧ۟ۜۢۨ۠ۘ۟ۥۤۖۧۘ";
                                            break;
                                        case -1705047276:
                                            str2 = "۟ۨۡۘۡۤۗۤۗۜۡۗۙۢۚۥۘۤۙ۟ۜۙۜۛۦۘ۟ۚ۫ۖۢۥ۟ۛۥۘ۫ۚۜۘۨۛ۠۟ۜۘۥۤۤ۬ۚۗ";
                                            break;
                                        case -1679039723:
                                            str3 = scriptOooO0oO != null ? "ۚۧۦۘ۫۠ۥۘ۬ۡۦۙۨۘۘۧۡۖ۠ۜۘۥۖۜۘۧۚ۟ۢ۫ۗۗۛۙۛۧ۠ۧۨۤ" : "ۥۤۥۘۘۙۢۗۥۦۘ۠ۜ۫ۙۗۛ۟ۚۗ۟ۡۤۘ۟ۢۡ۟ۖۘۗۛۥۛۦۛۡۦۥ۠ۦۨ۬ۦۚۖۢۨۘۥۦۧ۠ۤۖۧۨۙ";
                                            break;
                                        case 91085009:
                                            str3 = "ۧۥۘۜۤۗۢۨۥۘۜۨۖۖۢۖۘۧۧۖۘۚ۠ۥ۫ۘۙۤۨۡۘۦۘ۟";
                                            break;
                                    }
                                }
                                break;
                            case 1014122584:
                                str = "ۙۘۘۢۙۧۚۗۛۨۡۦۘ۫ۧۨۘۗۖ۫۫ۗۥۘ۫ۛۚۙ۬ۜۘۛۙۖۘۥ۟۟ۨ۬۬۬۠ۦۜۢۧۗۨۡۚۨۥ";
                                continue;
                            case 1065169490:
                                str2 = "ۙۘ۠ۖۧ۫۠ۖۨۘۦ۠ۥۘۗۜۨۘۡۙۖۧ۫ۙۙ۟ۡۘ۬ۤۜۧۡۧۘۛ۟ۖۗۦۦۖۧۡۘۢۡۡ۟ۨۛ";
                                break;
                            case 1085793435:
                                str = "ۧۦۡۘۡۦ۫ۨۙۜۘۧۚۜۘۚۤۗۗۙ۫ۜۦۥۘۧۚۦ۬ۛ۟ۛۛۗ۟ۗۦۛ۫ۡۘۚۖۥۘ۫ۢۦۘ";
                                continue;
                        }
                    }
                    break;
                case -1406644411:
                    str = "ۜ۠ۥۘ۫ۖ۠۠ۧۦۗۡۘۤۡۥۘۥۥۤۨۡۧۙۗ۟۠ۛۧۧۜۤ۟۬ۛۤۧ۬ۨۛۡ";
                    break;
                case -138587751:
                    scriptOooO0oO = b7.OooO0Oo().OooO0oO();
                    str = "ۤۖۡۖۛۖۘ۬ۧۤۤۛۖۘۙۦ۬ۖۤۤۖ۠ۦۖۗۤۜۥ۫ۥ۟ۥۘۦۖۥۧۤۦ";
                    break;
                case 218612206:
                    qc.OooO0o().OooOO0(this, scriptOooO0oO.getId(), string, new OooO00o(this, string));
                    str = "۬ۜۨۘۤۤۨ۠ۛۨۘ۫۠ۗۨۘ۟ۙۦ۟ۤۜۘۨۚ۬ۤ۠ۧۥۖۘۘۙ۟ۖۘۢۙۖۘۛۥۡۘۨۗۘ۫ۚۨۘۢۦ۫ۡ۟ۤۨۙۦ";
                    break;
                case 439000320:
                    return;
                case 472773291:
                    str = "ۚۤۜۗۜۢ۬ۤۜۘۗ۬ۦۜۧ۠ۛۜۡ۬ۜ۟۫ۥۛۦ۠ۨۘ۬۬ۜۘۜۧ۬ۤۦ۟ۛ۫ۧۘ۫ۦۘ";
                    break;
                case 653286269:
                    str = "ۗ۬ۡۘۜۖۘۘ۬ۚۗۖۚۖۧۨۘۘۢۨۜۦۦۛۗۙ۫ۛۚۗۤۥ";
                    string = this.OooooOO.getText().toString();
                    break;
                case 960131310:
                    a4.Oooo00o(this, string);
                    str = "۬ۥ۟۟ۙ۫ۤۦۙ۬ۙۘۢۧۥۜۘۘۧۨۜۘۨۜۢۥۤۢۧۥۤۤۥۗ۠ۖۘۢۤۧۙۗۜ۫ۦۘۖۗۜۘ۬ۡۜۘۨ۫ۢ";
                    break;
                case 1414968499:
                    this.OooooO0.post(new OooO0O0(this));
                    str = "ۚۤۜۗۜۢ۬ۤۜۘۗ۬ۦۜۧ۠ۛۜۡ۬ۜ۟۫ۥۛۦ۠ۨۘ۬۬ۜۘۜۧ۬ۤۦ۟ۛ۫ۧۘ۫ۦۘ";
                    break;
            }
        }
    }

    private void initData() {
        String stringExtra = null;
        String str = "ۖ۟ۡۘۗۨۙۗ۫ۖۡ۬ۥۘۢۡۦۘۗۨۤۡۧۜۙ۫۫۬ۦۖۜۗۢۘۦ۟ۧۡۘۥۧۚۧۨ۫ۖ۫ۖۘۛۜۛ";
        while (true) {
            switch ((((str.hashCode() ^ 614) ^ 173) ^ 650) ^ (-791167240)) {
                case -2041582433:
                    this.OooooO0.setRightTvText(R.string.save);
                    str = "ۡۛۙۤۗۘۦۤۜۘۚ۫۟ۛۗ۟ۙۘۨۘ۬ۗۨۡۢۖۘۡۢۜۘ۬ۢۧ";
                    break;
                case -1386355197:
                    this.OooooOO.setText(stringExtra);
                    str = "۟ۢۦۘۡۧۢۗۧۤۥ۫ۙۗۚۗ۬ۥۘۡ۬ۨۦۥۥۘ۟ۚۖۖ۟ۜۘۗ۬ۡۘۜۙۤۡ۟ۛۚ۫ۖۦۢۛۛۨۘۦۘۜۘ۫۬۬";
                    break;
                case -1379257547:
                    str = "۟۬ۢۥۘۗۛۢۡۘۦۧ۠ۜۗۜۘ۬ۜۗۧۡۨۘۙ۟۫ۡۤۖ۠ۘۜۘ۫۠ۧۗۖ۫ۤۘۤ۬ۦ";
                    break;
                case -821940695:
                    this.OooooOO.setSelection(stringExtra.length());
                    str = "ۖۙۜۧ۬۠۬۫ۖۘۤۨۜۘ۬ۘۢۖۛۦۘۙ۠ۨۘۗۢۦۘ۟ۘۥ۟ۛۥ";
                    break;
                case -581559704:
                    stringExtra = getIntent().getStringExtra("device_name");
                    str = "ۤۥۥۘ۫۬ۖۘۥۢۡۘۘۘ۟۫۫ۧۖۘۘۚۡۙۢ۬۬۠ۙۨۘۗۛۛ۬ۖۘۡ۬ۘۘۨۘۢۧۧۜۘۘۦۘۥۙۚۢۗۖۘۚۖۘ";
                    break;
                case -396194528:
                    String str2 = "۬۠ۖۛۤۜۘۛۧۙۖۛۤۦۨۡۘۡۢۥۘۚۖ۬۫ۜۘۖۥ۠ۘۛۘۗۖۥۚ۟ۖۘ۬ۚۦۘۢۡۤ";
                    while (true) {
                        switch (str2.hashCode() ^ (-1790914434)) {
                            case -1892027847:
                                str = "ۖۙۜۧ۬۠۬۫ۖۘۤۨۜۘ۬ۘۢۖۛۦۘۙ۠ۨۘۗۢۦۘ۟ۘۥ۟ۛۥ";
                                continue;
                            case 509931143:
                                String str3 = "ۗۛۚۥۥۜۖۦۙۛ۟ۡۘۢۨۗۘ۠ۨۘۙۦۡۘۧۦ۟ۘۡۛۨۘۘۖۨۖۘۨۦۧۥۘۥۘۙۙۖۘ۫ۛۙۧۢۖ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-1502102744)) {
                                        case -2026949050:
                                            str2 = "۟۠ۨۘ۟ۤ۬۠ۢۦۜۨۙۨۜۛۘۤۤۢۖۨۤۛۚۢۛۧ۠ۚۨۛۤۡۘ۫۬ۢۜۦۥۥۗۡۤ۫ۦۜۚۦ۠ۚۤ۠ۜ";
                                            break;
                                        case 66518304:
                                            str3 = !TextUtils.isEmpty(stringExtra) ? "ۚۥۖۘۘۡۜۘۦۙۡۚۢۜۘۡۨۦۡ۫۫ۗ۫ۚۜۤۦۘۘۙۧۗۘۘۘۜۦۖۘۨۜۘ" : "ۤۤۖۘ۟۬ۜۘ۫ۦۜ۟ۡۦۛ۟ۦ۫۠۫ۜ۟ۤ۟۟ۤۙۛۘۦۤۢۢۜۘۘۤۜۘۛۖۦۡۙ۠ۨۨۦۤۥۡۘ";
                                            break;
                                        case 429019463:
                                            str3 = "۠ۖۛۚۙۥۘۙۙۥ۠۠۫ۡۛۡۜۗۧۜۦۦۢۚ۠ۘۡۡۦۚۗۘۨۡۧۤۦ";
                                            break;
                                        case 446255993:
                                            str2 = "۬۬ۦۘۢۦۦۘۙۤۡۢۚۛۚۧ۟ۘۢ۟ۖۡۢۧۦۘۘ۟ۗۘۖۘۘۖۧۘۨۜۘۡ۫۟۫ۧۘۘۜۚۘۦۗۢۤ۠ۘ۬ۧۨ";
                                            break;
                                    }
                                }
                                break;
                            case 1363034774:
                                str2 = "ۥۤ۠۠ۚۢ۠ۦۢۖۧۤۚ۬۠ۧ۠ۨۘۙۦۚۖۨ۬ۢۜۢۡ۫ۖۜۜۜۦ۬ۛۤۤۢۖۨ۫ۡۛ۬ۘۧۘۖۘۚۡۦ۠";
                                break;
                            case 2059566954:
                                str = "ۜۘۨۘ۠ۙۛۖۜۨۧ۠ۡۥۦۘۨۤۦۘۗۙۦۧۤۜۘۦ۟ۥۘۡ۠ۦۚۚۡۘۛۥۙۜۗۦۡۙۖۤۛ۬ۗۤۘ";
                                continue;
                        }
                    }
                    break;
                case 185345762:
                    return;
                case 1707474049:
                    this.OooooO0.setVisibilityTvRight(0);
                    str = "ۡۚۤۖۡۛۤۘۖۦۙۜۦۖ۠ۛۚۖۦۧۧۤۖۚۚ۫ۧۚۧۘ۬ۨۗۧ۠ۖۧۚۦ۬ۘۘۥۧۜۘۥۜۡۘ";
                    break;
            }
        }
    }

    private void initListener() {
        String str = "ۖۦۦۥ۫۟ۙۥۘۘۜ۠ۚۡۡۛۡۦۚۢۧۡ۬ۤۗۗۢ۟ۜۥۘۦ۠ۦۘۚۦۘ";
        while (true) {
            switch ((((str.hashCode() ^ 811) ^ 799) ^ 957) ^ (-143740751)) {
                case -1470751716:
                    this.Oooooo0.setOnClickListener(this);
                    str = "ۗۡۖ۟ۢۘۥۨۡۘۦ۟۫ۙۜۜ۠۠ۥۘۤۦۧۘۨۥۦ۠ۚ۠ۦ۬ۦۡۖۥۡۥۚ۫ۡۨۘۡۛۦۘ";
                    break;
                case 870548505:
                    str = "ۨۙۤۥۚۨ۬ۧۜ۠ۤۜ۬ۤۤۥۚۥۡۚۥۙۥۜ۬ۙۘۧۛۘۘ۟ۚۖۚۘ۟ۜ۬ۚۨۨ";
                    break;
                case 1261744691:
                    return;
            }
        }
    }

    private void initView() {
        TitleView titleView = null;
        String str = "۠ۦۤۜۥۥۘۤۥ۬ۦۧۜۘۗۘۖۘۢۛۡۨۢ۠۬ۘۙۥ۟۫ۛ۟ۡۘ";
        while (true) {
            switch ((((str.hashCode() ^ 660) ^ 629) ^ 324) ^ (-963350774)) {
                case -1166455775:
                    str = "ۤۚۙ۠ۤۧۢۧۤۙۛۖۘۨ۬۟ۘۛۚۨۚۗۡ۫ۧۤۖۗۜۦ۠ۖۨۡۘۥۚۧۧۙۦۘۚۙۥۘ";
                    break;
                case -540835785:
                    titleView.setVisibilityTvRight(0);
                    str = "ۡۨۘ۬ۖۥۘ۠ۘۘۤۘ۟۟ۖۢۦۧۥۖۘ۬ۦۙۦۢۦۘۥ۟ۧۢ۫ۛۧۜۚۨۙۡۗ۬ۨۤۥۤۤ۬ۜ۠ۜ۟ۨ۫ۦ";
                    break;
                case 373188312:
                    str = "ۦۖۦۘۗۜۘۘۧ۬ۜ۟ۚۧۨۚۗۜۦۗۚۘۧۜۦۢۙۤۥۖ۬";
                    titleView = (TitleView) findViewById(R.id.titleView);
                    break;
                case 505733821:
                    return;
                case 1052521140:
                    this.OooooOO = (EditText) findViewById(R.id.et_device_name);
                    str = "ۢۖۖۤ۟ۖۘ۠ۢۧۘۤۤۧۥۘۘۨ۬ۧ۟۟ۖۧۙۥ۬ۙۖۡۘ";
                    break;
                case 1510287506:
                    this.OooooO0 = titleView;
                    str = "۬۠ۡۥۙۗۚ۫ۢۦ۫ۦ۬ۘۘۢۗۡۘۖۡۚۙۛۘ۬ۨۦ۬ۛۘ";
                    break;
                case 2029556063:
                    this.Oooooo0 = (ImageView) findViewById(R.id.iv_clear);
                    str = "ۤۗۡۨۦۥۘۗۨۙ۫ۙ۫ۥۡۥۘۗۥۨۘۙ۟ۡۘۢۤۗۘۢۧۖۛ۬۬ۚۚۢۦ۠ۦۘۜۥۡۘ۫۫ۢۧۚۘۘ";
                    break;
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String str = "ۧۚ۬ۨ۠ۚ۠ۘ۟ۢ۟ۖ۬ۙۦۘۦۛۧ۠ۤۜۧۦۢۗۢ۬ۛۥۘ۫ۢۜۘۛۙۨۥۨۦۖۙ۫ۦۡۦۘۚۜۡۘ";
        while (true) {
            switch ((((str.hashCode() ^ 475) ^ 318) ^ 897) ^ 701175206) {
                case -1966767684:
                    String str2 = "ۚۙۦۘۦۦۨ۟ۡۢۖۨۛۘۡ۬ۦۘ۫۬ۥۘۧ۠ۗۥۘۧۚ۠ۜ";
                    while (true) {
                        switch (str2.hashCode() ^ (-1169909249)) {
                            case -2129794904:
                                str = "ۢۢۖۖۡۨۘۙ۫ۨۖۙۦ۠ۘۡۦۘۢۗۙۡۘۘ۟ۘۢۨۛۙ۫ۖۘ۬ۢۘۥ۬ۡۡ۠ۨ۠ۜ۫ۥۛ۬۠۟ۨۛۢۘ۬ۨۥ";
                                continue;
                            case 155306657:
                                str2 = "۠۫ۦ۫ۨۢۥۚۢۜۤ۟ۙۜ۟ۦۨۨۘۦۨۤۧۜ۬ۚۡۜۘۧ۫۫ۤۧ۟ۨۦۙۨ۫ۗۗ۠ۡ";
                                break;
                            case 564922823:
                                str = "ۧۤۦۜۦ۟ۧۨۙ۫ۗۜۡۤۥ۟ۘۥۡ۟۟ۥۖۥ۫ۤۤۦ۟";
                                continue;
                            case 1100686376:
                                String str3 = "ۖۥۙۖۢۜۦۡۡۘۥۙۥۘۗۙۘۘۢۦۢۙۙۥۘۤ۠ۘۘۥۦۨۗۢۛۨۨۦۗ۬ۘۘ۠ۛۖۖۥۨۘۥ۠ۨۘۜۤۚۦۡۖۖۤ";
                                while (true) {
                                    switch (str3.hashCode() ^ 1961869515) {
                                        case -1870872567:
                                            str2 = "ۦ۠ۘۘ۟ۨۖۘ۫ۧۨۨۢۜۘۤۘۡۛ۠ۜۜۜۗۗۛۨ۫ۜۖۘۢۖۨ۠۬ۥۜۗۚۢۙۨۘۘۡۨۘۧۚۡۜۡۡۘ";
                                            break;
                                        case -1073236035:
                                            str3 = view.getId() != R.id.iv_clear ? "ۘۖۜۛ۠ۖۡۥۧۘۙۚ۟۟ۘ۬ۤۧۡۘۤۛ۫ۢۗۙۡۢ۬ۗۜ۟" : "ۛۙ۟ۢۘۦۧ۟ۡۖۘۢۢۗۛۙۡۖ۫ۡۘۢۥۘۦۥۤۡۤۖۘۨۛ۟ۗۧۜۨۖ۠ۜ۫ۥۘۜۨۡۘ۫۟ۥۦۤۧۛۤۥۘ";
                                            break;
                                        case 104962730:
                                            str2 = "۟۬ۚۖۗۨۘۗ۠ۨۘ۫ۨۚۡ۫ۘۘۛ۬ۘۧۙۨۢ۠۬ۦۡۗ۠۬ۘۘۢۢۚۘۡ۟ۨۧۛۤۙۖۘ";
                                            break;
                                        case 2004714781:
                                            str3 = "ۨۦۜۘۖۜۥۥۛۛۡۦۨۜ۬ۙۘۘۘۧۧ۟ۧ۟ۡ۫۫ۛ۬۠ۜۘۡۥۛ۠۠ۨۘۚۤ۠ۡۧۙۤۜ۬ۡۛۥ۬ۡۨۘ۫ۤ۫";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -1604762691:
                    this.OooooOO.setText("");
                    str = "ۥۛۤۦۢۥۘۚ۬ۘۜۛۢۧۘۘۘۚ۠۟ۗۡۤۜۡۘۘ۟ۦ۟ۚۡۧۨۘ۫ۥۡۘۗ۠ۜۘ۬ۡۘ";
                    break;
                case -1295508858:
                    return;
                case -858815924:
                    str = "ۛ۫ۜۘۤۜۤۥۧۧ۟ۡۘۦ۠ۡۚ۫ۖۘۚۛۘۢۨ۫۬ۧۘ۠۠ۜۧۘۡۘۘۘ";
                    break;
                case -347888336:
                    str = "ۙۚۧۦۧۘۧۘۘۢۗۚ۟ۖ۬ۦۜۡۜۙۧۛۗ۟ۢ۫۟۬ۢۜۙۤۥ۠ۛۥۡۖۘۛ۬ۤ";
                    break;
                case 1369141665:
                    str = "ۥۛۤۦۢۥۘۚ۬ۘۜۛۢۧۘۘۘۚ۠۟ۗۡۤۜۡۘۘ۟ۦ۟ۚۡۧۨۘ۫ۥۡۘۗ۠ۜۘ۬ۡۘ";
                    break;
            }
        }
    }

    @Override // com.cyjh.common.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        String str = "ۙۦۘۘۚۙ۫۬ۙ۫ۚۤۖۙ۬ۘۤۥۘۚۢۚۤۥۘۜۘۧۘۤۘۘۤۢ۬ۤۛۥۘۘۦۥۘ۠ۤۢۚۛۚۧۗۗ";
        while (true) {
            switch ((((str.hashCode() ^ 102) ^ 225) ^ 131) ^ 2000023254) {
                case -2128754202:
                    str = "ۚۘ۠۬۬ۥۗ۫ۧۘۙۨۘ۠ۨۡۤۛۢۦۢۡۘۛۛۤۢۥۖۘۤۧۜۘۜۥۨۘۘۢۜۗۤۚ۠ۦۘۤۤ۫ۜۖۙۛ۬ۡۘۡۦۜۘ";
                    break;
                case -2114907944:
                    OooOO0O();
                    str = "ۢۥۙۤۡۜ۬۠۬ۥ۬ۨۘۨۘۨۘۖۘۘۢۛۨۘۗۨۖۘۧۤۦۘۛۡۘۘ۠ۛۖۤۡۧۧۧۜ۠ۗۢۙ۟ۨ۠ۡۘۖۦۡۘۘ۠";
                    break;
                case -2021052821:
                    super.onCreate(bundle);
                    str = "ۖ۬ۜۢۗۨۛۥۦۛۗۘ۠ۜۖۨۚۜۥۦۘۜۜۗۧۥۘۤۢۘۘ";
                    break;
                case -1789242807:
                    initListener();
                    str = "ۡۨۦۥۘۧۘۚۘۜۢ۬ۥۛۧۡ۟ۧۛۤۘۘۘ۠ۜۗۚۨۧۖۙ۠ۡۜۘ۫ۙۜ۫۠ۘۘ۠۫ۦ";
                    break;
                case -1757394359:
                    setContentView(R.layout.activity_edit_device_name);
                    str = "ۧۢۚۢ۬ۥ۟ۧۤۛ۬ۧۡۢۨۡۢ۬ۤۨۡۜۚۤۤۥۢۗۗۖۘ۟۟۫ۚۖۖۗ۠۫۬ۨ";
                    break;
                case -1702431622:
                    return;
                case -430036556:
                    str = "۟ۤۖۚ۠ۦۜۜۥۘۡۘۡۧ۟ۧۘۤ۟۠ۛ۬ۢۢۥۧ۠ۦۘۧۙۘۤۖۘۧۤۗۖۜ۟ۙۨۘۤۢۨۘ۟ۢۤ";
                    break;
                case 27625181:
                    initView();
                    str = "ۛۤۤۙ۟ۜۘۗۧۘۘۤۦ۟ۘۚ۟۬ۚ۫۬ۡۧۧ۠ۢ۬ۤۦ۠ۙ۟ۛ۟ۤ۫۠۟ۘ۫۬ۘ۬ۘۘۥۚۨ۫ۦۘۘ";
                    break;
                case 2034258257:
                    initData();
                    str = "۫ۤ۠ۘۥۤۖ۫ۤۨۡۙۤۤۜۚ۠ۘۗۤۨۘۚۡۛۧ۠ۜۜۗ۠ۚ۬ۢۥ۟۠ۗۨۨۖۧۖۘۚۙۜۧۛۚ";
                    break;
            }
        }
    }

    @Override // com.cyjh.common.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        String str = "ۛۨۦۧۦۖۘۧ۠ۧۜ۬ۛۧ۟ۖۨ۫۫۟ۦۘۛۙ۠ۛ۫ۗۡۨۦۘ";
        while (true) {
            switch ((((str.hashCode() ^ 35) ^ 751) ^ 602) ^ 1864300341) {
                case -1710252989:
                    return;
                case -1150830553:
                    this.OooooOo.removeCallbacksAndMessages(null);
                    str = "۬ۛۖۘۡۙۥۜۖۨۘۡۘۚۢۦۘ۠ۚۡۘۘ۫ۨۘۦۢۨۘ۫ۚۖۘۥۘ۫ۗۨ۫ۢۦۛۜۘ۬ۚۥۚۨۧۘۘۢ۫ۖۡۨۥ۬ۦۘ";
                    break;
                case 344478465:
                    this.OooooOo = null;
                    str = "۬ۚۧۙ۫ۧۘۚۡۘ۠۬ۥۜۜۚۘ۟ۨۘۚۤۜۘۘۘۨۥۚۙۨۘۖۖۦۡ۟ۘۨۘۧۚ۟ۨۗۨۘ۬ۢ۫ۢۛۦ";
                    break;
                case 493389628:
                    super.onDestroy();
                    str = "۟ۛۡۘۡ۫ۦۘ۬ۘۥۛۢۥۗۙۨۙ۫ۦۘۙۧ۠ۡۧۤۧۥۚ۬ۧۗۧۗۡۘۨۛۡۛۦۛۙۨۜۜۡ۟۬۫۠۟ۨۘ۟ۦۡۘ";
                    break;
                case 1623993773:
                    str = "ۤۙۘۘۖۤۧۡۢۛۛۥۙۧۧۡۜۘۚۖۥۚۘۢۘۡۚۡۥۨۡ۠ۙۛ۠ۜ۬ۙۖۡ۫۟ۚ";
                    break;
            }
        }
    }
}
