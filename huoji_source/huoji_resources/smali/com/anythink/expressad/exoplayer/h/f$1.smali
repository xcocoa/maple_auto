.class public final Lcom/anythink/expressad/exoplayer/h/f$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/h/s$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/exoplayer/h/f;->a(Ljava/lang/Object;Lcom/anythink/expressad/exoplayer/h/s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lcom/anythink/expressad/exoplayer/h/f;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/h/f;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/f$1;->b:Lcom/anythink/expressad/exoplayer/h/f;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/h/f$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/expressad/exoplayer/h/s;Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;)V
    .locals 2
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/f$1;->b:Lcom/anythink/expressad/exoplayer/h/f;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/f$1;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/anythink/expressad/exoplayer/h/f;->a(Ljava/lang/Object;Lcom/anythink/expressad/exoplayer/h/s;Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;)V

    return-void
.end method
