.class public Lz2/t6;
.super Lz2/w9;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final o0OoOo0:Ljava/lang/String;


# instance fields
.field private Ooooo0o:Landroid/widget/ImageView;

.field private OooooO0:Landroid/widget/Button;

.field private OooooOO:Landroid/widget/ScrollView;

.field public OooooOo:Landroid/content/Context;

.field private Oooooo:Landroid/widget/TextView;

.field private Oooooo0:Landroid/widget/LinearLayout;

.field private OoooooO:Lz2/vi;

.field private Ooooooo:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lz2/t6;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lz2/t6;->o0OoOo0:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f110191

    invoke-direct {p0, p1, v0}, Lz2/w9;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lz2/t6;->Ooooooo:Z

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

    const/16 v0, 0x7d5

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d2

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static synthetic OooO(Lz2/t6;FF)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lz2/w9;->OooO0Oo(FF)V

    return-void
.end method

.method public static synthetic OooO0o(Lz2/t6;Z)Z
    .locals 0

    iput-boolean p1, p0, Lz2/t6;->Ooooooo:Z

    return p1
.end method

.method public static synthetic OooO0o0(Lz2/t6;)Z
    .locals 0

    iget-boolean p0, p0, Lz2/t6;->Ooooooo:Z

    return p0
.end method

.method public static synthetic OooO0oO(Lz2/t6;)V
    .locals 0

    invoke-direct {p0}, Lz2/t6;->OooOo0()V

    return-void
.end method

.method public static synthetic OooO0oo()Ljava/lang/String;
    .locals 1

    sget-object v0, Lz2/t6;->o0OoOo0:Ljava/lang/String;

    return-object v0
.end method

