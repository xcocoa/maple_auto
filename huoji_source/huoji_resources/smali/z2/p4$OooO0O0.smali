.class public Lz2/p4$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/p4;->OooO0oo(Ljava/lang/String;Ljava/lang/String;)Lz2/p4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Ljava/lang/String;

.field public final synthetic OoooOoo:Ljava/lang/String;

.field public final synthetic Ooooo00:Lz2/p4;


# direct methods
.method public constructor <init>(Lz2/p4;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/p4$OooO0O0;->Ooooo00:Lz2/p4;

    iput-object p2, p0, Lz2/p4$OooO0O0;->OoooOoO:Ljava/lang/String;

    iput-object p3, p0, Lz2/p4$OooO0O0;->OoooOoo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lz2/p4$OooO0O0;->Ooooo00:Lz2/p4;

    invoke-static {v0}, Lz2/p4;->OooO0O0(Lz2/p4;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lz2/p4$OooO0O0;->OoooOoO:Ljava/lang/String;

    iget-object v3, p0, Lz2/p4$OooO0O0;->OoooOoo:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lz2/p4;->OooO0OO(Lz2/p4;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lz2/p4$OooO0O0;->Ooooo00:Lz2/p4;

    invoke-static {v0}, Lz2/p4;->OooO0Oo(Lz2/p4;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/p4$OooO0O0;->Ooooo00:Lz2/p4;

    invoke-static {v0}, Lz2/p4;->OooO0o0(Lz2/p4;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/p4$OooO0O0;->Ooooo00:Lz2/p4;

    invoke-static {v0}, Lz2/p4;->OooO0o0(Lz2/p4;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lz2/p4$OooO0O0;->Ooooo00:Lz2/p4;

    invoke-static {v2}, Lz2/p4;->OooO0o(Lz2/p4;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
