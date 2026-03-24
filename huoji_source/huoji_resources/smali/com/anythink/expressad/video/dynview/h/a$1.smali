.class public final Lcom/anythink/expressad/video/dynview/h/a$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/video/dynview/f/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/video/dynview/h/a;->a(Lcom/anythink/expressad/video/dynview/c;Lcom/anythink/expressad/video/dynview/f/h;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/video/dynview/f/h;

.field public final synthetic b:Lcom/anythink/expressad/video/dynview/h/a;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/video/dynview/h/a;Lcom/anythink/expressad/video/dynview/f/h;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/dynview/h/a$1;->b:Lcom/anythink/expressad/video/dynview/h/a;

    iput-object p2, p0, Lcom/anythink/expressad/video/dynview/h/a$1;->a:Lcom/anythink/expressad/video/dynview/f/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/anythink/expressad/video/dynview/a;

    invoke-direct {v0}, Lcom/anythink/expressad/video/dynview/a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/dynview/a;->a(Landroid/view/View;)V

    invoke-virtual {v0, p2}, Lcom/anythink/expressad/video/dynview/a;->a(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/anythink/expressad/video/dynview/a;->d()V

    iget-object p1, p0, Lcom/anythink/expressad/video/dynview/h/a$1;->a:Lcom/anythink/expressad/video/dynview/f/h;

    invoke-interface {p1, v0}, Lcom/anythink/expressad/video/dynview/f/h;->a(Lcom/anythink/expressad/video/dynview/a;)V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/video/dynview/c/b;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/h/a$1;->a:Lcom/anythink/expressad/video/dynview/f/h;

    invoke-interface {v0, p1}, Lcom/anythink/expressad/video/dynview/f/h;->a(Lcom/anythink/expressad/video/dynview/c/b;)V

    return-void
.end method
