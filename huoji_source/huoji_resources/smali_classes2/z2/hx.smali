.class public final Lz2/hx;
.super Lz2/rx;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/hx$OooO00o;
    }
.end annotation


# static fields
.field private static final OooO0OO:Lz2/mx;


# instance fields
.field private final OooO00o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final OooO0O0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "application/x-www-form-urlencoded"

    invoke-static {v0}, Lz2/mx;->OooO0OO(Ljava/lang/String;)Lz2/mx;

    move-result-object v0

    sput-object v0, Lz2/hx;->OooO0OO:Lz2/mx;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lz2/rx;-><init>()V

    invoke-static {p1}, Lz2/zx;->OooOo0(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lz2/hx;->OooO00o:Ljava/util/List;

    invoke-static {p2}, Lz2/zx;->OooOo0(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lz2/hx;->OooO0O0:Ljava/util/List;

    return-void
.end method

.method private OooO0o(Lz2/k00;Z)J
    .locals 3
    .param p1    # Lz2/k00;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    new-instance p1, Lz2/j00;

    invoke-direct {p1}, Lz2/j00;-><init>()V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lz2/k00;->OooO00o()Lz2/j00;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    iget-object v1, p0, Lz2/hx;->OooO00o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_2

    if-lez v0, :cond_1

    const/16 v2, 0x26

    invoke-virtual {p1, v2}, Lz2/j00;->o00000oo(I)Lz2/j00;

    :cond_1
    iget-object v2, p0, Lz2/hx;->OooO00o:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lz2/j00;->o0000Oo0(Ljava/lang/String;)Lz2/j00;

    const/16 v2, 0x3d

    invoke-virtual {p1, v2}, Lz2/j00;->o00000oo(I)Lz2/j00;

    iget-object v2, p0, Lz2/hx;->OooO0O0:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lz2/j00;->o0000Oo0(Ljava/lang/String;)Lz2/j00;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lz2/j00;->o00000O0()J

    move-result-wide v0

    invoke-virtual {p1}, Lz2/j00;->OooooOo()V

    goto :goto_2

    :cond_3
    const-wide/16 v0, 0x0

    :goto_2
    return-wide v0
.end method


# virtual methods
.method public OooO00o(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/hx;->OooO00o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public OooO0O0(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/hx;->OooO0O0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public OooO0OO(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lz2/hx;->OooO00o(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lz2/kx;->OooOoOO(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public OooO0Oo()I
    .locals 1

    iget-object v0, p0, Lz2/hx;->OooO00o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public OooO0o0(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lz2/hx;->OooO0O0(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lz2/kx;->OooOoOO(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public contentLength()J
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lz2/hx;->OooO0o(Lz2/k00;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lz2/mx;
    .locals 1

    sget-object v0, Lz2/hx;->OooO0OO:Lz2/mx;

    return-object v0
.end method

.method public writeTo(Lz2/k00;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lz2/hx;->OooO0o(Lz2/k00;Z)J

    return-void
.end method
