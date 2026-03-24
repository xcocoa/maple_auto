.class public final Lz2/sx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/sx$OooO00o;
    }
.end annotation


# instance fields
.field public final OoooOoO:Lz2/qx;

.field public final OoooOoo:Lokhttp3/Protocol;

.field public final Ooooo00:I

.field public final Ooooo0o:Ljava/lang/String;

.field public final OooooO0:Lz2/ix;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final OooooOO:Lz2/jx;

.field public final OooooOo:Lz2/tx;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final Oooooo:Lz2/sx;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final Oooooo0:Lz2/sx;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final OoooooO:Lz2/sx;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final Ooooooo:J

.field public final o0OoOo0:J

.field private volatile ooOO:Lz2/sw;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz2/sx$OooO00o;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lz2/sx$OooO00o;->OooO00o:Lz2/qx;

    iput-object v0, p0, Lz2/sx;->OoooOoO:Lz2/qx;

    iget-object v0, p1, Lz2/sx$OooO00o;->OooO0O0:Lokhttp3/Protocol;

    iput-object v0, p0, Lz2/sx;->OoooOoo:Lokhttp3/Protocol;

    iget v0, p1, Lz2/sx$OooO00o;->OooO0OO:I

    iput v0, p0, Lz2/sx;->Ooooo00:I

    iget-object v0, p1, Lz2/sx$OooO00o;->OooO0Oo:Ljava/lang/String;

    iput-object v0, p0, Lz2/sx;->Ooooo0o:Ljava/lang/String;

    iget-object v0, p1, Lz2/sx$OooO00o;->OooO0o0:Lz2/ix;

    iput-object v0, p0, Lz2/sx;->OooooO0:Lz2/ix;

    iget-object v0, p1, Lz2/sx$OooO00o;->OooO0o:Lz2/jx$OooO00o;

    invoke-virtual {v0}, Lz2/jx$OooO00o;->OooO0oo()Lz2/jx;

    move-result-object v0

    iput-object v0, p0, Lz2/sx;->OooooOO:Lz2/jx;

    iget-object v0, p1, Lz2/sx$OooO00o;->OooO0oO:Lz2/tx;

    iput-object v0, p0, Lz2/sx;->OooooOo:Lz2/tx;

    iget-object v0, p1, Lz2/sx$OooO00o;->OooO0oo:Lz2/sx;

    iput-object v0, p0, Lz2/sx;->Oooooo0:Lz2/sx;

    iget-object v0, p1, Lz2/sx$OooO00o;->OooO:Lz2/sx;

    iput-object v0, p0, Lz2/sx;->Oooooo:Lz2/sx;

    iget-object v0, p1, Lz2/sx$OooO00o;->OooOO0:Lz2/sx;

    iput-object v0, p0, Lz2/sx;->OoooooO:Lz2/sx;

    iget-wide v0, p1, Lz2/sx$OooO00o;->OooOO0O:J

    iput-wide v0, p0, Lz2/sx;->Ooooooo:J

    iget-wide v0, p1, Lz2/sx$OooO00o;->OooOO0o:J

    iput-wide v0, p0, Lz2/sx;->o0OoOo0:J

    return-void
.end method


# virtual methods
.method public OooOO0()Lz2/tx;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz2/sx;->OooooOo:Lz2/tx;

    return-object v0
.end method

.method public OooooOo()Lz2/sw;
    .locals 1

    iget-object v0, p0, Lz2/sx;->ooOO:Lz2/sw;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/sx;->OooooOO:Lz2/jx;

    invoke-static {v0}, Lz2/sw;->OooOOO0(Lz2/jx;)Lz2/sw;

    move-result-object v0

    iput-object v0, p0, Lz2/sx;->ooOO:Lz2/sw;

    :goto_0
    return-object v0
.end method

