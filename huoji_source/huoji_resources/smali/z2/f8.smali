.class public Lz2/f8;
.super Landroid/os/AsyncTask;
.source ""


# annotations
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
.field private static final OooO00o:Ljava/lang/String; = "MyAsyncTask"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs OooO00o([Ljava/lang/Void;)Ljava/lang/String;
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

    new-instance v1, Lz2/f8$OooO00o;

    invoke-direct {v1, p0, p1}, Lz2/f8$OooO00o;-><init>(Lz2/f8;Ljava/lang/String;)V

    const/4 v2, 0x1

    const/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v1}, Lcom/cyjh/mq/sdk/MqRunner;->OooO0OO(IILcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;)V

    return-object p1
.end method

.method public OooO0O0(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lz2/f8;->OooO00o([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lz2/f8;->OooO0O0(Ljava/lang/String;)V

    return-void
.end method
