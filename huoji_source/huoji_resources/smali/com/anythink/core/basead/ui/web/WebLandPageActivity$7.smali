.class public final Lcom/anythink/core/basead/ui/web/WebLandPageActivity$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;


# direct methods
.method public constructor <init>(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$7;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$7;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    invoke-static {p1}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->d(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Lcom/anythink/core/common/f/m;

    move-result-object p1

    iget-object v0, p1, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$7;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    invoke-static {p1}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->d(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Lcom/anythink/core/common/f/m;

    move-result-object p1

    iget-object v1, p1, Lcom/anythink/core/common/f/m;->d:Ljava/lang/String;

    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$7;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    invoke-static {p1}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->c(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Lcom/anythink/core/common/f/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->d()I

    move-result v2

    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$7;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    invoke-static {p1}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->c(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Lcom/anythink/core/common/f/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->t()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$7;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    iget-object v4, p1, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->b:Lorg/json/JSONArray;

    invoke-static {p1}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;I)V

    return-void
.end method
