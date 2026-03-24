.class public Lz2/e8;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/e8$OooO0OO;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final OooO0O0:Ljava/lang/String; = "MyAsyncTask"


# instance fields
.field private OooO00o:Lz2/e8$OooO0OO;


# direct methods
.method public constructor <init>(Lz2/e8$OooO0OO;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lz2/e8;->OooO00o:Lz2/e8$OooO0OO;

    return-void
.end method

.method public static synthetic OooO00o(Lz2/e8;)Lz2/e8$OooO0OO;
    .locals 0

    iget-object p0, p0, Lz2/e8;->OooO00o:Lz2/e8$OooO0OO;

    return-object p0
.end method

.method public static synthetic OooO0O0(Lz2/e8;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lz2/e8;->OooO0o0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private OooO0o0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lz2/zc;->OooO0o()Lz2/zc;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    new-instance v2, Lz2/e8$OooO0O0;

    invoke-direct {v2, p0}, Lz2/e8$OooO0O0;-><init>(Lz2/e8;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lz2/zc;->OooOO0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lz2/zc$OooO00o;)V

    return-void
.end method


# virtual methods
.method public varargs OooO0OO([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "screen_capture.png"

    invoke-static {p1, v0}, Lz2/j4;->OooOO0o(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    new-instance v1, Lz2/e8$OooO00o;

    invoke-direct {v1, p0, p1}, Lz2/e8$OooO00o;-><init>(Lz2/e8;Ljava/lang/String;)V

    const/4 v2, 0x1

    const/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v1}, Lcom/cyjh/mq/sdk/MqRunner;->OooO0OO(IILcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;)V

    return-object p1
.end method

.method public OooO0Oo(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lz2/e8;->OooO0OO([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lz2/e8;->OooO0Oo(Ljava/lang/String;)V

    return-void
.end method
