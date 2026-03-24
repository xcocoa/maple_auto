.class public final Lcom/anythink/expressad/video/dynview/j/a$4;
.super Lcom/anythink/expressad/widget/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/video/dynview/j/a;->a(Lcom/anythink/expressad/video/dynview/c;Landroid/view/View;Ljava/util/Map;Lcom/anythink/expressad/video/dynview/f/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/anythink/expressad/video/dynview/j/a;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/video/dynview/j/a;Ljava/util/Map;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/dynview/j/a$4;->c:Lcom/anythink/expressad/video/dynview/j/a;

    iput-object p2, p0, Lcom/anythink/expressad/video/dynview/j/a$4;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/anythink/expressad/video/dynview/j/a$4;->b:Ljava/util/List;

    invoke-direct {p0}, Lcom/anythink/expressad/widget/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/anythink/expressad/video/dynview/j/a$4;->c:Lcom/anythink/expressad/video/dynview/j/a;

    invoke-static {p1}, Lcom/anythink/expressad/video/dynview/j/a;->e(Lcom/anythink/expressad/video/dynview/j/a;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/video/dynview/j/a$4;->c:Lcom/anythink/expressad/video/dynview/j/a;

    invoke-static {p1}, Lcom/anythink/expressad/video/dynview/j/a;->f(Lcom/anythink/expressad/video/dynview/j/a;)Z

    iget-object p1, p0, Lcom/anythink/expressad/video/dynview/j/a$4;->c:Lcom/anythink/expressad/video/dynview/j/a;

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/j/a$4;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/anythink/expressad/video/dynview/j/a$4;->b:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/anythink/expressad/video/dynview/j/a;->a(Lcom/anythink/expressad/video/dynview/j/a;Ljava/util/Map;Ljava/util/List;I)V

    :cond_0
    return-void
.end method
