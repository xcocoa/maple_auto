.class public Lcom/anythink/expressad/video/module/a/a/i;
.super Lcom/anythink/expressad/video/module/a/a/f;
.source ""


# instance fields
.field public V:Lcom/anythink/expressad/video/module/a/a;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/video/module/a/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/a/a/f;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/video/module/a/a/i;->V:Lcom/anythink/expressad/video/module/a/a;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/module/a/a/f;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/i;->V:Lcom/anythink/expressad/video/module/a/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
