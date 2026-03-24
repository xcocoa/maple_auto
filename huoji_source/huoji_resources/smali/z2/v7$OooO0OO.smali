.class public Lz2/v7$OooO0OO;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/v7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0OO"
.end annotation


# instance fields
.field private final OoooOoO:Lcom/yanzhenjie/zbar/Image;

.field private final OoooOoo:Lz2/v7$OooO0O0;

.field public Ooooo00:Z

.field public final synthetic Ooooo0o:Lz2/v7;


# direct methods
.method public constructor <init>(Lz2/v7;Lcom/yanzhenjie/zbar/Image;Lz2/v7$OooO0O0;)V
    .locals 0

    iput-object p1, p0, Lz2/v7$OooO0OO;->Ooooo0o:Lz2/v7;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lz2/v7$OooO0OO;->OoooOoO:Lcom/yanzhenjie/zbar/Image;

    iput-object p3, p0, Lz2/v7$OooO0OO;->OoooOoo:Lz2/v7$OooO0O0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lz2/v7$OooO0OO;->Ooooo00:Z

    iget-object v0, p0, Lz2/v7$OooO0OO;->Ooooo0o:Lz2/v7;

    iget-object v2, p0, Lz2/v7$OooO0OO;->OoooOoO:Lcom/yanzhenjie/zbar/Image;

    iget-object v3, p0, Lz2/v7$OooO0OO;->OoooOoo:Lz2/v7$OooO0O0;

    invoke-static {v0, v2, v3}, Lz2/v7;->OooO00o(Lz2/v7;Lcom/yanzhenjie/zbar/Image;Lz2/v7$OooO0O0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lz2/v7$OooO0OO;->OoooOoo:Lz2/v7$OooO0O0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lz2/v7$OooO0O0;->error()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    iput-boolean v1, p0, Lz2/v7$OooO0OO;->Ooooo00:Z

    return-void

    :goto_1
    iput-boolean v1, p0, Lz2/v7$OooO0OO;->Ooooo00:Z

    throw v0
.end method
