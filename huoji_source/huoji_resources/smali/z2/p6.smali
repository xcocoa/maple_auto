.class public Lz2/p6;
.super Lz2/w9;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f110191

    invoke-direct {p0, p1, v0}, Lz2/w9;-><init>(Landroid/content/Context;I)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7f6

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    goto :goto_1

    :cond_0
    const/16 v0, 0x13

    if-lt p1, v0, :cond_1

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d5

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d2

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private OooO0o0()V
    .locals 4

    const v0, 0x7f09028f

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v1

    const-string v2, "sp_key_adb_command"

    const-string v3, "logcat -v time"

    invoke-virtual {v1, v2, v3}, Lz2/x4;->OooO0Oo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090278

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lz2/p6$OooO00o;

    invoke-direct {v2, p0, v0}, Lz2/p6$OooO00o;-><init>(Lz2/p6;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lz2/w9;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00d5

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const/high16 p1, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1}, Lz2/w9;->OooO0O0(F)V

    const p1, 0x3f666666    # 0.9f

    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p0, p1, v0}, Lz2/w9;->OooO0Oo(FF)V

    invoke-direct {p0}, Lz2/p6;->OooO0o0()V

    return-void
.end method
