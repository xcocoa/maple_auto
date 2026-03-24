.class public final Lcom/anythink/expressad/exoplayer/b/o$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/b/h$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/b/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/exoplayer/b/o;


# direct methods
.method private constructor <init>(Lcom/anythink/expressad/exoplayer/b/o;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/b/o$a;->a:Lcom/anythink/expressad/exoplayer/b/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/anythink/expressad/exoplayer/b/o;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/b/o$a;-><init>(Lcom/anythink/expressad/exoplayer/b/o;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/o$a;->a:Lcom/anythink/expressad/exoplayer/b/o;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/b/o;->b(Lcom/anythink/expressad/exoplayer/b/o;)Z

    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/o$a;->a:Lcom/anythink/expressad/exoplayer/b/o;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/b/o;->a(Lcom/anythink/expressad/exoplayer/b/o;)Lcom/anythink/expressad/exoplayer/b/g$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/b/g$a;->a(I)V

    return-void
.end method

.method public final a(IJJ)V
    .locals 7

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/o$a;->a:Lcom/anythink/expressad/exoplayer/b/o;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/b/o;->a(Lcom/anythink/expressad/exoplayer/b/o;)Lcom/anythink/expressad/exoplayer/b/g$a;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/anythink/expressad/exoplayer/b/g$a;->a(IJJ)V

    return-void
.end method
