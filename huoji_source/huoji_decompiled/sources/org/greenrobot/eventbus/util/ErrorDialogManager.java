package org.greenrobot.eventbus.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.DialogFragment;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import androidx.fragment.app.FragmentActivity;
import z2.c20;
import z2.d20;
import z2.g20;
import z2.l10;

/* JADX INFO: loaded from: classes2.dex */
public class ErrorDialogManager {
    public static d20<?> OooO00o = null;
    public static final String OooO0O0 = "de.greenrobot.eventbus.error_dialog";
    public static final String OooO0OO = "de.greenrobot.eventbus.error_dialog_manager";
    public static final String OooO0Oo = "de.greenrobot.eventbus.errordialog.title";
    public static final String OooO0o = "de.greenrobot.eventbus.errordialog.finish_after_dialog";
    public static final String OooO0o0 = "de.greenrobot.eventbus.errordialog.message";
    public static final String OooO0oO = "de.greenrobot.eventbus.errordialog.icon_id";
    public static final String OooO0oo = "de.greenrobot.eventbus.errordialog.event_type_on_close";

    @TargetApi(11)
    public static class HoneycombManagerFragment extends Fragment {
        public boolean OoooOoO;
        public Bundle OoooOoo;
        private l10 Ooooo00;
        private Object Ooooo0o;

        public static void OooO00o(Activity activity, Object obj, boolean z, Bundle bundle) {
            FragmentManager fragmentManager = activity.getFragmentManager();
            HoneycombManagerFragment honeycombManagerFragment = (HoneycombManagerFragment) fragmentManager.findFragmentByTag(ErrorDialogManager.OooO0OO);
            if (honeycombManagerFragment == null) {
                honeycombManagerFragment = new HoneycombManagerFragment();
                fragmentManager.beginTransaction().add(honeycombManagerFragment, ErrorDialogManager.OooO0OO).commit();
                fragmentManager.executePendingTransactions();
            }
            honeycombManagerFragment.OoooOoO = z;
            honeycombManagerFragment.OoooOoo = bundle;
            honeycombManagerFragment.Ooooo0o = obj;
        }

        public void OooO0O0(g20 g20Var) {
            if (ErrorDialogManager.OooO0oO(this.Ooooo0o, g20Var)) {
                ErrorDialogManager.OooO0o(g20Var);
                FragmentManager fragmentManager = getFragmentManager();
                fragmentManager.executePendingTransactions();
                DialogFragment dialogFragment = (DialogFragment) fragmentManager.findFragmentByTag(ErrorDialogManager.OooO0O0);
                if (dialogFragment != null) {
                    dialogFragment.dismiss();
                }
                DialogFragment dialogFragment2 = (DialogFragment) ErrorDialogManager.OooO00o.OooO0Oo(g20Var, this.OoooOoO, this.OoooOoo);
                if (dialogFragment2 != null) {
                    dialogFragment2.show(fragmentManager, ErrorDialogManager.OooO0O0);
                }
            }
        }

        @Override // android.app.Fragment
        public void onPause() {
            this.Ooooo00.OooOoO0(this);
            super.onPause();
        }

        @Override // android.app.Fragment
        public void onResume() {
            super.onResume();
            l10 l10VarOooO0OO = ErrorDialogManager.OooO00o.OooO00o.OooO0OO();
            this.Ooooo00 = l10VarOooO0OO;
            l10VarOooO0OO.OooOo00(this);
        }
    }

    public static class OooO00o extends androidx.fragment.app.Fragment {
        public boolean OoooOoO;
        public Bundle OoooOoo;
        private l10 Ooooo00;
        private boolean Ooooo0o;
        private Object OooooO0;

        public static void OooOo00(Activity activity, Object obj, boolean z, Bundle bundle) {
            androidx.fragment.app.FragmentManager supportFragmentManager = ((FragmentActivity) activity).getSupportFragmentManager();
            OooO00o oooO00o = (OooO00o) supportFragmentManager.findFragmentByTag(ErrorDialogManager.OooO0OO);
            if (oooO00o == null) {
                oooO00o = new OooO00o();
                supportFragmentManager.beginTransaction().add(oooO00o, ErrorDialogManager.OooO0OO).commit();
                supportFragmentManager.executePendingTransactions();
            }
            oooO00o.OoooOoO = z;
            oooO00o.OoooOoo = bundle;
            oooO00o.OooooO0 = obj;
        }

