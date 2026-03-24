.class public Lorg/junit/ComparisonFailure$OooO0O0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/ComparisonFailure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO0O0"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/ComparisonFailure$OooO0O0$OooO00o;
    }
.end annotation


# static fields
.field private static final OooO0Oo:Ljava/lang/String; = "..."

.field private static final OooO0o:Ljava/lang/String; = "["

.field private static final OooO0o0:Ljava/lang/String; = "]"


# instance fields
.field private final OooO00o:I

.field private final OooO0O0:Ljava/lang/String;

.field private final OooO0OO:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/junit/ComparisonFailure$OooO0O0;->OooO00o:I

    iput-object p2, p0, Lorg/junit/ComparisonFailure$OooO0O0;->OooO0O0:Ljava/lang/String;

    iput-object p3, p0, Lorg/junit/ComparisonFailure$OooO0O0;->OooO0OO:Ljava/lang/String;

    return-void
.end method

.method public static synthetic OooO00o(Lorg/junit/ComparisonFailure$OooO0O0;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lorg/junit/ComparisonFailure$OooO0O0;->OooO0oO()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO0O0(Lorg/junit/ComparisonFailure$OooO0O0;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lorg/junit/ComparisonFailure$OooO0O0;->OooO0oo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO0OO(Lorg/junit/ComparisonFailure$OooO0O0;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/junit/ComparisonFailure$OooO0O0;->OooO0O0:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic OooO0Oo(Lorg/junit/ComparisonFailure$OooO0O0;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/junit/ComparisonFailure$OooO0O0;->OooO0OO:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic OooO0o0(Lorg/junit/ComparisonFailure$OooO0O0;)I
    .locals 0

    iget p0, p0, Lorg/junit/ComparisonFailure$OooO0O0;->OooO00o:I

    return p0
.end method

.method private OooO0oO()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lorg/junit/ComparisonFailure$OooO0O0;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/junit/ComparisonFailure$OooO0O0;->OooO0OO:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lorg/junit/ComparisonFailure$OooO0O0;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lorg/junit/ComparisonFailure$OooO0O0;->OooO0OO:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_0

    iget-object v0, p0, Lorg/junit/ComparisonFailure$OooO0O0;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/junit/ComparisonFailure$OooO0O0;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private OooO0oo(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/junit/ComparisonFailure$OooO0O0;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/junit/ComparisonFailure$OooO0O0;->OooO0OO:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p1, :cond_1

    iget-object v1, p0, Lorg/junit/ComparisonFailure$OooO0O0;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v2, p0, Lorg/junit/ComparisonFailure$OooO0O0;->OooO0OO:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lorg/junit/ComparisonFailure$OooO0O0;->OooO0O0:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public OooO0o(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lorg/junit/ComparisonFailure$OooO0O0;->OooO0O0:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/junit/ComparisonFailure$OooO0O0;->OooO0OO:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/junit/ComparisonFailure$OooO0O0$OooO00o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/junit/ComparisonFailure$OooO0O0$OooO00o;-><init>(Lorg/junit/ComparisonFailure$OooO0O0;Lorg/junit/ComparisonFailure$OooO00o;)V

    invoke-virtual {v0}, Lorg/junit/ComparisonFailure$OooO0O0$OooO00o;->OooO0O0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/junit/ComparisonFailure$OooO0O0$OooO00o;->OooO0OO()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/junit/ComparisonFailure$OooO0O0$OooO00o;->OooO0Oo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/junit/ComparisonFailure$OooO0O0$OooO00o;->OooO00o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v3, v0}, Lz2/f50;->o0OoOo0(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/junit/ComparisonFailure$OooO0O0;->OooO0O0:Ljava/lang/String;

    iget-object v1, p0, Lorg/junit/ComparisonFailure$OooO0O0;->OooO0OO:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lz2/f50;->o0OoOo0(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
