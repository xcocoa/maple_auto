.class public final Lcom/anythink/expressad/video/dynview/j/a$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/video/dynview/j/a;->c(Lcom/anythink/expressad/video/dynview/c;Landroid/view/View;Ljava/util/Map;Lcom/anythink/expressad/video/dynview/f/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Lcom/anythink/expressad/video/dynview/j/a;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/video/dynview/j/a;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/dynview/j/a$9;->b:Lcom/anythink/expressad/video/dynview/j/a;

    iput-object p2, p0, Lcom/anythink/expressad/video/dynview/j/a$9;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/anythink/expressad/video/dynview/j/a$9;->b:Lcom/anythink/expressad/video/dynview/j/a;

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/j/a$9;->a:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/anythink/expressad/video/dynview/j/a;->b(Lcom/anythink/expressad/video/dynview/j/a;Ljava/util/Map;)V

    return-void
.end method
