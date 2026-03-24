.class public Lz2/uu$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/uu;->o00oO0o()Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/uu;

.field public final synthetic OoooOoo:Lz2/uu;


# direct methods
.method public constructor <init>(Lz2/uu;Lz2/uu;)V
    .locals 0

    iput-object p1, p0, Lz2/uu$OooO00o;->OoooOoo:Lz2/uu;

    iput-object p2, p0, Lz2/uu$OooO00o;->OoooOoO:Lz2/uu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :cond_0
    :goto_0
    iget-object v0, p0, Lz2/uu$OooO00o;->OoooOoo:Lz2/uu;

    invoke-static {v0}, Lz2/uu;->OooOO0(Lz2/uu;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_8

    :try_start_0
    iget-object v0, p0, Lz2/uu$OooO00o;->OoooOoo:Lz2/uu;

    invoke-static {v0}, Lz2/uu;->OooooOo(Lz2/uu;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lz2/wu$OooO00o;->OooO00o(Ljava/io/InputStream;)Lz2/wu$OooO00o;

    move-result-object v0

    invoke-static {v0}, Lz2/wu;->OooO(Lz2/wu$OooO00o;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget v1, v0, Lz2/wu$OooO00o;->OooO00o:I

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v1, p0, Lz2/uu$OooO00o;->OoooOoO:Lz2/uu;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lz2/uu$OooO00o;->OoooOoO:Lz2/uu;

    iget v0, v0, Lz2/wu$OooO00o;->OooO0OO:I

    invoke-static {v3, v0}, Lz2/uu;->o00O0O(Lz2/uu;I)I

    iget-object v0, p0, Lz2/uu$OooO00o;->OoooOoO:Lz2/uu;

    invoke-static {v0, v2}, Lz2/uu;->Oooooo(Lz2/uu;Z)Z

    iget-object v0, p0, Lz2/uu$OooO00o;->OoooOoO:Lz2/uu;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :sswitch_1
    iget v1, v0, Lz2/wu$OooO00o;->OooO0O0:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lz2/uu$OooO00o;->OoooOoO:Lz2/uu;

    invoke-static {v1}, Lz2/uu;->Ooooooo(Lz2/uu;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lz2/uu$OooO00o;->OoooOoO:Lz2/uu;

    invoke-static {v1}, Lz2/uu;->ooOO(Lz2/uu;)Lz2/vu;

    move-result-object v1

    invoke-virtual {v1}, Lz2/vu;->OooO0OO()[B

    move-result-object v1

    invoke-static {v0, v1}, Lz2/wu;->OooO00o(I[B)[B

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    iget-object v3, p0, Lz2/uu$OooO00o;->OoooOoO:Lz2/uu;

    invoke-static {v3}, Lz2/uu;->ooOO(Lz2/uu;)Lz2/vu;

    move-result-object v3

    iget-object v0, v0, Lz2/wu$OooO00o;->OooO0oO:[B

    invoke-virtual {v3, v0}, Lz2/vu;->OooO0oO([B)[B

    move-result-object v0

    invoke-static {v1, v0}, Lz2/wu;->OooO00o(I[B)[B

    move-result-object v0

    iget-object v1, p0, Lz2/uu$OooO00o;->OoooOoO:Lz2/uu;

    invoke-static {v1, v2}, Lz2/uu;->o0OoOo0(Lz2/uu;Z)Z

    :goto_1
    iget-object v1, p0, Lz2/uu$OooO00o;->OoooOoO:Lz2/uu;

    iget-object v1, v1, Lz2/uu;->Ooooo0o:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lz2/uu$OooO00o;->OoooOoO:Lz2/uu;

    iget-object v0, v0, Lz2/uu;->Ooooo0o:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lz2/uu$OooO00o;->OoooOoO:Lz2/uu;

    invoke-static {v1}, Lz2/uu;->Oooooo0(Lz2/uu;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lz2/uu$OooO00o;->OoooOoo:Lz2/uu;

    invoke-static {v1}, Lz2/uu;->OoooooO(Lz2/uu;)Ljava/util/HashMap;

    move-result-object v1

    iget v2, v0, Lz2/wu$OooO00o;->OooO0OO:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/xu;

    if-nez v1, :cond_4

    goto/16 :goto_0

    :cond_4
    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget v2, v0, Lz2/wu$OooO00o;->OooO00o:I

    const v3, 0x59414b4f

    if-ne v2, v3, :cond_5

    iget v0, v0, Lz2/wu$OooO00o;->OooO0O0:I

    invoke-virtual {v1, v0}, Lz2/xu;->o0OoOo0(I)V

    invoke-virtual {v1}, Lz2/xu;->OoooooO()V

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    goto :goto_2

    :cond_5
    const v3, 0x45545257

    if-ne v2, v3, :cond_6

    iget-object v0, v0, Lz2/wu$OooO00o;->OooO0oO:[B

    invoke-virtual {v1, v0}, Lz2/xu;->OooOO0([B)V

    invoke-virtual {v1}, Lz2/xu;->Ooooooo()V

    goto :goto_2

    :cond_6
    const v3, 0x45534c43

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lz2/uu$OooO00o;->OoooOoO:Lz2/uu;

    invoke-static {v2}, Lz2/uu;->OoooooO(Lz2/uu;)Ljava/util/HashMap;

    move-result-object v2

    iget v0, v0, Lz2/wu$OooO00o;->OooO0OO:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lz2/xu;->Oooooo0()V

    :cond_7
    :goto_2
    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_8
    iget-object v0, p0, Lz2/uu$OooO00o;->OoooOoO:Lz2/uu;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lz2/uu$OooO00o;->OoooOoo:Lz2/uu;

    invoke-static {v1}, Lz2/uu;->o00Oo0(Lz2/uu;)V

    iget-object v1, p0, Lz2/uu$OooO00o;->OoooOoO:Lz2/uu;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    iget-object v1, p0, Lz2/uu$OooO00o;->OoooOoO:Lz2/uu;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lz2/uu;->o00Ooo(Lz2/uu;Z)Z

    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x45534c43 -> :sswitch_2
        0x45545257 -> :sswitch_2
        0x48545541 -> :sswitch_1
        0x4e584e43 -> :sswitch_0
        0x59414b4f -> :sswitch_2
    .end sparse-switch
.end method
