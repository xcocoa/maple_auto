.class public final Lcom/anythink/expressad/exoplayer/i/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/anythink/expressad/exoplayer/m;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/i/b$a;-><init>()V

    return-void
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/m;Lcom/anythink/expressad/exoplayer/m;)I
    .locals 0

    iget p1, p1, Lcom/anythink/expressad/exoplayer/m;->d:I

    iget p0, p0, Lcom/anythink/expressad/exoplayer/m;->d:I

    sub-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/anythink/expressad/exoplayer/m;

    check-cast p2, Lcom/anythink/expressad/exoplayer/m;

    iget p2, p2, Lcom/anythink/expressad/exoplayer/m;->d:I

    iget p1, p1, Lcom/anythink/expressad/exoplayer/m;->d:I

    sub-int/2addr p2, p1

    return p2
.end method
