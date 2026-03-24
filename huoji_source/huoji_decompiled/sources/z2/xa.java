package z2;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.ac.R;
import com.cyjh.elfin.ui.view.customview.FindErrorView;

/* JADX INFO: loaded from: classes.dex */
public class xa {
    private static void OooO00o(View view, View view2) {
        ViewGroup.LayoutParams layoutParams;
        View view3 = (View) view2.getParent();
        if (view3 != null) {
            if (view3 instanceof RelativeLayout) {
                ((RelativeLayout) view3).addView(view);
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(view.getLayoutParams());
                layoutParams2.addRule(13, -1);
                layoutParams2.width = -1;
                layoutParams2.height = -1;
                layoutParams = layoutParams2;
            } else {
                if (!(view3 instanceof LinearLayout)) {
                    throw new IllegalArgumentException("ParentView must be a RelativeLayout or LinearLayout!!!");
                }
                ((LinearLayout) view3).addView(view);
                LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(view.getLayoutParams());
                layoutParams3.width = -1;
                layoutParams3.height = -1;
                layoutParams3.gravity = 17;
                layoutParams = layoutParams3;
            }
            view.setLayoutParams(layoutParams);
        }
    }

    public static View OooO0O0(Context context, View view, View.OnClickListener onClickListener) {
        FindErrorView findErrorView = new FindErrorView(context);
        findErrorView.setErrorImg(R.drawable.icon_null);
        findErrorView.setErrorTips(R.string.load_data_empty);
        ((TextView) findErrorView.findViewById(R.id.vel_error_btn)).setOnClickListener(onClickListener);
        findErrorView.setVisibility(8);
        OooO00o(findErrorView, view);
        return findErrorView;
    }

    public static View OooO0OO(Context context, View view, View.OnClickListener onClickListener) {
        FindErrorView findErrorView = new FindErrorView(context);
        findErrorView.setErrorImg(R.drawable.icon_net_instability);
        findErrorView.setErrorTips(R.string.load_data_error);
        ((TextView) findErrorView.findViewById(R.id.vel_error_btn)).setOnClickListener(onClickListener);
        findErrorView.setVisibility(8);
        OooO00o(findErrorView, view);
        return findErrorView;
    }

    public static View OooO0Oo(Context context, View view, View.OnClickListener onClickListener) {
        FindErrorView findErrorView = new FindErrorView(context);
        findErrorView.setVisibility(8);
        OooO00o(findErrorView, view);
        return findErrorView;
    }

    public static View OooO0o(Context context, View view) {
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.load_loading_view, (ViewGroup) null);
        viewInflate.setVisibility(8);
        OooO00o(viewInflate, view);
        return viewInflate;
    }

    public static View OooO0o0(Context context, View view, View.OnClickListener onClickListener) {
        FindErrorView findErrorView = new FindErrorView(context);
        ((TextView) findErrorView.findViewById(R.id.vel_error_btn)).setOnClickListener(onClickListener);
        findErrorView.setVisibility(8);
        OooO00o(findErrorView, view);
        return findErrorView;
    }

    public static View OooO0oO(Context context, View view) {
        FindErrorView findErrorView = new FindErrorView(context);
        findErrorView.setErrorImg(R.drawable.bg_none_script);
        findErrorView.setErrorTips(R.string.notoolbox_text);
        findErrorView.findViewById(R.id.vel_error_btn).setVisibility(8);
        findErrorView.setVisibility(8);
        OooO00o(findErrorView, view);
        return findErrorView;
    }

    private static View OooO0oo(Context context) {
        return LayoutInflater.from(context).inflate(R.layout.load_error_view, (ViewGroup) null);
    }
}
