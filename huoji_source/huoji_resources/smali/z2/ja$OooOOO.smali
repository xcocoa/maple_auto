.class public Lz2/ja$OooOOO;
.super Lz2/l3;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/ja;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooOOO"
.end annotation


# instance fields
.field public final synthetic OooO0OO:Lz2/ja;


# direct methods
.method private constructor <init>(Lz2/ja;I)V
    .locals 0

    iput-object p1, p0, Lz2/ja$OooOOO;->OooO0OO:Lz2/ja;

    invoke-direct {p0, p2}, Lz2/l3;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lz2/ja;ILz2/ja$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lz2/ja$OooOOO;-><init>(Lz2/ja;I)V

    return-void
.end method


# virtual methods
.method public OooO0O0(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url onTick:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XJL_AD_TAG"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lz2/ja$OooOOO;->OooO0OO:Lz2/ja;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/ja$OooOOO;->OooO0OO:Lz2/ja;

    invoke-static {v0}, Lz2/ja;->OooOo(Lz2/ja;)I

    iget-object v0, p0, Lz2/ja$OooOOO;->OooO0OO:Lz2/ja;

    const v1, 0x7f100040

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const-string v1, "#ff7900"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p1, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v1, 0x4

    const/16 v3, 0x11

    invoke-virtual {v0, p1, v2, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const-string v1, "#999999"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p1, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v1, 0x5

    const/4 v2, 0x6

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object p1, p0, Lz2/ja$OooOOO;->OooO0OO:Lz2/ja;

    invoke-static {p1}, Lz2/ja;->OooOoO0(Lz2/ja;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lz2/ja$OooOOO;->OooO0OO:Lz2/ja;

    invoke-static {p1}, Lz2/ja;->OooOoO0(Lz2/ja;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 2

    const-string v0, "XJL_AD_TAG"

    const-string v1, "url SubmitCountTimer onFinish:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lz2/ja$OooOOO;->OooO0OO:Lz2/ja;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lz2/ja;->OooOo0o(Lz2/ja;I)I

    iget-object v0, p0, Lz2/ja$OooOOO;->OooO0OO:Lz2/ja;

    invoke-static {v0}, Lz2/ja;->OooOooo(Lz2/ja;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
