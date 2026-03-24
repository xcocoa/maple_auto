.class public final Lz2/dg$OooO00o;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/dg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/dg;


# direct methods
.method public constructor <init>(Lz2/dg;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/dg$OooO00o;->OoooOoO:Lz2/dg;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :goto_0
    iget-object v0, p0, Lz2/dg$OooO00o;->OoooOoO:Lz2/dg;

    iget-boolean v1, v0, Lz2/dg;->OooO0o0:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v0, v0, Lz2/dg;->OooOo:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    new-instance v1, Lz2/ne;

    invoke-direct {v1, v0}, Lz2/ne;-><init>(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    iget-object v0, p0, Lz2/dg$OooO00o;->OoooOoO:Lz2/dg;

    invoke-virtual {v1}, Lz2/oe;->OooO00o()[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v3, v2, 0x4

    new-array v3, v3, [B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Lz2/oe;->OooO00o()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0, v3}, Lz2/cg;->OooO0OO(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method
