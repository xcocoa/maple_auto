.class public final Lcom/anythink/expressad/exoplayer/b/g$a$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/exoplayer/b/g$a;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/anythink/expressad/exoplayer/b/g$a;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/b/g$a;I)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/b/g$a$6;->b:Lcom/anythink/expressad/exoplayer/b/g$a;

    iput p2, p0, Lcom/anythink/expressad/exoplayer/b/g$a$6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/g$a$6;->b:Lcom/anythink/expressad/exoplayer/b/g$a;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/b/g$a;->a(Lcom/anythink/expressad/exoplayer/b/g$a;)Lcom/anythink/expressad/exoplayer/b/g;

    move-result-object v0

    iget v1, p0, Lcom/anythink/expressad/exoplayer/b/g$a$6;->a:I

    invoke-interface {v0, v1}, Lcom/anythink/expressad/exoplayer/b/g;->a(I)V

    return-void
.end method