.method public Oooooo()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lz2/ww;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lz2/sx;->Ooooo00:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    const-string v0, "WWW-Authenticate"

    goto :goto_0

    :cond_0
    const/16 v1, 0x197

    if-ne v0, v1, :cond_1

    const-string v0, "Proxy-Authenticate"

    :goto_0
    invoke-virtual {p0}, Lz2/sx;->o00Oo0()Lz2/jx;

    move-result-object v1

    invoke-static {v1, v0}, Lz2/uy;->OooO0oO(Lz2/jx;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public Oooooo0()Lz2/sx;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz2/sx;->Oooooo:Lz2/sx;

    return-object v0
.end method

.method public OoooooO()I
    .locals 1

    iget v0, p0, Lz2/sx;->Ooooo00:I

    return v0
.end method

.method public Ooooooo()Lz2/ix;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz2/sx;->OooooO0:Lz2/ix;

    return-object v0
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lz2/sx;->OooooOo:Lz2/tx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz2/tx;->close()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response is not eligible for a body and must not be closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public o00O0O(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/sx;->OooooOO:Lz2/jx;

    invoke-virtual {v0, p1}, Lz2/jx;->OooOOOO(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public o00Oo0()Lz2/jx;
    .locals 1

    iget-object v0, p0, Lz2/sx;->OooooOO:Lz2/jx;

    return-object v0
.end method

.method public o00Ooo()Z
    .locals 2

    iget v0, p0, Lz2/sx;->Ooooo00:I

    const/16 v1, 0x133

    if-eq v0, v1, :cond_0

    const/16 v1, 0x134

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public o00o0O()Z
    .locals 2

    iget v0, p0, Lz2/sx;->Ooooo00:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o00oO0O(J)Lz2/tx;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/sx;->OooooOo:Lz2/tx;

    invoke-virtual {v0}, Lz2/tx;->source()Lz2/l00;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lz2/l00;->request(J)Z

    invoke-interface {v0}, Lz2/l00;->OooO00o()Lz2/j00;

    move-result-object v0

    invoke-virtual {v0}, Lz2/j00;->Oooooo0()Lz2/j00;

    move-result-object v0

    invoke-virtual {v0}, Lz2/j00;->o00000O0()J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-lez v3, :cond_0

    new-instance v1, Lz2/j00;

    invoke-direct {v1}, Lz2/j00;-><init>()V

    invoke-virtual {v1, v0, p1, p2}, Lz2/j00;->OooOooO(Lz2/j00;J)V

    invoke-virtual {v0}, Lz2/j00;->OooooOo()V

    move-object v0, v1

    :cond_0
    iget-object p1, p0, Lz2/sx;->OooooOo:Lz2/tx;

    invoke-virtual {p1}, Lz2/tx;->contentType()Lz2/mx;

    move-result-object p1

    invoke-virtual {v0}, Lz2/j00;->o00000O0()J

    move-result-wide v1

    invoke-static {p1, v1, v2, v0}, Lz2/tx;->create(Lz2/mx;JLz2/l00;)Lz2/tx;

    move-result-object p1

    return-object p1
.end method

.method public o00oO0o()Lz2/sx$OooO00o;
    .locals 1

    new-instance v0, Lz2/sx$OooO00o;

    invoke-direct {v0, p0}, Lz2/sx$OooO00o;-><init>(Lz2/sx;)V

    return-object v0
.end method

.method public o00ooo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/sx;->Ooooo0o:Ljava/lang/String;

    return-object v0
.end method

.method public o0OOO0o()Lz2/qx;
    .locals 1

    iget-object v0, p0, Lz2/sx;->OoooOoO:Lz2/qx;

    return-object v0
.end method

.method public o0Oo0oo()J
    .locals 2

    iget-wide v0, p0, Lz2/sx;->Ooooooo:J

    return-wide v0
.end method

.method public o0OoOo0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lz2/sx;->ooOO(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public o0ooOO0()Lz2/sx;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz2/sx;->OoooooO:Lz2/sx;

    return-object v0
.end method

.method public o0ooOOo()Lokhttp3/Protocol;
    .locals 1

    iget-object v0, p0, Lz2/sx;->OoooOoo:Lokhttp3/Protocol;

    return-object v0
.end method

.method public o0ooOoO()J
    .locals 2

    iget-wide v0, p0, Lz2/sx;->o0OoOo0:J

    return-wide v0
.end method

.method public oo000o()Lz2/sx;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz2/sx;->Oooooo0:Lz2/sx;

    return-object v0
.end method

.method public ooOO(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz2/sx;->OooooOO:Lz2/jx;

    invoke-virtual {v0, p1}, Lz2/jx;->OooO0Oo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object p2, p1

    :cond_0
    return-object p2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/sx;->OoooOoo:Lokhttp3/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lz2/sx;->Ooooo00:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/sx;->Ooooo0o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/sx;->OoooOoO:Lz2/qx;

    invoke-virtual {v1}, Lz2/qx;->OooOO0O()Lz2/kx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
