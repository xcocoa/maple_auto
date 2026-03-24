.class public Lorg/junit/ComparisonFailure$OooO0O0$OooO00o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/ComparisonFailure$OooO0O0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO00o"
.end annotation


# instance fields
.field private final OooO00o:Ljava/lang/String;

.field private final OooO0O0:Ljava/lang/String;

.field public final synthetic OooO0OO:Lorg/junit/ComparisonFailure$OooO0O0;


# direct methods
.method private constructor <init>(Lorg/junit/ComparisonFailure$OooO0O0;)V
    .locals 1

    iput-object p1, p0, Lorg/junit/ComparisonFailure$OooO0O0$OooO00o;->OooO0OO:Lorg/junit/ComparisonFailure$OooO0O0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/junit/ComparisonFailure$OooO0O0;->OooO00o(Lorg/junit/ComparisonFailure$OooO0O0;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/ComparisonFailure$OooO0O0$OooO00o;->OooO00o:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/junit/ComparisonFailure$OooO0O0;->OooO0O0(Lorg/junit/ComparisonFailure$OooO0O0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/junit/ComparisonFailure$OooO0O0$OooO00o;->OooO0O0:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/junit/ComparisonFailure$OooO0O0;Lorg/junit/ComparisonFailure$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/junit/ComparisonFailure$OooO0O0$OooO00o;-><init>(Lorg/junit/ComparisonFailure$OooO0O0;)V

    return-void
.end method

.method private OooO0o0(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/junit/ComparisonFailure$OooO0O0$OooO00o;->OooO00o:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lorg/junit/ComparisonFailure$OooO0O0$OooO00o;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public OooO00o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/junit/ComparisonFailure$OooO0O0$OooO00o;->OooO0OO:Lorg/junit/ComparisonFailure$OooO0O0;

    invoke-static {v0}, Lorg/junit/ComparisonFailure$OooO0O0;->OooO0Oo(Lorg/junit/ComparisonFailure$OooO0O0;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/junit/ComparisonFailure$OooO0O0$OooO00o;->OooO0o0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OooO0O0()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/junit/ComparisonFailure$OooO0O0$OooO00o;->OooO00o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/junit/ComparisonFailure$OooO0O0$OooO00o;->OooO0OO:Lorg/junit/ComparisonFailure$OooO0O0;

    invoke-static {v1}, Lorg/junit/ComparisonFailure$OooO0O0;->OooO0o0(Lorg/junit/ComparisonFailure$OooO0O0;)I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lorg/junit/ComparisonFailure$OooO0O0$OooO00o;->OooO00o:Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/junit/ComparisonFailure$OooO0O0$OooO00o;->OooO00o:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lorg/junit/ComparisonFailure$OooO0O0$OooO00o;->OooO0OO:Lorg/junit/ComparisonFailure$OooO0O0;

    invoke-static {v3}, Lorg/junit/ComparisonFailure$OooO0O0;->OooO0o0(Lorg/junit/ComparisonFailure$OooO0O0;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OooO0OO()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/junit/ComparisonFailure$OooO0O0$OooO00o;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/junit/ComparisonFailure$OooO0O0$OooO00o;->OooO0OO:Lorg/junit/ComparisonFailure$OooO0O0;

    invoke-static {v1}, Lorg/junit/ComparisonFailure$OooO0O0;->OooO0o0(Lorg/junit/ComparisonFailure$OooO0O0;)I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lorg/junit/ComparisonFailure$OooO0O0$OooO00o;->OooO0O0:Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/junit/ComparisonFailure$OooO0O0$OooO00o;->OooO0O0:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/junit/ComparisonFailure$OooO0O0$OooO00o;->OooO0OO:Lorg/junit/ComparisonFailure$OooO0O0;

    invoke-static {v3}, Lorg/junit/ComparisonFailure$OooO0O0;->OooO0o0(Lorg/junit/ComparisonFailure$OooO0O0;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OooO0Oo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/junit/ComparisonFailure$OooO0O0$OooO00o;->OooO0OO:Lorg/junit/ComparisonFailure$OooO0O0;

    invoke-static {v0}, Lorg/junit/ComparisonFailure$OooO0O0;->OooO0OO(Lorg/junit/ComparisonFailure$OooO0O0;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/junit/ComparisonFailure$OooO0O0$OooO00o;->OooO0o0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
