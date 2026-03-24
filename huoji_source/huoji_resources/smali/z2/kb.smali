.class public Lz2/kb;
.super Lz2/hb;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lz2/ed;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/kb$OooO0O0;
    }
.end annotation


# static fields
.field private static final o00oO0O:I = 0x1

.field private static final o00oO0o:I = 0x2

.field private static final o00ooo:Ljava/lang/String;

.field private static final o0ooOO0:I = 0x0

.field private static final oo000o:I = 0x1


# instance fields
.field private OooooO0:Landroid/widget/Button;

.field private OooooOO:Landroid/widget/Button;

.field private OooooOo:Landroid/widget/TextView;

.field private Oooooo:Landroid/widget/TextView;

.field private Oooooo0:Landroid/widget/TextView;

.field private OoooooO:Landroid/widget/TextView;

.field private Ooooooo:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

.field private o00O0O:Lz2/sc;

.field private o00Oo0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile o00Ooo:I

.field private o00o0O:Lz2/kb$OooO0O0;

.field private o0OoOo0:Lz2/lb;

.field private ooOO:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lz2/kb;->o00ooo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cyjh/http/bean/request/FeedbackRequestInfo;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/cyjh/http/bean/request/FeedbackRequestInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$style;->Theme_Dialog:I

    invoke-direct {p0, p1, v0}, Lz2/hb;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput v0, p0, Lz2/kb;->o00Ooo:I

    iput-object p2, p0, Lz2/kb;->Ooooooo:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    iput-object p1, p0, Lz2/kb;->ooOO:Landroid/content/Context;

    iput-object p3, p0, Lz2/kb;->o00Oo0:Ljava/util/List;

    return-void
.end method

