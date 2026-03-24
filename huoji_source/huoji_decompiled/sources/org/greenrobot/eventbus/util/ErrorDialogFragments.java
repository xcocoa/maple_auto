package org.greenrobot.eventbus.util;

import android.R;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;

/* JADX INFO: loaded from: classes2.dex */
public class ErrorDialogFragments {
    public static int OooO00o;
    public static Class<?> OooO0O0;

    @TargetApi(11)
    public static class Honeycomb extends DialogFragment implements DialogInterface.OnClickListener {
        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            ErrorDialogFragments.OooO0O0(dialogInterface, i, getActivity(), getArguments());
        }

        @Override // android.app.DialogFragment
        public Dialog onCreateDialog(Bundle bundle) {
            return ErrorDialogFragments.OooO00o(getActivity(), getArguments(), this);
        }
    }

    public static class OooO00o extends androidx.fragment.app.DialogFragment implements DialogInterface.OnClickListener {
        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            ErrorDialogFragments.OooO0O0(dialogInterface, i, getActivity(), getArguments());
        }

        @Override // androidx.fragment.app.DialogFragment
        public Dialog onCreateDialog(Bundle bundle) {
            return ErrorDialogFragments.OooO00o(getActivity(), getArguments(), this);
        }
    }

    public static Dialog OooO00o(Context context, Bundle bundle, DialogInterface.OnClickListener onClickListener) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(bundle.getString(ErrorDialogManager.OooO0Oo));
        builder.setMessage(bundle.getString(ErrorDialogManager.OooO0o0));
        int i = OooO00o;
        if (i != 0) {
            builder.setIcon(i);
        }
        builder.setPositiveButton(R.string.ok, onClickListener);
        return builder.create();
    }

    public static void OooO0O0(DialogInterface dialogInterface, int i, Activity activity, Bundle bundle) {
        Class<?> cls = OooO0O0;
        if (cls != null) {
            try {
                ErrorDialogManager.OooO00o.OooO00o.OooO0OO().OooOOOO(cls.newInstance());
            } catch (Exception e) {
                throw new RuntimeException("Event cannot be constructed", e);
            }
        }
        if (!bundle.getBoolean(ErrorDialogManager.OooO0o, false) || activity == null) {
            return;
        }
        activity.finish();
    }
}
