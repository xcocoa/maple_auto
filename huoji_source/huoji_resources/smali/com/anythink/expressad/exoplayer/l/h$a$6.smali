.class public final Lcom/anythink/expressad/exoplayer/l/h$a$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/exoplayer/l/h$a;->a(Landroid/view/Surface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/Surface;

.field public final synthetic b:Lcom/anythink/expressad/exoplayer/l/h$a;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/l/h$a;Landroid/view/Surface;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/l/h$a$6;->b:Lcom/anythink/expressad/exoplayer/l/h$a;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/l/h$a$6;->a:Landroid/view/Surface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/l/h$a$6;->b:Lcom/anythink/expressad/exoplayer/l/h$a;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/l/h$a;->a(Lcom/anythink/expressad/exoplayer/l/h$a;)Lcom/anythink/expressad/exoplayer/l/h;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/l/h$a$6;->a:Landroid/view/Surface;

    invoke-interface {v0, v1}, Lcom/anythink/expressad/exoplayer/l/h;->a(Landroid/view/Surface;)V

    return-void
.end method