        public void OooOo0(g20 g20Var) {
            if (ErrorDialogManager.OooO0oO(this.OooooO0, g20Var)) {
                ErrorDialogManager.OooO0o(g20Var);
                androidx.fragment.app.FragmentManager fragmentManager = getFragmentManager();
                fragmentManager.executePendingTransactions();
                androidx.fragment.app.DialogFragment dialogFragment = (androidx.fragment.app.DialogFragment) fragmentManager.findFragmentByTag(ErrorDialogManager.OooO0O0);
                if (dialogFragment != null) {
                    dialogFragment.dismiss();
                }
                androidx.fragment.app.DialogFragment dialogFragment2 = (androidx.fragment.app.DialogFragment) ErrorDialogManager.OooO00o.OooO0Oo(g20Var, this.OoooOoO, this.OoooOoo);
                if (dialogFragment2 != null) {
                    dialogFragment2.show(fragmentManager, ErrorDialogManager.OooO0O0);
                }
            }
        }

        @Override // androidx.fragment.app.Fragment
        public void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            l10 l10VarOooO0OO = ErrorDialogManager.OooO00o.OooO00o.OooO0OO();
            this.Ooooo00 = l10VarOooO0OO;
            l10VarOooO0OO.OooOo00(this);
            this.Ooooo0o = true;
        }

        @Override // androidx.fragment.app.Fragment
        public void onPause() {
            this.Ooooo00.OooOoO0(this);
            super.onPause();
        }

        @Override // androidx.fragment.app.Fragment
        public void onResume() {
            super.onResume();
            if (this.Ooooo0o) {
                this.Ooooo0o = false;
                return;
            }
            l10 l10VarOooO0OO = ErrorDialogManager.OooO00o.OooO00o.OooO0OO();
            this.Ooooo00 = l10VarOooO0OO;
            l10VarOooO0OO.OooOo00(this);
        }
    }

    public static void OooO0O0(Activity activity) {
        OooO0o0(activity, false, null);
    }

    public static void OooO0OO(Activity activity, Object obj, boolean z, Bundle bundle) {
        if (OooO00o == null) {
            throw new RuntimeException("You must set the static factory field to configure error dialogs for your app.");
        }
        if (OooO0oo(activity)) {
            OooO00o.OooOo00(activity, obj, z, bundle);
        } else {
            HoneycombManagerFragment.OooO00o(activity, obj, z, bundle);
        }
    }

    public static void OooO0Oo(Activity activity, boolean z) {
        OooO0o0(activity, z, null);
    }

    public static void OooO0o(g20 g20Var) {
        c20 c20Var = OooO00o.OooO00o;
        if (c20Var.OooO0o) {
            String str = c20Var.OooO0oO;
            if (str == null) {
                str = l10.OooOOo0;
            }
            Log.i(str, "Error dialog manager received exception", g20Var.OooO00o);
        }
    }

    public static void OooO0o0(Activity activity, boolean z, Bundle bundle) {
        OooO0OO(activity, activity.getClass(), z, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean OooO0oO(Object obj, g20 g20Var) {
        Object objOooO00o;
        return g20Var == null || (objOooO00o = g20Var.OooO00o()) == null || objOooO00o.equals(obj);
    }

    private static boolean OooO0oo(Activity activity) {
        String name;
        Class<?> superclass = activity.getClass();
        do {
            superclass = superclass.getSuperclass();
            if (superclass == null) {
                throw new RuntimeException("Illegal activity type: " + activity.getClass());
            }
            name = superclass.getName();
            if (name.equals("androidx.fragment.app.FragmentActivity")) {
                return true;
            }
            if (name.startsWith("com.actionbarsherlock.app") && (name.endsWith(".SherlockActivity") || name.endsWith(".SherlockListActivity") || name.endsWith(".SherlockPreferenceActivity"))) {
                throw new RuntimeException("Please use SherlockFragmentActivity. Illegal activity: " + name);
            }
        } while (!name.equals("android.app.Activity"));
        if (Build.VERSION.SDK_INT >= 11) {
            return false;
        }
        throw new RuntimeException("Illegal activity without fragment support. Either use Android 3.0+ or android.support.v4.app.FragmentActivity.");
    }
}
