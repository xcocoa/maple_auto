package com.anythink.basead.ui.guidetoclickv2;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.anythink.basead.ui.b.b;
import com.anythink.core.common.o.i;

/* JADX INFO: loaded from: classes.dex */
public class QuestionDialogG2CV2View extends BaseG2CV2View {
    private TextView c;
    private TextView d;
    private String e;
    private String f;

    public QuestionDialogG2CV2View(Context context) {
        super(context);
    }

    @Override // com.anythink.basead.ui.guidetoclickv2.BaseG2CV2View
    public final void a(int i, int i2) {
        LayoutInflater.from(getContext()).inflate(i.a(getContext(), "myoffer_g2c_v2_question_dialog", "layout"), this);
        TextView textView = (TextView) findViewById(i.a(getContext(), "myoffer_g2c_question_answer1", "id"));
        this.c = textView;
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.basead.ui.guidetoclickv2.QuestionDialogG2CV2View.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                b.a aVar = QuestionDialogG2CV2View.this.b;
                if (aVar != null) {
                    aVar.a(11, 17);
                }
            }
        });
        TextView textView2 = (TextView) findViewById(i.a(getContext(), "myoffer_g2c_question_answer2", "id"));
        this.d = textView2;
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.basead.ui.guidetoclickv2.QuestionDialogG2CV2View.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                b.a aVar = QuestionDialogG2CV2View.this.b;
                if (aVar != null) {
                    aVar.a(11, 17);
                }
            }
        });
        if (!TextUtils.isEmpty(this.e)) {
            this.c.setText(this.e);
        }
        if (!TextUtils.isEmpty(this.f)) {
            this.d.setText(this.f);
        }
        setOnClickListener(new View.OnClickListener() { // from class: com.anythink.basead.ui.guidetoclickv2.QuestionDialogG2CV2View.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
            }
        });
    }

    public void setQuestionAnswer(String str, String str2) {
        this.e = str;
        this.f = str2;
    }
}
