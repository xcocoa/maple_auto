.class public Lz2/sb;
.super Lz2/ib;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final o00Ooo:I = 0x1

.field private static final o00o0O:I = 0x2

.field private static final o00oO0O:I = 0x10

.field private static final o00oO0o:I = 0x8

.field private static final o00ooo:I = 0x3

.field public static final o0OO00O:Ljava/lang/String; = "isPhoneRoot"

.field public static final o0OOO0o:I = 0x0

.field public static final o0Oo0oo:Ljava/lang/String; = "feedbackTips"

.field public static final o0ooOO0:I = 0x100

.field public static final o0ooOOo:I = 0x0

.field public static final o0ooOoO:I = 0x1

.field private static final oo000o:I = 0x4

.field private static final oo0o0Oo:I = 0x4


# instance fields
.field private OoooOoo:Landroid/widget/GridView;

.field private Ooooo00:Lz2/gb;

.field private Ooooo0o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private OooooO0:Landroid/widget/EditText;

.field private OooooOO:Landroid/widget/EditText;

.field private OooooOo:Landroid/widget/TextView;

.field private Oooooo:Lz2/lb;

.field private Oooooo0:Landroid/widget/TextView;

.field private OoooooO:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

.field private Ooooooo:Landroid/widget/TextView;

.field private o00O0O:Ljava/lang/String;

.field private o00Oo0:Z

.field private o0OoOo0:Landroid/view/View;

.field private ooOO:Lz2/uc;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lz2/ib;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/sb;->Ooooo0o:Ljava/util/List;

    return-void
.end method

