package com.cyjh.elfin.ui.view.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.ac.R;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;

/* JADX INFO: loaded from: classes.dex */
public class FindErrorView extends LinearLayout {
    public Context OoooOoO;
    public ImageView OoooOoo;
    public TextView Ooooo00;
    public TextView Ooooo0o;

    public FindErrorView(Context context) {
        this(context, null);
    }

    public FindErrorView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FindErrorView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.OoooOoO = context;
        OooO00o();
    }

    private void OooO00o() {
        String str = "ۛۘۤۥۦۨۘۤۨ۠ۡۦۙ۠ۦۤ۬۠ۥۜۤۖۗۘۥۘۘۡ۬ۜۤ۟ۧۥۘۘۗۙۖۘۦۗۡۘۤۥۘۘ";
        while (true) {
            switch ((((str.hashCode() ^ 347) ^ 659) ^ 546) ^ (-970665178)) {
                case -1207340355:
                    this.Ooooo0o = (TextView) findViewById(R.id.vel_error_btn);
                    str = "ۗۢۥۨۙۖۡۥۚۤ۠ۖۘۢۖۘۧۜۙۧ۫ۦۙۢۥۘۚ۬ۛۜۨۜۖۡۘۜۜۗۙۢۡۘۗۨۛۡۙۢۦۤۜ";
                    break;
                case -1189793420:
                    return;
                case -464457789:
                    this.OoooOoo = (ImageView) findViewById(R.id.vel_error_img);
                    str = "۟ۢۙ۬۫ۨۗۜۡۧۜ۫ۘ۠ۡۘ۟ۧۧۡۨۡۥ۫ۖۘۤۦۦۧۙۦۥۡۡۘۛ۬ۨۥ۠ۢۘۖۢۢۤ۫ۗ۬۠ۤۨ۟ۤۚۢ";
                    break;
                case -376369415:
                    this.Ooooo00 = (TextView) findViewById(R.id.vel_error_tips);
                    str = "ۨۨۥۖۡۧ۫ۦۘۤۜۡۘ۫ۘۧ۟۫ۥۘۧۡۡۘۙ۬ۜۢۚ۟ۘۚۧۨۙۨۘۡۜۥۘ۫ۖۙ۫ۥۘ";
                    break;
                case 918095459:
                    ((LayoutInflater) this.OoooOoO.getSystemService("layout_inflater")).inflate(R.layout.view_error_layout, this);
                    str = "ۘۦۡۘۗ۠ۢۚۙۚۗۙۜۘۘۧ۠۠۠ۤ۠ۥۘۥۥۧۢۙۨۨۜۨۘۨۨۛۙۡۨۘۧ۬ۥۥۧۦۚۜۢۗۡۥۘ";
                    break;
                case 1444569042:
                    str = "ۧ۟ۗۚۤۡۙۨۘۚ۫۠ۜۧۗۦۛ۟ۨ۟ۛ۠ۗ۬ۙ۫ۥۘۦ۫۬ۗۖۜۘۜۢۨۗ۫ۜۡۨ۬";
                    break;
            }
        }
    }

    public void setErrorImg(int i) {
        String str = "ۗۡۛۤۢ۠ۚۘۘۛ۟ۖۦۧۚ۫ۨۨۧۘۧۘۜۧۘۘۨۤۚۥۢۨۨۡۜۘۦۙۖ";
        while (true) {
            switch ((((str.hashCode() ^ 667) ^ 313) ^ 383) ^ 2054879845) {
                case -1803237471:
                    str = "ۛۤۢۘ۬ۧۖۡ۟ۡۜۤۖ۟ۚ۫۠ۜۡۚۚۜۧۙۥ۠۬۬ۡۛۤۧۚۜۘۖۜۖۦۛۥۚ۠ۜۜۜ";
                    break;
                case 194163645:
                    this.OoooOoo.setImageResource(i);
                    str = "ۢۘۘۘۨۨۘۤۘۤۦۗۨۘۧۖۖۢۦۘ۟ۧۦۘۦۧۦۨۥۘۦ۫ۖۘۚ۠ۚۙۚ۟ۦۙۡۘ۠ۖۧۘۗ۠ۛۙۢۡۘ۬ۢۦۚ۠ۜ";
                    break;
                case 465441842:
                    str = "ۤۨ۟ۡۡۥ۟ۚۖ۟ۤ۠۟ۢ۠ۖۦۖۘۦۚۨۘۤۨۦۘ۠ۜۢ۬۟ۜ۠ۚۨۘ۟ۜۜۘ";
                    break;
                case 1605864978:
                    return;
            }
        }
    }

    public void setErrorTips(int i) {
        String str = "ۢۢۛۗۦۡۘ۟۫ۖۨۗۥ۟ۤۦۘۨۜ۬ۤۢ۠ۘ۠ۨۢۛۨ۫ۙۗ۟ۧۢۡ۠ۡۚۥۖۢۧۜۘۜۙۡۘ۠۬ۛ";
        while (true) {
            switch ((((str.hashCode() ^ 50) ^ UiMessage.CommandToUi.Command_Type.GET_BACKCOLOR_VALUE) ^ 656) ^ 1797113982) {
                case -1846650598:
                    this.Ooooo00.setText(i);
                    str = "ۧۘۦۜۛۢۦۤۖۨۜۨۧۦۘۘۛۦۡۘۖ۫ۛ۠ۛۙۤۘۜۛۛۚ";
                    break;
                case -855357526:
                    str = "۠ۛۡۘۨۤۗ۟ۙۛۙۥۚۥۡ۫۬ۜۡ۠۫ۖۙ۫۠ۙۘۜۡۧۚۤۘۗۗ۟ۚۛ۫ۖۧ۠۟۬ۖۨۖۡۡۘۤۢۡۤۚۦۘ";
                    break;
                case -292669627:
                    str = "ۧ۫ۖۦۧ۬ۛۦۢۦۢۡۧۗۛ۠ۗ۟۟ۦۜۘۦۡۦۘۛۢۜۘۨۥۧ";
                    break;
                case 267337500:
                    return;
            }
        }
    }
}