.method private OooOo(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 3

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const-string v2, "#3c7ac5"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v2, 0x22

    invoke-virtual {v1, p1, v0, p2, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method public static synthetic OooOo0o(Lz2/kb;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/kb;->OooOoo(Ljava/util/List;)V

    return-void
.end method

.method private OooOoO()V
    .locals 1

    iget-object v0, p0, Lz2/kb;->OooooOO:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lz2/kb;->OooooO0:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private OooOoO0()V
    .locals 6

    iget-object v0, p0, Lz2/kb;->ooOO:Landroid/content/Context;

    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->devices_name:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lz2/kb;->Ooooooo:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    iget-object v4, v4, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->DeviceModel:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lz2/kb;->OooooOo:Landroid/widget/TextView;

    iget-object v3, p0, Lz2/kb;->Ooooooo:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    iget-object v3, v3, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->DeviceModel:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lz2/kb;->OooOo(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lz2/kb;->ooOO:Landroid/content/Context;

    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->devices_use_system:I

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lz2/kb;->Ooooooo:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    iget-object v4, v4, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->AndoridVersion:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lz2/kb;->Oooooo0:Landroid/widget/TextView;

    iget-object v3, p0, Lz2/kb;->Ooooooo:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    iget-object v3, v3, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->AndoridVersion:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lz2/kb;->OooOo(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lz2/kb;->Ooooooo:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    iget v0, v0, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->RootStatus:I

    if-eq v0, v2, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lz2/kb;->ooOO:Landroid/content/Context;

    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->devices_is_root:I

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->devices_no_root:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lz2/kb;->ooOO:Landroid/content/Context;

    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->devices_is_root:I

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->devices_yes_root:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lz2/kb;->Oooooo:Landroid/widget/TextView;

    iget-object v2, p0, Lz2/kb;->ooOO:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lz2/kb;->OooOo(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lz2/kb;->Ooooooo:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    iget-object v0, v0, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->Content:Ljava/lang/String;

    sget-object v1, Lz2/kb;->o00ooo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lz2/kb;->OoooooO:Landroid/widget/TextView;

    iget-object v1, p0, Lz2/kb;->Ooooooo:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    iget-object v1, v1, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->Content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private OooOoOO()V
    .locals 1

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_tv_device_name:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lz2/kb;->OooooOo:Landroid/widget/TextView;

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_tv_device_system:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lz2/kb;->Oooooo0:Landroid/widget/TextView;

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_tv_device_root:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lz2/kb;->Oooooo:Landroid/widget/TextView;

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_tv_feedback_content:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lz2/kb;->OoooooO:Landroid/widget/TextView;

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_btn_back:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lz2/kb;->OooooO0:Landroid/widget/Button;

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_btn_commit_feedback_info:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lz2/kb;->OooooOO:Landroid/widget/Button;

    return-void
.end method

.method private OooOoo(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lz2/kb;->o00Ooo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lz2/kb;->o00Ooo:I

    iget v0, p0, Lz2/kb;->o00Ooo:I

    iget-object v1, p0, Lz2/kb;->o00Oo0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lz2/kb;->Ooooooo:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, v0, Lcom/cyjh/http/bean/request/FeedbackRequestInfo;->FreebackImages:[Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lz2/kb;->o00O0O:Lz2/sc;

    iget-object v0, p0, Lz2/kb;->ooOO:Landroid/content/Context;

    iget-object v1, p0, Lz2/kb;->Ooooooo:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    invoke-virtual {p1, v0, v1}, Lz2/sc;->OooO0OO(Landroid/content/Context;Lcom/cyjh/http/bean/request/FeedbackRequestInfo;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public OooOO0o(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lz2/kb;->o0OoOo0:Lz2/lb;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lz2/kb;->o00o0O:Lz2/kb$OooO0O0;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lz2/kb$OooO0O0;->OooO00o(I)V

    :cond_0
    invoke-virtual {p0}, Lz2/kb;->dismiss()V

    return-void
.end method

.method public OooOoo0(Lz2/kb$OooO0O0;)V
    .locals 0

    iput-object p1, p0, Lz2/kb;->o00o0O:Lz2/kb$OooO0O0;

    return-void
.end method

.method public dismiss()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/kb;->Ooooooo:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    const/4 v0, 0x0

    iput v0, p0, Lz2/kb;->o00Ooo:I

    iget-object v0, p0, Lz2/kb;->o00O0O:Lz2/sc;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz2/sc;->OooO0o()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_btn_back:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lz2/kb;->dismiss()V

    goto/16 :goto_1

    :cond_0
    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_btn_commit_feedback_info:I

    if-ne p1, v0, :cond_5

    :try_start_0
    iget-object p1, p0, Lz2/kb;->ooOO:Landroid/content/Context;

    invoke-static {p1}, Lz2/wb;->OooO00o(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lz2/kb;->ooOO:Landroid/content/Context;

    invoke-static {p1}, Lz2/wb;->OooO0O0(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lz2/kb;->ooOO:Landroid/content/Context;

    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->is_net_open:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    new-instance p1, Lcom/cyjh/http/oss/MyOSSUtils$Builder;

    iget-object v1, p0, Lz2/kb;->ooOO:Landroid/content/Context;

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v2

    iget-object v2, v2, Lz2/gc;->OooO0OO:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    invoke-direct {p1, v1, v2}, Lcom/cyjh/http/oss/MyOSSUtils$Builder;-><init>(Landroid/content/Context;Lcom/cyjh/http/bean/response/AliCloudServerResponse;)V

    invoke-virtual {p1}, Lcom/cyjh/http/oss/MyOSSUtils$Builder;->build()Lcom/cyjh/http/oss/MyOSSUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/http/oss/MyOSSUtils;->isTokenExpireTime()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lz2/kb;->ooOO:Landroid/content/Context;

    const-string v1, "\u963f\u91cc\u4e91Token\u8fc7\u671f\uff0c\u7a0d\u540e\u518d\u8bd5\uff01"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    new-instance p1, Lz2/uc;

    invoke-direct {p1}, Lz2/uc;-><init>()V

    iget-object v0, p0, Lz2/kb;->ooOO:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lz2/uc;->OooO0OO(Landroid/content/Context;)V

    return-void

    :cond_2
    iget-object v0, p0, Lz2/kb;->o0OoOo0:Lz2/lb;

    if-nez v0, :cond_3

    new-instance v0, Lz2/lb;

    iget-object v1, p0, Lz2/kb;->ooOO:Landroid/content/Context;

    invoke-direct {v0, v1}, Lz2/lb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lz2/kb;->o0OoOo0:Lz2/lb;

    :cond_3
    iget-object v0, p0, Lz2/kb;->o0OoOo0:Lz2/lb;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    new-instance v0, Lz2/sc;

    invoke-direct {v0, p0}, Lz2/sc;-><init>(Lz2/ed;)V

    iput-object v0, p0, Lz2/kb;->o00O0O:Lz2/sc;

    iget-object v0, p0, Lz2/kb;->o00Oo0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v0

    iget-object v0, v0, Lz2/gc;->OooO0OO:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lz2/kb;->o00Oo0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v5

    iget-object v5, v5, Lz2/gc;->OooO0OO:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    iget-object v5, v5, Lcom/cyjh/http/bean/response/AliCloudServerResponse;->OssStoragePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lz2/kb$OooO00o;

    invoke-direct {v4, p0, v0}, Lz2/kb$OooO00o;-><init>(Lz2/kb;Ljava/util/List;)V

    invoke-virtual {p1, v2, v3, v4}, Lcom/cyjh/http/oss/MyOSSUtils;->uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/http/oss/MyOSSUtils$UploadFileCallBack;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lz2/kb;->o00O0O:Lz2/sc;

    iget-object v0, p0, Lz2/kb;->ooOO:Landroid/content/Context;

    iget-object v1, p0, Lz2/kb;->Ooooooo:Lcom/cyjh/http/bean/request/FeedbackRequestInfo;

    invoke-virtual {p1, v0, v1}, Lz2/sc;->OooO0OO(Landroid/content/Context;Lcom/cyjh/http/bean/request/FeedbackRequestInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FeedBackDialog--\u63d0\u4ea4\u6570\u636e\u7ed9\u540e\u53f0\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "zzz"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lz2/hb;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$layout;->dialog_feedback_info:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const p1, 0x3e99999a    # 0.3f

    invoke-virtual {p0, p1}, Lz2/hb;->OooOo00(F)V

    const p1, 0x3f4ccccd    # 0.8f

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p0, p1, v0}, Lz2/hb;->OooOo0O(FF)V

    invoke-direct {p0}, Lz2/kb;->OooOoOO()V

    invoke-direct {p0}, Lz2/kb;->OooOoO0()V

    invoke-direct {p0}, Lz2/kb;->OooOoO()V

    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lz2/kb;->o0OoOo0:Lz2/lb;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lz2/kb;->o00o0O:Lz2/kb$OooO0O0;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lz2/kb$OooO0O0;->OooO00o(I)V

    :cond_0
    invoke-virtual {p0}, Lz2/kb;->dismiss()V

    return-void
.end method
