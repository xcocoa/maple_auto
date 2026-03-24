package z2;

import android.R;
import android.content.Context;
import android.widget.ArrayAdapter;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class cf extends ArrayAdapter<String> {
    public List<String> OoooOoO;

    public cf(Context context, List<String> list) {
        super(context, R.layout.simple_spinner_item, list);
        this.OoooOoO = list;
    }

    private List<String> OooO00o() {
        return this.OoooOoO;
    }
}
