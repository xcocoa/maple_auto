.class public final Lcom/anythink/splashad/a/c$1$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/splashad/a/c$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/splashad/a/h;

.field public final synthetic b:Lcom/anythink/splashad/a/c$1$1;


# direct methods
.method public constructor <init>(Lcom/anythink/splashad/a/c$1$1;Lcom/anythink/splashad/a/h;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/splashad/a/c$1$1$1;->b:Lcom/anythink/splashad/a/c$1$1;

    iput-object p2, p0, Lcom/anythink/splashad/a/c$1$1$1;->a:Lcom/anythink/splashad/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/anythink/splashad/a/c$1$1$1;->a:Lcom/anythink/splashad/a/h;

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/anythink/splashad/a/h;->a(I)V

    iget-object p1, p0, Lcom/anythink/splashad/a/c$1$1$1;->a:Lcom/anythink/splashad/a/h;

    invoke-virtual {p1}, Lcom/anythink/splashad/a/h;->onSplashAdDismiss()V

    :cond_0
    return-void
.end method
