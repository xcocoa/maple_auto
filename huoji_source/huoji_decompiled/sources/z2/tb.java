package z2;

import android.app.ProgressDialog;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.Toast;
import com.anythink.expressad.foundation.d.c;
import com.cyjh.feedback.libraryfeedbackinfo.R;
import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import z2.fb;

/* JADX INFO: loaded from: classes.dex */
public class tb extends ib implements View.OnClickListener {
    private static final int o0OoOo0 = 272;
    private static final String ooOO = ",";
    private GridView OoooOoo;
    private List<nb> Ooooo00;
    private fb Ooooo0o;
    private Button OooooO0;
    private ArrayList<String> OooooOO;
    private List<String> OooooOo;
    private int Oooooo;
    private File Oooooo0;
    private ProgressDialog OoooooO;
    private Handler Ooooooo = new OooO00o();

    public class OooO00o extends Handler {
        public OooO00o() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            nb nbVar = (nb) message.obj;
            tb.this.OoooooO.dismiss();
            tb.this.OooOooo(nbVar);
        }
    }

    public class OooO0O0 implements fb.OooO0O0 {
        public OooO0O0() {
        }

        @Override // z2.fb.OooO0O0
        public void OooO00o(int i) {
            tb.this.OooooO0.setText(tb.this.getString(R.string.btn_sure, Integer.valueOf(i)));
        }
    }

    public class OooO0OO extends Thread {

        public class OooO00o implements FilenameFilter {
            public OooO00o() {
            }

            @Override // java.io.FilenameFilter
            public boolean accept(File file, String str) {
                return tb.this.Oooo000(str);
            }
        }

        public OooO0OO() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Cursor cursorQuery = tb.this.getActivity().getContentResolver().query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, null, "mime_type= ? or mime_type=?", new String[]{"image/jpeg", "image/png"}, "date_modified");
            HashSet hashSet = new HashSet();
            while (cursorQuery.moveToNext()) {
                String string = cursorQuery.getString(cursorQuery.getColumnIndex("_data"));
                File parentFile = new File(string).getParentFile();
                if (parentFile != null) {
                    String absolutePath = parentFile.getAbsolutePath();
                    if (!hashSet.contains(absolutePath)) {
                        hashSet.add(absolutePath);
                        nb nbVar = new nb();
                        nbVar.OooO0oo(absolutePath);
                        nbVar.OooO(string);
                        if (parentFile.list() != null) {
                            int length = parentFile.list(new OooO00o()).length;
                            if (length > tb.this.Oooooo) {
                                tb.this.Oooooo = length;
                                tb.this.Oooooo0 = parentFile;
                            }
                            nbVar.OooO0o(length);
                            tb.this.Ooooo00.add(nbVar);
                        }
                    }
                }
            }
            cursorQuery.close();
            nb nbVar2 = new nb();
            if (tb.this.Ooooo00 != null && tb.this.Ooooo00.size() > 0) {
                nbVar2.OooO0oO(tb.this.getString(R.string.all_photo_mobile));
                nbVar2.OooO(((nb) tb.this.Ooooo00.get(0)).OooO0Oo());
            }
            String str = "";
            int iOooO00o = 0;
            for (nb nbVar3 : tb.this.Ooooo00) {
                str = str + nbVar3.OooO0OO() + tb.ooOO;
                iOooO00o += nbVar3.OooO00o();
            }
            nbVar2.OooO0o(iOooO00o);
            nbVar2.OooO0oo(str);
            tb.this.Ooooo00.add(0, nbVar2);
            tb.this.Oooo00O(nbVar2);
            Message messageObtainMessage = tb.this.Ooooooo.obtainMessage();
            messageObtainMessage.what = 272;
            messageObtainMessage.obj = nbVar2;
            tb.this.Ooooooo.sendMessage(messageObtainMessage);
        }
    }

    public class OooO0o implements FilenameFilter {
        public OooO0o() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return tb.this.Oooo000(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OooOooo(nb nbVar) {
        if (TextUtils.isEmpty(nbVar.OooO0OO())) {
            Toast.makeText(getActivity(), getString(R.string.no_everything_picture), 0).show();
            return;
        }
        if (this.Oooooo0 == null) {
            Toast.makeText(getActivity(), getString(R.string.no_everything_picture), 1).show();
            return;
        }
        List<String> list = this.OooooOo;
        if (list != null && list.size() <= 0) {
            Toast.makeText(getActivity(), getString(R.string.no_everything_picture), 1).show();
            return;
        }
        fb fbVar = new fb(getActivity(), this.OooooOo);
        this.Ooooo0o = fbVar;
        this.OoooOoo.setAdapter((ListAdapter) fbVar);
        this.Ooooo0o.notifyDataSetChanged();
        Oooo0();
    }

    private void Oooo0() {
        this.Ooooo0o.OooO0o0(new OooO0O0());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean Oooo000(String str) {
        return str.toLowerCase().endsWith(".jpg") || str.toLowerCase().endsWith(".jpeg") || str.toLowerCase().endsWith(".png");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Oooo00O(nb nbVar) {
        this.OooooOo.clear();
        for (String str : nbVar.OooO0OO().split(ooOO)) {
            String[] list = new File(str).list(new OooO0o());
            if (list != null) {
                for (String str2 : list) {
                    this.OooooOo.add(str + File.separator + str2);
                }
            }
        }
    }

    private void Oooo00o() {
        if (!"mounted".equals(Environment.getExternalStorageState())) {
            Toast.makeText(getActivity(), getString(R.string.no_sdk), 1).show();
        } else {
            this.OoooooO = ProgressDialog.show(getActivity(), null, getString(R.string.loading_somethings));
            new OooO0OO().start();
        }
    }

    private void Oooo0O0(View view) {
        this.OooooOO = new ArrayList<>();
        this.OoooOoo = (GridView) view.findViewById(R.id.grid_view);
        this.OooooOo = new ArrayList();
        this.Ooooo00 = new ArrayList();
        Button button = (Button) view.findViewById(R.id.id_btn_sure);
        this.OooooO0 = button;
        button.setText(getString(R.string.btn_sure, Integer.valueOf(this.OooooOO.size())));
        this.OooooO0.setOnClickListener(this);
    }

    public static tb Oooo0OO() {
        return new tb();
    }

    @Override // z2.ib
    public int OooOo00() {
        return R.layout.fragment_select_image;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        fb fbVar;
        if (view.getId() != R.id.id_btn_sure || (fbVar = this.Ooooo0o) == null) {
            return;
        }
        if (fbVar.OooO0Oo().size() <= 0) {
            Toast.makeText(getActivity(), getString(R.string.please_choose_photo), 1).show();
            return;
        }
        Iterator<String> it = this.Ooooo0o.OooO0Oo().iterator();
        while (it.hasNext()) {
            this.OooooOO.add(it.next());
        }
        Intent intent = new Intent();
        Bundle bundle = new Bundle();
        bundle.putStringArrayList(c.C0131c.e, this.OooooOO);
        intent.putExtra("bundle", bundle);
        getActivity().setResult(-1, intent);
        getActivity().finish();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        bh.OooO0OO(tb.class.getCanonicalName());
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        bh.OooO0Oo(tb.class.getCanonicalName());
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        Oooo0O0(view);
        Oooo00o();
    }
}
