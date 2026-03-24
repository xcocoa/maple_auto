.class public final Lcom/anythink/expressad/exoplayer/a/a$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/anythink/expressad/exoplayer/w;Lcom/anythink/expressad/exoplayer/k/c;)Lcom/anythink/expressad/exoplayer/a/a;
    .locals 1
    .param p0    # Lcom/anythink/expressad/exoplayer/w;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/anythink/expressad/exoplayer/a/a;

    invoke-direct {v0, p0, p1}, Lcom/anythink/expressad/exoplayer/a/a;-><init>(Lcom/anythink/expressad/exoplayer/w;Lcom/anythink/expressad/exoplayer/k/c;)V

    return-object v0
.end method
