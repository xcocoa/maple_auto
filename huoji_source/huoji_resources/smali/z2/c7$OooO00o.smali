.class public Lz2/c7$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/h7$OooOO0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/c7;->OooO0o(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Ljava/io/File;

.field public final synthetic OooO0O0:Lz2/c7;


# direct methods
.method public constructor <init>(Lz2/c7;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lz2/c7$OooO00o;->OooO0O0:Lz2/c7;

    iput-object p2, p0, Lz2/c7$OooO00o;->OooO00o:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Object;)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "afterDownloadSuccess --> 2 initScript --- onCallbackSuc --> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object p1, p0, Lz2/c7$OooO00o;->OooO0O0:Lz2/c7;

    invoke-static {p1}, Lz2/c7;->OooO0OO(Lz2/c7;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lz2/c7$OooO00o$OooO0O0;

    invoke-direct {v0, p0}, Lz2/c7$OooO00o$OooO0O0;-><init>(Lz2/c7$OooO00o;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lz2/c7$OooO00o;->OooO00o:Ljava/io/File;

    invoke-static {p1}, Lz2/j4;->OooO(Ljava/io/File;)Z

    invoke-static {}, Lz2/c7;->OooO0Oo()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "afterDownloadSuccess --> 3 initScript:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lz2/i7;->OooO()Lz2/i7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/i7;->OooOOO()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    iget-boolean p1, p1, Lcom/cyjh/elfin/base/AppContext;->Oooooo:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lz2/i7;->OooO()Lz2/i7;

    move-result-object p1

    invoke-virtual {p1}, Lz2/i7;->OooOOO()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lz2/i7;->OooO()Lz2/i7;

    move-result-object p1

    invoke-virtual {p1}, Lz2/i7;->OooO0oO()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lz2/c7$OooO00o;->OooO0O0:Lz2/c7;

    invoke-virtual {p1}, Lz2/c7;->OooOO0()V

    :goto_0
    invoke-static {}, Lz2/z6;->OooO0Oo()Lz2/z6;

    move-result-object p1

    invoke-virtual {p1}, Lz2/z6;->OooO0OO()Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->Oooo0o()V

    invoke-static {}, Lz2/y8;->OooOO0()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lz2/c7$OooO00o;->OooO0O0:Lz2/c7;

    invoke-virtual {p1}, Lz2/c7;->OooOO0()V

    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object p1

    new-instance v0, Lcom/cyjh/elfin/entity/MsgItem;

    const/16 v1, 0x3f0

    invoke-direct {v0, v1}, Lcom/cyjh/elfin/entity/MsgItem;-><init>(I)V

    invoke-virtual {p1, v0}, Lz2/l10;->OooOOOO(Ljava/lang/Object;)V

    :goto_1
    invoke-static {}, Lz2/z6;->OooO0Oo()Lz2/z6;

    move-result-object p1

    invoke-virtual {p1}, Lz2/z6;->OooO0OO()Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {}, Lz2/z6;->OooO0Oo()Lz2/z6;

    move-result-object p1

    invoke-virtual {p1}, Lz2/z6;->OooO0OO()Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->setIsPreventRepeatedClick(Z)V

    :cond_2
    return-void
.end method

.method public OooO0O0()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "afterDownloadSuccess --> 3 initScript --- onCallbackFail ---> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lz2/c7$OooO00o;->OooO0O0:Lz2/c7;

    invoke-static {v0}, Lz2/c7;->OooO0OO(Lz2/c7;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lz2/c7$OooO00o$OooO00o;

    invoke-direct {v1, p0}, Lz2/c7$OooO00o$OooO00o;-><init>(Lz2/c7$OooO00o;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lz2/c7$OooO00o;->OooO00o:Ljava/io/File;

    invoke-static {v0}, Lz2/j4;->OooO(Ljava/io/File;)Z

    invoke-static {}, Lz2/z6;->OooO0Oo()Lz2/z6;

    move-result-object v0

    invoke-virtual {v0}, Lz2/z6;->OooO0OO()Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lz2/z6;->OooO0Oo()Lz2/z6;

    move-result-object v0

    invoke-virtual {v0}, Lz2/z6;->OooO0OO()Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->setIsPreventRepeatedClick(Z)V

    :cond_0
    return-void
.end method