.method private OooOO0(FFIZ)V
    .locals 8

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lz2/t6$OooO0O0;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lz2/t6$OooO0O0;-><init>(Lz2/t6;FFIZ)V

    const-wide/16 p1, 0x1f4

    invoke-virtual {v0, v7, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private OooOO0O(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Lz2/t6;->OoooooO:Lz2/vi;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lz2/vi;->OooO0o0()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private OooOO0o()V
    .locals 1

    new-instance v0, Lz2/t6$OooO00o;

    invoke-direct {v0, p0}, Lz2/t6$OooO00o;-><init>(Lz2/t6;)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private OooOOO()V
    .locals 3

    const v0, 0x7f0903d2

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lz2/t6;->Ooooo0o:Landroid/widget/ImageView;

    const v0, 0x7f0903d1

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lz2/t6;->OooooO0:Landroid/widget/Button;

    const v0, 0x7f0903d4

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lz2/t6;->OooooOO:Landroid/widget/ScrollView;

    const v0, 0x7f090472

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lz2/t6;->Oooooo:Landroid/widget/TextView;

    iget-object v0, p0, Lz2/t6;->Ooooo0o:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lz2/t6;->OooooO0:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09035e

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lz2/t6;->Oooooo0:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lz2/w3;->OooOoo0(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const v2, 0x3f666666    # 0.9f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v1, p0, Lz2/t6;->Oooooo0:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic OooOOOO()Landroid/widget/LinearLayout;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lz2/t6;->OoooooO:Lz2/vi;

    invoke-interface {v0}, Lz2/vi;->read()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method private synthetic OooOOo0(Lcom/cyjh/elfin/entity/Script;Landroid/widget/LinearLayout;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lz2/t6;->OoooooO:Lz2/vi;

    invoke-interface {v0}, Lz2/vi;->OooO0Oo()V

    iget-object v0, p0, Lz2/t6;->OoooooO:Lz2/vi;

    invoke-interface {v0}, Lz2/vi;->OooO0o0()Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/cyjh/elfin/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_0

    iget-object p1, p0, Lz2/t6;->Oooooo0:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object p1, p0, Lz2/t6;->Oooooo0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lz2/t6;->OooooOO:Landroid/widget/ScrollView;

    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->removeViewAt(I)V

    iget-object p1, p0, Lz2/t6;->OooooOO:Landroid/widget/ScrollView;

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    :goto_0
    iget-object p1, p0, Lz2/t6;->Oooooo:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lz2/t6;->OooooO0:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private synthetic OooOOoo(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lz2/t6;->Oooooo:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lz2/t6;->OooooO0:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private OooOo0()V
    .locals 1

    :try_start_0
    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/b7;->OooO0oO()Lcom/cyjh/elfin/entity/Script;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getCfgFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lz2/t6;->OooOO0O(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-static {}, Lz2/y8;->OooOO0()V

    return-void
.end method


# virtual methods
.method public OooOOO0(IZ)V
    .locals 7

    invoke-static {}, Lz2/i7;->OooO()Lz2/i7;

    move-result-object v0

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object p1

    invoke-virtual {p1}, Lz2/b7;->OooO0oO()Lcom/cyjh/elfin/entity/Script;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/elfin/entity/Script;->getLcFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lz2/m7;->OooO0o0()Lz2/m7;

    move-result-object p1

    invoke-virtual {p1}, Lz2/m7;->OooO0o()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lz2/m7;->OooO0o0()Lz2/m7;

    move-result-object p1

    invoke-virtual {p1}, Lz2/m7;->OooO0oO()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object p1

    iget-wide v4, p1, Lz2/b7;->OooO0Oo:J

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object p1

    invoke-virtual {p1}, Lz2/b7;->OooO0oO()Lcom/cyjh/elfin/entity/Script;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/elfin/entity/Script;->getCfgFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lz2/i7;->Oooo0O0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    iget-object p1, p0, Lz2/t6;->Oooooo:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lz2/t6;->OooooO0:Landroid/widget/Button;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lz2/t6;->Oooooo0:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lz2/t6;->Oooooo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lz2/t6;->Oooooo0:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lz2/t6;->Oooooo:Landroid/widget/TextView;

    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :cond_0
    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object p1

    invoke-virtual {p1}, Lz2/b7;->OooO0oO()Lcom/cyjh/elfin/entity/Script;

    move-result-object p1

    iget-object p2, p0, Lz2/t6;->OoooooO:Lz2/vi;

    if-nez p2, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Lcom/cyjh/elfin/entity/Script;->getUiFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/elfin/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cyjh/elfin/entity/Script;->getCfgFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v0, v1, v2}, Lz2/ii;->OooO0OO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lz2/vi;

    move-result-object p2

    iput-object p2, p0, Lz2/t6;->OoooooO:Lz2/vi;

    :cond_1
    invoke-static {}, Lz2/e5;->OooO00o()Lz2/i40;

    move-result-object p2

    new-instance v0, Lz2/l6;

    invoke-direct {v0, p0}, Lz2/l6;-><init>(Lz2/t6;)V

    invoke-virtual {p2, v0}, Lz2/p40;->OooO0oO(Ljava/util/concurrent/Callable;)Lorg/jdeferred/Promise;

    move-result-object p2

    new-instance v0, Lz2/m6;

    invoke-direct {v0, p0, p1}, Lz2/m6;-><init>(Lz2/t6;Lcom/cyjh/elfin/entity/Script;)V

    invoke-interface {p2, v0}, Lorg/jdeferred/Promise;->OooOOO(Lz2/y30;)Lorg/jdeferred/Promise;

    move-result-object p1

    new-instance p2, Lz2/n6;

    invoke-direct {p2, p0}, Lz2/n6;-><init>(Lz2/t6;)V

    invoke-interface {p1, p2}, Lorg/jdeferred/Promise;->OooOO0(Lz2/b40;)Lorg/jdeferred/Promise;

    return-void
.end method

.method public synthetic OooOOOo()Landroid/widget/LinearLayout;
    .locals 1

    invoke-direct {p0}, Lz2/t6;->OooOOOO()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public synthetic OooOOo(Lcom/cyjh/elfin/entity/Script;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lz2/t6;->OooOOo0(Lcom/cyjh/elfin/entity/Script;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public synthetic OooOo00(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/t6;->OooOOoo(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    new-instance p1, Lz2/u6;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lz2/u6;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lz2/t6;->OooooOo:Landroid/content/Context;

    iput-object v0, p1, Lz2/u6;->o00Ooo:Landroid/content/Context;

    new-instance v0, Lz2/t6$OooO0OO;

    invoke-direct {v0, p0, p1}, Lz2/t6$OooO0OO;-><init>(Lz2/t6;Lz2/u6;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lz2/t6;->Ooooooo:Z

    invoke-direct {p0}, Lz2/t6;->OooOo0()V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0903d1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lz2/w9;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00e6

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const p1, 0x3dcccccd    # 0.1f

    invoke-virtual {p0, p1}, Lz2/w9;->OooO0O0(F)V

    invoke-static {}, Lz2/a7;->OooO00o()Lz2/a7;

    move-result-object p1

    invoke-virtual {p1}, Lz2/a7;->OooO0O0()Z

    move-result p1

    const v0, 0x3f666666    # 0.9f

    if-eqz p1, :cond_0

    const p1, 0x3f4ccccd    # 0.8f

    goto :goto_0

    :cond_0
    const p1, 0x3f19999a    # 0.6f

    :goto_0
    invoke-virtual {p0, v0, p1}, Lz2/w9;->OooO0Oo(FF)V

    invoke-direct {p0}, Lz2/t6;->OooOOO()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lz2/t6;->OooOOO0(IZ)V

    invoke-direct {p0}, Lz2/t6;->OooOO0o()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    return-void
.end method
