.class public final Lcom/anythink/expressad/mbbanner/a/d/c$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/mbbanner/a/d/c;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/mbbanner/a/d/c;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/mbbanner/a/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c$8;->a:Lcom/anythink/expressad/mbbanner/a/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c$8;->a:Lcom/anythink/expressad/mbbanner/a/d/c;

    invoke-static {p1}, Lcom/anythink/expressad/mbbanner/a/d/c;->i(Lcom/anythink/expressad/mbbanner/a/d/c;)F

    move-result p1

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c$8;->a:Lcom/anythink/expressad/mbbanner/a/d/c;

    invoke-static {v0}, Lcom/anythink/expressad/mbbanner/a/d/c;->j(Lcom/anythink/expressad/mbbanner/a/d/c;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/anythink/expressad/atsignalcommon/bridge/CommonJSBridgeImpUtils;->buildClickJsonObject(FF)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c$8;->a:Lcom/anythink/expressad/mbbanner/a/d/c;

    invoke-static {v0}, Lcom/anythink/expressad/mbbanner/a/d/c;->h(Lcom/anythink/expressad/mbbanner/a/d/c;)Lcom/anythink/expressad/foundation/d/c;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/anythink/expressad/mbbanner/a/e/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;)Lcom/anythink/expressad/foundation/d/c;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/c$8;->a:Lcom/anythink/expressad/mbbanner/a/d/c;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v0, p1, v1, v2}, Lcom/anythink/expressad/mbbanner/a/d/c;->a(Lcom/anythink/expressad/foundation/d/c;ZLjava/lang/String;)V

    return-void
.end method