.method private OooOo(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    sget p1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->cpu_core_sixteen:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->cpu_core_eight:I

    goto :goto_0

    :cond_2
    sget p1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->cpu_core_four:I

    goto :goto_0

    :cond_3
    sget p1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->cpu_core_three:I

    goto :goto_0

    :cond_4
    sget p1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->cpu_core_two:I

    goto :goto_0

    :cond_5
    sget p1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->cpu_core_one:I

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public static synthetic OooOo0(Lz2/sb;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lz2/sb;->Ooooo0o:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic OooOo0O(Lz2/sb;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lz2/sb;->Oooooo0:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic OooOo0o(Lz2/sb;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lz2/sb;->OooooOo:Landroid/widget/TextView;

    return-object p0
.end method

.method private OooOoO()V
    .locals 3

    new-instance v0, Lz2/lb;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lz2/lb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lz2/sb;->Oooooo:Lz2/lb;

    iget-object v0, p0, Lz2/sb;->o00O0O:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/sb;->o0OoOo0:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lz2/sb;->Ooooooo:Landroid/widget/TextView;

    iget-object v2, p0, Lz2/sb;->o00O0O:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lz2/sb;->Ooooooo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/sb;->Ooooooo:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lz2/sb;->o0OoOo0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private OooOoO0()V
    .locals 6

    iget-object v0, p0, Lz2/sb;->OooooO0:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lz2/sb;->OooooOO:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v2, p0, Lz2/sb;->OoooooO:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    if-nez v2, :cond_1

    new-instance v2, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lz2/gc;->OooO00o(Landroid/content/Context;)Lcom/cyjh/http/bean/request/BaseRequestValueInfo;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;-><init>(Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)V

    iput-object v2, p0, Lz2/sb;->OoooooO:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    :cond_1
    iget-object v2, p0, Lz2/sb;->OoooooO:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    iput-object v0, v2, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->Contact:Ljava/lang/String;

    iput-object v1, v2, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->Content:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, v2, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->AndoridVersion:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, v2, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->DeviceModel:Ljava/lang/String;

    iget-boolean v0, p0, Lz2/sb;->o00Oo0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iput v3, v2, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->RootStatus:I

    goto :goto_0

    :cond_2
    iput v1, v2, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->RootStatus:I

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lz2/ae;->OooOo0o(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lz2/ae;->OooOo0o(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lz2/sb;->OoooooO:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "*"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->Resolution:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lz2/ae;->OooOoOO(Landroid/content/Context;)J

    move-result-wide v2

    iget-object v0, p0, Lz2/sb;->OoooooO:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->RAM:Ljava/lang/String;

    iget-object v0, p0, Lz2/sb;->OoooooO:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lz2/ae;->OooOo(Landroid/content/Context;)I

    move-result v2

    iput v2, v0, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->DPI:I

    iget-object v0, p0, Lz2/sb;->OoooooO:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    invoke-static {}, Lz2/ae;->OooOoO()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->SerialNumber:Ljava/lang/String;

    iget-object v0, p0, Lz2/sb;->OoooooO:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    invoke-static {}, Lz2/ae;->OooOO0o()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->CoreVersion:Ljava/lang/String;

    iget-object v0, p0, Lz2/sb;->OoooooO:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    invoke-static {}, Lz2/ae;->OooOo0O()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->SystemVersion:Ljava/lang/String;

    invoke-static {}, Lz2/ub;->OooO0o0()I

    move-result v0

    invoke-direct {p0, v0}, Lz2/sb;->OooOo(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lz2/ub;->OooO0OO()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\uff0cCPU\u578b\u53f7\uff1a"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CPU\u578b\u53f7\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    :goto_1
    iget-object v1, p0, Lz2/sb;->OoooooO:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    iput-object v0, v1, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->Processor:Ljava/lang/String;

    return-void

    :cond_6
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->no_fill_info:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private OooOoOO()V
    .locals 2

    iget-object v0, p0, Lz2/sb;->OooooOO:Landroid/widget/EditText;

    new-instance v1, Lz2/sb$OooO0O0;

    invoke-direct {v1, p0}, Lz2/sb$OooO0O0;-><init>(Lz2/sb;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lz2/sb;->OoooOoo:Landroid/widget/GridView;

    new-instance v1, Lz2/sb$OooO0OO;

    invoke-direct {v1, p0}, Lz2/sb$OooO0OO;-><init>(Lz2/sb;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lz2/sb;->Ooooo00:Lz2/gb;

    new-instance v1, Lz2/sb$OooO0o;

    invoke-direct {v1, p0}, Lz2/sb$OooO0o;-><init>(Lz2/sb;)V

    invoke-virtual {v0, v1}, Lz2/gb;->OooO0Oo(Lz2/gb$OooO0O0;)V

    return-void
.end method

.method public static OooOoo(Ljava/lang/String;Z)Lz2/sb;
    .locals 3

    new-instance v0, Lz2/sb;

    invoke-direct {v0}, Lz2/sb;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "feedbackTips"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "isPhoneRoot"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private OooOoo0(Landroid/view/View;)V
    .locals 6

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->grid_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lz2/sb;->OoooOoo:Landroid/widget/GridView;

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_et_qq_phone:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lz2/sb;->OooooO0:Landroid/widget/EditText;

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_et_feedback:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lz2/sb;->OooooOO:Landroid/widget/EditText;

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_tv_image_num:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lz2/sb;->OooooOo:Landroid/widget/TextView;

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_btn_commit_feedback:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_tv_feedback_input_font_num:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lz2/sb;->Oooooo0:Landroid/widget/TextView;

    new-instance v1, Lz2/gb;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lz2/gb;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lz2/sb;->Ooooo00:Lz2/gb;

    iget-object v2, p0, Lz2/sb;->OoooOoo:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lz2/sb;->OooooOo:Landroid/widget/TextView;

    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->image_add:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lz2/sb;->Ooooo0o:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0, v1, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lz2/sb;->Oooooo0:Landroid/widget/TextView;

    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->feedback_num_hint:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_complaints_qq:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lz2/sb;->Ooooooo:Landroid/widget/TextView;

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lz2/sb;->o0OoOo0:Landroid/view/View;

    return-void
.end method

.method private OooOooO()V
    .locals 4

    new-instance v0, Lz2/kb;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lz2/sb;->OoooooO:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    iget-object v3, p0, Lz2/sb;->Ooooo0o:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lz2/kb;-><init>(Landroid/content/Context;Lcom/cyjh/http/bean/request/FeedbackRequestInfo;Ljava/util/List;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    new-instance v1, Lz2/sb$OooO00o;

    invoke-direct {v1, p0}, Lz2/sb$OooO00o;-><init>(Lz2/sb;)V

    invoke-virtual {v0, v1}, Lz2/kb;->OooOoo0(Lz2/kb$OooO0O0;)V

    return-void
.end method

.method private OooOooo()V
    .locals 3

    iget-object v0, p0, Lz2/sb;->OoooooO:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/sb;->Oooooo:Lz2/lb;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void

    :cond_0
    iget-object v0, v0, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->Contact:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/sb;->OoooooO:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->Contact:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lz2/sb;->OoooooO:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    iget-object v0, v0, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->Content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lz2/sb;->OoooooO:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->Content:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lz2/sb;->OoooooO:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    iget-object v0, v0, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->AndoridVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lz2/sb;->OoooooO:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->AndoridVersion:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lz2/sb;->OoooooO:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    iget-object v0, v0, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->CoreVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lz2/sb;->OoooooO:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->CoreVersion:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lz2/sb;->OoooooO:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    iget-object v0, v0, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->SerialNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lz2/sb;->OoooooO:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->SerialNumber:Ljava/lang/String;

    :cond_5
    iget-object v0, p0, Lz2/sb;->Oooooo:Lz2/lb;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    invoke-direct {p0}, Lz2/sb;->OooOooO()V

    return-void
.end method


# virtual methods
.method public OooOo00()I
    .locals 1

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$layout;->fragment_feedback_info:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    new-instance p1, Lz2/uc;

    invoke-direct {p1}, Lz2/uc;-><init>()V

    iput-object p1, p0, Lz2/sb;->ooOO:Lz2/uc;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lz2/uc;->OooO0OO(Landroid/content/Context;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x100

    if-ne p1, v0, :cond_4

    const/4 p1, -0x1

    if-ne p2, p1, :cond_4

    if-eqz p3, :cond_4

    const-string p1, "bundle"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "image"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lz2/sb;->Ooooo0o:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/2addr p3, p2

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-le p3, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    sget v3, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->img_num_limit:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    sub-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v2

    invoke-virtual {p0, v3, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object p3, p0, Lz2/sb;->Ooooo0o:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Lz2/sb;->Ooooo0o:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lz2/sb;->OooooOo:Landroid/widget/TextView;

    sget p2, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->image_add:I

    new-array p3, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lz2/sb;->Ooooo0o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v0

    invoke-virtual {p0, p2, p3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lz2/sb;->Ooooo00:Lz2/gb;

    iget-object p2, p0, Lz2/sb;->Ooooo0o:Ljava/util/List;

    invoke-virtual {p1, p2}, Lz2/gb;->OooO0OO(Ljava/util/List;)V

    iget-object p1, p0, Lz2/sb;->OoooOoo:Landroid/widget/GridView;

    iget-object p2, p0, Lz2/sb;->Ooooo00:Lz2/gb;

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lz2/sb;->Ooooo00:Lz2/gb;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_btn_commit_feedback:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lz2/sb;->Oooooo:Lz2/lb;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    invoke-direct {p0}, Lz2/sb;->OooOoO0()V

    invoke-direct {p0}, Lz2/sb;->OooOooo()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lz2/ib;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "feedbackTips"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lz2/sb;->o00O0O:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "isPhoneRoot"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lz2/sb;->o00Oo0:Z

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lz2/sb;->ooOO:Lz2/uc;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz2/uc;->OooO0o()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const-class v0, Lz2/sb;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lz2/bh;->OooO0OO(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const-class v0, Lz2/sb;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lz2/bh;->OooO0Oo(Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lz2/sb;->OooOoo0(Landroid/view/View;)V

    invoke-direct {p0}, Lz2/sb;->OooOoO()V

    invoke-direct {p0}, Lz2/sb;->OooOoOO()V

    return-void
.end method
