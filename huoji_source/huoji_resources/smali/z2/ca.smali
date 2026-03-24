.class public Lz2/ca;
.super Lz2/w9;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/ca$OooO0OO;
    }
.end annotation


# static fields
.field private static final o000OOo:I = 0x3ea

.field private static final o0O0O00:I = 0x3e9

.field private static final o0OO00O:I = 0x1f4

.field private static o0Oo0oo:Ljava/lang/String; = null

.field private static final oo0o0Oo:I = 0x3e8


# instance fields
.field private Ooooo0o:Landroid/widget/TextView;

.field private OooooO0:Landroid/widget/TextView;

.field private OooooOO:Landroid/widget/TextView;

.field private OooooOo:Landroid/widget/Button;

.field private Oooooo:Landroid/widget/Button;

.field private Oooooo0:Landroid/widget/Button;

.field private OoooooO:Landroid/widget/Button;

.field private Ooooooo:Landroid/widget/ProgressBar;

.field private o00O0O:Lcom/cyjh/http/bean/response/VersionUpdateInfo;

.field private o00Oo0:Z

.field private o00Ooo:Ljava/lang/String;

.field private o00o0O:Ljava/lang/String;

.field private o00oO0O:Z

.field public o00oO0o:Lcom/cyjh/elfin/receiver/NetStateReceiver$OooO00o;

.field private o00ooo:Z

.field public o0OOO0o:Lz2/ce$OooO0OO;

.field private o0OoOo0:Landroid/widget/LinearLayout;

.field private o0ooOO0:Z

.field private o0ooOOo:Z

.field private o0ooOoO:Landroid/os/Handler;

.field private oo000o:Landroid/content/Context;

