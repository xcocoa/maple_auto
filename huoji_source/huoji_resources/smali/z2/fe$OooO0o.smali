.class public final Lz2/fe$OooO0o;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/fe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0o"
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/fe;


# direct methods
.method public constructor <init>(Lz2/fe;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/fe$OooO0o;->OoooOoO:Lz2/fe;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lz2/fe$OooO0o;->OoooOoO:Lz2/fe;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lz2/fe;->OooO0OO:Z

    :goto_0
    invoke-static {}, Lz2/ag;->OooO0Oo()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_5

    :try_start_0
    iget-object v0, p0, Lz2/fe$OooO0o;->OoooOoO:Lz2/fe;

    iget-object v0, v0, Lz2/fe;->OooO0oo:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/fe$OooO0O0;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Take Request:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget v2, v0, Lz2/fe$OooO0O0;->OooO00o:I

    if-eqz v2, :cond_4

    if-eq v2, v1, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lz2/fe$OooO0o;->OoooOoO:Lz2/fe;

    invoke-virtual {v2}, Lz2/fe;->OooOOO()Lcom/cyjh/mqm/MQLanguageStub;

    iget-object v0, v0, Lz2/fe$OooO0O0;->OooO0oo:Ljava/lang/String;

    invoke-static {v0}, Lcom/cyjh/mqm/MQLanguageStub;->SetRegCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lz2/fe$OooO0o;->OoooOoO:Lz2/fe;

    invoke-virtual {v2}, Lz2/fe;->OooOOO()Lcom/cyjh/mqm/MQLanguageStub;

    iget v2, v0, Lz2/fe$OooO0O0;->OooO0o:I

    iget v0, v0, Lz2/fe$OooO0O0;->OooO0oO:I

    invoke-static {v2, v0}, Lcom/cyjh/mqm/MQLanguageStub;->SetHeartBeatTime(II)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lz2/fe$OooO0o;->OoooOoO:Lz2/fe;

    invoke-virtual {v2}, Lz2/fe;->OooOOO()Lcom/cyjh/mqm/MQLanguageStub;

    invoke-static {}, Lz2/ag;->OooO0Oo()Landroid/app/Application;

    move-result-object v2

    iget-object v3, v0, Lz2/fe$OooO0O0;->OooO0OO:Ljava/lang/String;

    iget-object v4, v0, Lz2/fe$OooO0O0;->OooO0Oo:Ljava/lang/String;

    iget-object v0, v0, Lz2/fe$OooO0O0;->OooO0o0:Ljava/lang/String;

    invoke-static {v2, v3, v4, v0}, Lcom/cyjh/mqm/MQLanguageStub;->InitElf(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lz2/fe$OooO0o;->OoooOoO:Lz2/fe;

    invoke-virtual {v2}, Lz2/fe;->OooOOO()Lcom/cyjh/mqm/MQLanguageStub;

    iget-object v0, v0, Lz2/fe$OooO0O0;->OooO0O0:Ljava/lang/String;

    invoke-static {v0}, Lcom/cyjh/mqm/MQLanguageStub;->InitHost(Ljava/lang/String;)V

    iget-object v0, p0, Lz2/fe$OooO0o;->OoooOoO:Lz2/fe;

    iput-boolean v1, v0, Lz2/fe;->OooO0O0:Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lz2/fe$OooO0o;->OoooOoO:Lz2/fe;

    invoke-static {v0}, Lz2/fe;->OooO0O0(Lz2/fe;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    iget-object v0, p0, Lz2/fe$OooO0o;->OoooOoO:Lz2/fe;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lz2/fe;->OooO0OO:Z

    return-void
.end method
