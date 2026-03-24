.class public interface abstract Lcom/anythink/expressad/exoplayer/j/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/j/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/exoplayer/j/s$e;,
        Lcom/anythink/expressad/exoplayer/j/s$d;,
        Lcom/anythink/expressad/exoplayer/j/s$c;,
        Lcom/anythink/expressad/exoplayer/j/s$a;,
        Lcom/anythink/expressad/exoplayer/j/s$f;,
        Lcom/anythink/expressad/exoplayer/j/s$b;
    }
.end annotation


# static fields
.field public static final c:Lcom/anythink/expressad/exoplayer/k/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/anythink/expressad/exoplayer/k/u<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/anythink/expressad/exoplayer/j/s$1;

    invoke-direct {v0}, Lcom/anythink/expressad/exoplayer/j/s$1;-><init>()V

    sput-object v0, Lcom/anythink/expressad/exoplayer/j/s;->c:Lcom/anythink/expressad/exoplayer/k/u;

    return-void
.end method


# virtual methods
.method public abstract a([BII)I
.end method

.method public abstract a(Lcom/anythink/expressad/exoplayer/j/k;)J
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract b()V
.end method

.method public abstract c()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract d()V
.end method
