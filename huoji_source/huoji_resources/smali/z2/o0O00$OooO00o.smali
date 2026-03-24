.class public Lz2/o0O00$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/o0O00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/o0O00;


# direct methods
.method public constructor <init>(Lz2/o0O00;)V
    .locals 0

    iput-object p1, p0, Lz2/o0O00$OooO00o;->OoooOoO:Lz2/o0O00;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lz2/o0O00$OooO00o;->OoooOoO:Lz2/o0O00;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz2/o0O00$OooO00o;->OoooOoO:Lz2/o0O00;

    invoke-static {v1}, Lz2/o0O00;->OooOO0(Lz2/o0O00;)Ljava/io/Writer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    iget-object v1, p0, Lz2/o0O00$OooO00o;->OoooOoO:Lz2/o0O00;

    invoke-static {v1}, Lz2/o0O00;->OoooooO(Lz2/o0O00;)V

    iget-object v1, p0, Lz2/o0O00$OooO00o;->OoooOoO:Lz2/o0O00;

    invoke-static {v1}, Lz2/o0O00;->ooOO(Lz2/o0O00;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lz2/o0O00$OooO00o;->OoooOoO:Lz2/o0O00;

    invoke-static {v1}, Lz2/o0O00;->o00O0O(Lz2/o0O00;)V

    iget-object v1, p0, Lz2/o0O00$OooO00o;->OoooOoO:Lz2/o0O00;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lz2/o0O00;->o00Oo0(Lz2/o0O00;I)I

    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lz2/o0O00$OooO00o;->OooO00o()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
