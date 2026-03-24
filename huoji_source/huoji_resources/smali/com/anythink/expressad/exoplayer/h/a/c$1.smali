.class public final Lcom/anythink/expressad/exoplayer/h/a/c$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/exoplayer/h/a/c;->a(Lcom/anythink/expressad/exoplayer/h;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/exoplayer/h;

.field public final synthetic b:Lcom/anythink/expressad/exoplayer/h/a/c$c;

.field public final synthetic c:Lcom/anythink/expressad/exoplayer/h/a/c;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/h/a/c;Lcom/anythink/expressad/exoplayer/h;Lcom/anythink/expressad/exoplayer/h/a/c$c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/a/c$1;->c:Lcom/anythink/expressad/exoplayer/h/a/c;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/h/a/c$1;->a:Lcom/anythink/expressad/exoplayer/h;

    iput-object p3, p0, Lcom/anythink/expressad/exoplayer/h/a/c$1;->b:Lcom/anythink/expressad/exoplayer/h/a/c$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c$1;->c:Lcom/anythink/expressad/exoplayer/h/a/c;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/h/a/c;->b(Lcom/anythink/expressad/exoplayer/h/a/c;)Lcom/anythink/expressad/exoplayer/h/a/b;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c$1;->c:Lcom/anythink/expressad/exoplayer/h/a/c;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/h/a/c;->a(Lcom/anythink/expressad/exoplayer/h/a/c;)Landroid/view/ViewGroup;

    return-void
.end method
