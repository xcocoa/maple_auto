.class public Lz2/ja$OooO0o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/b40;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/ja;->OoooOoo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/b40<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/ja;


# direct methods
.method public constructor <init>(Lz2/ja;)V
    .locals 0

    iput-object p1, p0, Lz2/ja$OooO0o;->OooO00o:Lz2/ja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readUIP -- ex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object p1, p0, Lz2/ja$OooO0o;->OooO00o:Lz2/ja;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lz2/ja;->o00oO0O:Z

    invoke-static {p1}, Lz2/ja;->OooOoO(Lz2/ja;)Lz2/ja$OooOOOO;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lz2/ja$OooO0o;->OooO00o:Lz2/ja;

    invoke-static {p1}, Lz2/ja;->OooOoO(Lz2/ja;)Lz2/ja$OooOOOO;

    move-result-object p1

    invoke-interface {p1}, Lz2/ja$OooOOOO;->onFinish()V

    :cond_0
    return-void
.end method

.method public bridge synthetic OooO0O0(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lz2/ja$OooO0o;->OooO00o(Ljava/lang/Throwable;)V

    return-void
.end method
