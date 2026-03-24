.class public final Lcom/anythink/expressad/exoplayer/g/b/g$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/g/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:I


# direct methods
.method public constructor <init>(IZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/anythink/expressad/exoplayer/g/b/g$b;->a:I

    iput-boolean p2, p0, Lcom/anythink/expressad/exoplayer/g/b/g$b;->b:Z

    iput p3, p0, Lcom/anythink/expressad/exoplayer/g/b/g$b;->c:I

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/exoplayer/g/b/g$b;)I
    .locals 0

    iget p0, p0, Lcom/anythink/expressad/exoplayer/g/b/g$b;->a:I

    return p0
.end method

.method public static synthetic b(Lcom/anythink/expressad/exoplayer/g/b/g$b;)I
    .locals 0

    iget p0, p0, Lcom/anythink/expressad/exoplayer/g/b/g$b;->c:I

    return p0
.end method

.method public static synthetic c(Lcom/anythink/expressad/exoplayer/g/b/g$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/exoplayer/g/b/g$b;->b:Z

    return p0
.end method