.field private ooOO:Landroid/widget/LinearLayout;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lz2/ca;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lz2/ca;->o0Oo0oo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cyjh/http/bean/response/VersionUpdateInfo;Z)V
    .locals 2

    const v0, 0x7f110191

    invoke-direct {p0, p1, v0}, Lz2/w9;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/ca;->o0ooOOo:Z

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lz2/t9;

    invoke-direct {v1, p0}, Lz2/t9;-><init>(Lz2/ca;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lz2/ca;->o0ooOoO:Landroid/os/Handler;

    new-instance v0, Lz2/ca$OooO0O0;

    invoke-direct {v0, p0}, Lz2/ca$OooO0O0;-><init>(Lz2/ca;)V

    iput-object v0, p0, Lz2/ca;->o0OOO0o:Lz2/ce$OooO0OO;

    iput-boolean p3, p0, Lz2/ca;->o00Oo0:Z

    iput-object p1, p0, Lz2/ca;->oo000o:Landroid/content/Context;

    if-eqz p3, :cond_2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p1, p3, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p3, 0x7f6

    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/Window;->setType(I)V

    goto :goto_1

    :cond_0
    const/16 p3, 0x13

    if-lt p1, p3, :cond_1

    const/16 p3, 0x18

    if-ge p1, p3, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p3, 0x7d5

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p3, 0x7d2

    goto :goto_0

    :cond_2
    :goto_1
    iput-object p2, p0, Lz2/ca;->o00O0O:Lcom/cyjh/http/bean/response/VersionUpdateInfo;

    return-void
.end method

.method public static synthetic OooO(Lz2/ca;Z)Z
    .locals 0

    iput-boolean p1, p0, Lz2/ca;->o0ooOO0:Z

    return p1
.end method

.method public static synthetic OooO0o(Lz2/ca;)Z
    .locals 0

    iget-boolean p0, p0, Lz2/ca;->o00oO0O:Z

    return p0
.end method

.method public static synthetic OooO0o0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lz2/ca;->o0Oo0oo:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic OooO0oO(Lz2/ca;Z)Z
    .locals 0

    iput-boolean p1, p0, Lz2/ca;->o00oO0O:Z

    return p1
.end method

.method public static synthetic OooO0oo(Lz2/ca;)Z
    .locals 0

    iget-boolean p0, p0, Lz2/ca;->o0ooOO0:Z

    return p0
.end method

.method public static synthetic OooOO0(Lz2/ca;)V
    .locals 0

    invoke-direct {p0}, Lz2/ca;->OooOOOo()V

    return-void
.end method

.method public static synthetic OooOO0O(Lz2/ca;Z)Z
    .locals 0

    iput-boolean p1, p0, Lz2/ca;->o0ooOOo:Z

    return p1
.end method

.method public static synthetic OooOO0o(Lz2/ca;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lz2/ca;->o0ooOoO:Landroid/os/Handler;

    return-object p0
.end method

.method private OooOOO(Ljava/io/File;)V
    .locals 2

    iget-boolean v0, p0, Lz2/ca;->o00ooo:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lz2/ca;->OooOOoo(Ljava/io/File;)V

    iget-object v0, p0, Lz2/ca;->OoooooO:Landroid/widget/Button;

    const-string v1, "\u5b89\u88c5"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lz2/ca;->OoooooO:Landroid/widget/Button;

    new-instance v1, Lz2/v9;

    invoke-direct {v1, p0, p1}, Lz2/v9;-><init>(Lz2/ca;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic OooOOO0(Lz2/ca;)Lcom/cyjh/http/bean/response/VersionUpdateInfo;
    .locals 0

    iget-object p0, p0, Lz2/ca;->o00O0O:Lcom/cyjh/http/bean/response/VersionUpdateInfo;

    return-object p0
.end method

.method private OooOOOO()V
    .locals 4

    iget-object v0, p0, Lz2/ca;->ooOO:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lz2/ca;->o00O0O:Lcom/cyjh/http/bean/response/VersionUpdateInfo;

    iget v0, v0, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->UpdateType:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lz2/ca;->o0OoOo0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lz2/ca;->OoooooO:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lz2/ca;->OooooOo:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/ca;->o0OoOo0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lz2/ca;->OooooOo:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :goto_0
    return-void
.end method

.method private OooOOOo()V
    .locals 5

    iget-boolean v0, p0, Lz2/ca;->o0ooOOo:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/ca;->o0ooOOo:Z

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v1, p0, Lz2/ca;->ooOO:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lz2/ca;->o0OoOo0:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lz2/ca;->OooooOo:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lz2/ca$OooO0OO;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lz2/ca$OooO0OO;-><init>(Lz2/ca;Lz2/ca$OooO00o;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object v1, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private OooOOo()V
    .locals 3

    const v0, 0x7f090493

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lz2/ca;->Ooooo0o:Landroid/widget/TextView;

    const v0, 0x7f090494

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lz2/ca;->OooooO0:Landroid/widget/TextView;

    const v0, 0x7f090492

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lz2/ca;->OooooOO:Landroid/widget/TextView;

    const v0, 0x7f09048c

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lz2/ca;->OooooOo:Landroid/widget/Button;

    const v0, 0x7f09048e

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lz2/ca;->Oooooo0:Landroid/widget/Button;

    const v0, 0x7f09048d

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lz2/ca;->Oooooo:Landroid/widget/Button;

    const v0, 0x7f09048b

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lz2/ca;->OoooooO:Landroid/widget/Button;

    const v0, 0x7f090491

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lz2/ca;->Ooooooo:Landroid/widget/ProgressBar;

    const v0, 0x7f090490

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lz2/ca;->o0OoOo0:Landroid/widget/LinearLayout;

    const v0, 0x7f09048f

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lz2/ca;->ooOO:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lz2/ca;->OooooOo:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lz2/ca;->Oooooo0:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lz2/ca;->Oooooo:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lz2/ca;->OoooooO:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lz2/ca;->OooOOOO()V

    iget-object v0, p0, Lz2/ca;->Ooooo0o:Landroid/widget/TextView;

    iget-object v1, p0, Lz2/ca;->o00O0O:Lcom/cyjh/http/bean/response/VersionUpdateInfo;

    iget v1, v1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->PackageSize:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lz2/k4;->OooO0Oo(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lz2/ca;->Ooooo0o:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lz2/ca;->OooooO0:Landroid/widget/TextView;

    iget-object v1, p0, Lz2/ca;->o00O0O:Lcom/cyjh/http/bean/response/VersionUpdateInfo;

    iget-object v1, v1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->UpdateContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private OooOOo0()V
    .locals 1

    new-instance v0, Lz2/ca$OooO00o;

    invoke-direct {v0, p0}, Lz2/ca$OooO00o;-><init>(Lz2/ca;)V

    iput-object v0, p0, Lz2/ca;->o00oO0o:Lcom/cyjh/elfin/receiver/NetStateReceiver$OooO00o;

    iget-object v0, p0, Lz2/ca;->oo000o:Landroid/content/Context;

    invoke-static {v0}, Lcom/cyjh/elfin/receiver/NetStateReceiver;->OooO0o(Landroid/content/Context;)V

    iget-object v0, p0, Lz2/ca;->o00oO0o:Lcom/cyjh/elfin/receiver/NetStateReceiver$OooO00o;

    invoke-static {v0}, Lcom/cyjh/elfin/receiver/NetStateReceiver;->OooO0oO(Lcom/cyjh/elfin/receiver/NetStateReceiver$OooO00o;)V

    return-void
.end method

.method private OooOOoo(Ljava/io/File;)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lz2/u9;

    invoke-direct {v1, p0, p1}, Lz2/u9;-><init>(Lz2/ca;Ljava/io/File;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic OooOo(Landroid/os/Message;)Z
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lz2/ca;->o0ooOOo:Z

    invoke-direct {p0}, Lz2/ca;->OooOOOO()V

    goto :goto_0

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lz2/ca;->OooooOO:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lz2/ca;->Ooooooo:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    invoke-direct {p0, p1}, Lz2/ca;->OooOOO(Ljava/io/File;)V

    :goto_0
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic OooOo00(Ljava/io/File;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/ca;->OooOOoo(Ljava/io/File;)V

    return-void
.end method

.method private synthetic OooOo0O(Ljava/io/File;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lz2/ca;->dismiss()V

    iget-object v0, p0, Lz2/ca;->oo000o:Landroid/content/Context;

    const v1, 0x7f10020f

    invoke-static {v0, p1, v1}, Lz2/w3;->Oooo00o(Landroid/content/Context;Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic OooOo0(Ljava/io/File;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lz2/ca;->OooOo00(Ljava/io/File;Landroid/view/View;)V

    return-void
.end method

.method public synthetic OooOo0o(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/ca;->OooOo0O(Ljava/io/File;)V

    return-void
.end method

.method public synthetic OooOoO0(Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lz2/ca;->OooOo(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public dismiss()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lz2/ca;->oo000o:Landroid/content/Context;

    invoke-static {v0}, Lcom/cyjh/elfin/receiver/NetStateReceiver;->OooO(Landroid/content/Context;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lz2/ca;->OooOOOo()V

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lz2/ca;->o00ooo:Z

    iget-object p1, p0, Lz2/ca;->oo000o:Landroid/content/Context;

    invoke-static {p1}, Lcom/cyjh/elfin/receiver/NetStateReceiver;->OooO(Landroid/content/Context;)V

    invoke-static {}, Lz2/ce;->OooO0oo()Lz2/ce;

    move-result-object p1

    invoke-virtual {p1}, Lz2/ce;->OooO0o0()V

    :pswitch_2
    invoke-virtual {p0}, Lz2/ca;->dismiss()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f09048b
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lz2/w9;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0140

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const p1, 0x3f666666    # 0.9f

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p0, p1, v0}, Lz2/w9;->OooO0Oo(FF)V

    invoke-direct {p0}, Lz2/ca;->OooOOo()V

    invoke-direct {p0}, Lz2/ca;->OooOOo0()V

    return-void
.end method

.method public show()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
