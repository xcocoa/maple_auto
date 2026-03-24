.class public final Lcom/anythink/expressad/exoplayer/k/y$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/k/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/anythink/expressad/exoplayer/k/y$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/k/y$a;Lcom/anythink/expressad/exoplayer/k/y$a;)I
    .locals 1

    iget p0, p0, Lcom/anythink/expressad/exoplayer/k/y$a;->c:F

    iget p1, p1, Lcom/anythink/expressad/exoplayer/k/y$a;->c:F

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    cmpg-float p0, p1, p0

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/anythink/expressad/exoplayer/k/y$a;

    check-cast p2, Lcom/anythink/expressad/exoplayer/k/y$a;

    iget p1, p1, Lcom/anythink/expressad/exoplayer/k/y$a;->c:F

    iget p2, p2, Lcom/anythink/expressad/exoplayer/k/y$a;->c:F

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    cmpg-float p1, p2, p1

    if-gez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
