package com.octopus.ad.internal.view;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.GeolocationPermissions;
import android.webkit.WebChromeClient;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import com.octopus.ad.internal.utilities.HaoboLog;
import com.octopus.ad.internal.utilities.ViewUtil;

/* JADX INFO: loaded from: classes2.dex */
public class h extends a {
    private WebChromeClient.CustomViewCallback a;
    private FrameLayout b;
    private Context c;
    private AdViewImpl d;
    private AdWebView e;

    public h(Activity activity) {
        this.c = activity;
    }

    public h(AdWebView adWebView) {
        this.c = adWebView.getContextFromMutableContext();
        this.e = adWebView;
        this.d = adWebView.adViewImpl;
    }

    private void a(FrameLayout frameLayout) {
        ImageButton imageButton = new ImageButton(this.c);
        imageButton.setImageDrawable(this.c.getResources().getDrawable(R.drawable.ic_menu_close_clear_cancel));
        imageButton.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 53));
        imageButton.setBackgroundColor(0);
        imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.octopus.ad.internal.view.h.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                h.this.onHideCustomView();
            }
        });
        frameLayout.addView(imageButton);
    }

    @Override // android.webkit.WebChromeClient
    public void onGeolocationPermissionsHidePrompt() {
        AdViewImpl adViewImpl = this.d;
        if (adViewImpl == null || adViewImpl.e() || this.d.a()) {
            return;
        }
        this.d.getAdDispatcher().b();
    }

    @Override // android.webkit.WebChromeClient
    public void onGeolocationPermissionsShowPrompt(final String str, final GeolocationPermissions.Callback callback) {
        AdWebView adWebView = this.e;
        AlertDialog.Builder builder = new AlertDialog.Builder(adWebView != null ? ViewUtil.getTopContext(adWebView) : this.c);
        builder.setTitle(String.format(this.c.getResources().getString(com.octopus.ad.R.string.html5_geo_permission_prompt_title), str));
        builder.setMessage(com.octopus.ad.R.string.html5_geo_permission_prompt);
        builder.setPositiveButton(com.octopus.ad.R.string.allow, new DialogInterface.OnClickListener() { // from class: com.octopus.ad.internal.view.h.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                callback.invoke(str, true, true);
            }
        });
        builder.setNegativeButton(com.octopus.ad.R.string.deny, new DialogInterface.OnClickListener() { // from class: com.octopus.ad.internal.view.h.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                callback.invoke(str, false, false);
            }
        });
        builder.create().show();
        AdViewImpl adViewImpl = this.d;
        if (adViewImpl == null || adViewImpl.e() || this.d.a()) {
            return;
        }
        this.d.getAdDispatcher().c();
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0039  */
    @Override // android.webkit.WebChromeClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onHideCustomView() {
        View viewFindViewById;
        super.onHideCustomView();
        Context context = this.c;
        if (context != null && this.b != null) {
            ViewGroup viewGroup = null;
            AdWebView adWebView = this.e;
            if (adWebView != null) {
                viewFindViewById = adWebView.getRootView().findViewById(R.id.content);
            } else {
                if (context instanceof Activity) {
                    viewFindViewById = ((Activity) context).findViewById(R.id.content);
                }
                if (viewGroup != null) {
                    viewGroup.removeView(this.b);
                    WebChromeClient.CustomViewCallback customViewCallback = this.a;
                    if (customViewCallback != null) {
                        try {
                            customViewCallback.onCustomViewHidden();
                            return;
                        } catch (NullPointerException e) {
                            HaoboLog.e(HaoboLog.baseLogTag, "Exception calling customViewCallback  onCustomViewHidden: " + e.getMessage());
                            return;
                        }
                    }
                    return;
                }
            }
            viewGroup = (ViewGroup) viewFindViewById;
            if (viewGroup != null) {
            }
        }
        HaoboLog.w(HaoboLog.baseLogTag, HaoboLog.getString(com.octopus.ad.R.string.fullscreen_video_hide_error));
    }

    @Override // android.webkit.WebChromeClient
    public void onShowCustomView(View view, int i, WebChromeClient.CustomViewCallback customViewCallback) {
        onShowCustomView(view, customViewCallback);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0035  */
    @Override // android.webkit.WebChromeClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        ViewGroup viewGroup;
        View viewFindViewById;
        super.onShowCustomView(view, customViewCallback);
        Context context = this.c;
        if (context != null) {
            AdWebView adWebView = this.e;
            if (adWebView != null) {
                viewFindViewById = adWebView.getRootView().findViewById(R.id.content);
            } else if (context instanceof Activity) {
                viewFindViewById = ((Activity) context).findViewById(R.id.content);
            } else {
                viewGroup = null;
                if (viewGroup != null) {
                    this.a = customViewCallback;
                    if (!(view instanceof FrameLayout)) {
                        this.b = null;
                        return;
                    }
                    FrameLayout frameLayout = (FrameLayout) view;
                    this.b = frameLayout;
                    frameLayout.setClickable(true);
                    this.b.setBackgroundColor(-16777216);
                    try {
                        a(this.b);
                        viewGroup.addView(this.b, new ViewGroup.LayoutParams(-1, -1));
                        return;
                    } catch (Exception e) {
                        HaoboLog.d(HaoboLog.baseLogTag, e.toString());
                        return;
                    }
                }
            }
            viewGroup = (ViewGroup) viewFindViewById;
            if (viewGroup != null) {
            }
        }
        HaoboLog.w(HaoboLog.baseLogTag, HaoboLog.getString(com.octopus.ad.R.string.fullscreen_video_show_error));
    }
}
