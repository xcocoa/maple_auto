.class public final Lcom/anythink/expressad/exoplayer/j/s$e;
.super Lcom/anythink/expressad/exoplayer/j/s$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/j/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final f:I

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/Map;Lcom/anythink/expressad/exoplayer/j/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/anythink/expressad/exoplayer/j/k;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Response code: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/anythink/expressad/exoplayer/j/s$c;-><init>(Ljava/lang/String;Lcom/anythink/expressad/exoplayer/j/k;)V

    iput p1, p0, Lcom/anythink/expressad/exoplayer/j/s$e;->f:I

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/j/s$e;->g:Ljava/util/Map;

    return-void
.end method
