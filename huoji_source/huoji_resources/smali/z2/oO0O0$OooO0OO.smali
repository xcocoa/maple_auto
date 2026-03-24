.class public Lz2/oO0O0$OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/o0O0oo00;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/oO0O0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO0OO"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lz2/o0O0oo00<",
        "TData;>;"
    }
.end annotation


# instance fields
.field private final OoooOoO:[B

.field private final OoooOoo:Lz2/oO0O0$OooO0O0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/oO0O0$OooO0O0<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([BLz2/oO0O0$OooO0O0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lz2/oO0O0$OooO0O0<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/oO0O0$OooO0OO;->OoooOoO:[B

    iput-object p2, p0, Lz2/oO0O0$OooO0OO;->OoooOoo:Lz2/oO0O0$OooO0O0;

    return-void
.end method


# virtual methods
.method public OooO00o()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/oO0O0$OooO0OO;->OoooOoo:Lz2/oO0O0$OooO0O0;

    invoke-interface {v0}, Lz2/oO0O0$OooO0O0;->OooO00o()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public OooO0O0()V
    .locals 0

    return-void
.end method

.method public OooO0Oo()Lcom/bumptech/glide/load/DataSource;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/DataSource;->LOCAL:Lcom/bumptech/glide/load/DataSource;

    return-object v0
.end method

.method public OooO0o0(Lcom/bumptech/glide/Priority;Lz2/o0O0oo00$OooO00o;)V
    .locals 1
    .param p1    # Lcom/bumptech/glide/Priority;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/o0O0oo00$OooO00o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lz2/o0O0oo00$OooO00o<",
            "-TData;>;)V"
        }
    .end annotation

    iget-object p1, p0, Lz2/oO0O0$OooO0OO;->OoooOoo:Lz2/oO0O0$OooO0O0;

    iget-object v0, p0, Lz2/oO0O0$OooO0OO;->OoooOoO:[B

    invoke-interface {p1, v0}, Lz2/oO0O0$OooO0O0;->OooO0O0([B)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lz2/o0O0oo00$OooO00o;->OooO0o(Ljava/lang/Object;)V

    return-void
.end method

.method public cancel()V
    .locals 0

    return-void
.end method
