.class public Lz2/aj$OooO0OO$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/cj$OooO00o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/aj$OooO0OO;->OooO0O0([Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/aj$OooO0OO;


# direct methods
.method public constructor <init>(Lz2/aj$OooO0OO;)V
    .locals 0

    iput-object p1, p0, Lz2/aj$OooO0OO$OooO00o;->OooO00o:Lz2/aj$OooO0OO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lz2/aj$OooO0o;

    iget-object v1, p0, Lz2/aj$OooO0OO$OooO00o;->OooO00o:Lz2/aj$OooO0OO;

    iget-object v1, v1, Lz2/aj$OooO0OO;->OooO00o:Lz2/aj;

    invoke-direct {v0, v1, p1, p2}, Lz2/aj$OooO0o;-><init>(Lz2/aj;ILjava/util/List;)V

    iget-object p1, p0, Lz2/aj$OooO0OO$OooO00o;->OooO00o:Lz2/aj$OooO0OO;

    const/4 p2, 0x1

    new-array p2, p2, [Lz2/aj$OooO0o;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lz2/aj$OooO0OO;->OooO00o(Lz2/aj$OooO0OO;[Ljava/lang/Object;)V

    return-void
.end method

.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, Lz2/aj$OooO0OO$OooO00o;->OooO00o:Lz2/aj$OooO0OO;

    iget-object v0, v0, Lz2/aj$OooO0OO;->OooO00o:Lz2/aj;

    invoke-static {v0}, Lz2/aj;->OooO0OO(Lz2/aj;)Lz2/aj$OooO0OO;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    return v0
.end method
