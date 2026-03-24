.class public final Lz2/nx$OooO0O0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/nx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO0O0"
.end annotation


# instance fields
.field public final OooO00o:Lz2/jx;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final OooO0O0:Lz2/rx;


# direct methods
.method private constructor <init>(Lz2/jx;Lz2/rx;)V
    .locals 0
    .param p1    # Lz2/jx;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/nx$OooO0O0;->OooO00o:Lz2/jx;

    iput-object p2, p0, Lz2/nx$OooO0O0;->OooO0O0:Lz2/rx;

    return-void
.end method

.method public static OooO0O0(Lz2/jx;Lz2/rx;)Lz2/nx$OooO0O0;
    .locals 1
    .param p0    # Lz2/jx;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "body == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p0, :cond_1

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lz2/jx;->OooO0Oo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected header: Content-Type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p0, :cond_3

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lz2/jx;->OooO0Oo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected header: Content-Length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    new-instance v0, Lz2/nx$OooO0O0;

    invoke-direct {v0, p0, p1}, Lz2/nx$OooO0O0;-><init>(Lz2/jx;Lz2/rx;)V

    return-object v0
.end method

.method public static OooO0OO(Lz2/rx;)Lz2/nx$OooO0O0;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lz2/nx$OooO0O0;->OooO0O0(Lz2/jx;Lz2/rx;)Lz2/nx$OooO0O0;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0Oo(Ljava/lang/String;Ljava/lang/String;)Lz2/nx$OooO0O0;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lz2/rx;->create(Lz2/mx;Ljava/lang/String;)Lz2/rx;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lz2/nx$OooO0O0;->OooO0o0(Ljava/lang/String;Ljava/lang/String;Lz2/rx;)Lz2/nx$OooO0O0;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0o0(Ljava/lang/String;Ljava/lang/String;Lz2/rx;)Lz2/nx$OooO0O0;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "name == null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "form-data; name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lz2/nx;->OooO00o(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p0, "; filename="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, p1}, Lz2/nx;->OooO00o(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    const/4 p1, 0x0

    const-string v1, "Content-Disposition"

    aput-object v1, p0, p1

    const/4 p1, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, p1

    invoke-static {p0}, Lz2/jx;->OooOO0O([Ljava/lang/String;)Lz2/jx;

    move-result-object p0

    invoke-static {p0, p2}, Lz2/nx$OooO0O0;->OooO0O0(Lz2/jx;Lz2/rx;)Lz2/nx$OooO0O0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public OooO00o()Lz2/rx;
    .locals 1

    iget-object v0, p0, Lz2/nx$OooO0O0;->OooO0O0:Lz2/rx;

    return-object v0
.end method

.method public OooO0o()Lz2/jx;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz2/nx$OooO0O0;->OooO00o:Lz2/jx;

    return-object v0
.end method
