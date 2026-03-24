.class public final Lcom/anythink/expressad/exoplayer/k/y$1;
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
    .locals 0

    iget p0, p0, Lcom/anythink/expressad/exoplayer/k/y$a;->a:I

    iget p1, p1, Lcom/anythink/expressad/exoplayer/k/y$a;->a:I

    sub-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/anythink/expressad/exoplayer/k/y$a;

    check-cast p2, Lcom/anythink/expressad/exoplayer/k/y$a;

    iget p1, p1, Lcom/anythink/expressad/exoplayer/k/y$a;->a:I

    iget p2, p2, Lcom/anythink/expressad/exoplayer/k/y$a;->a:I

    sub-int/2addr p1, p2

    return p1
.end method
