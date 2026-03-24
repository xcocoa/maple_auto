.class public final Lcom/anythink/banner/a/a$1;
.super Lcom/anythink/basead/e/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/banner/a/a;->a(Landroid/content/Context;Lcom/anythink/core/common/f/b;Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Lcom/anythink/banner/a/b;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/banner/a/b;

.field public final synthetic b:Lcom/anythink/banner/a/a;


# direct methods
.method public constructor <init>(Lcom/anythink/banner/a/a;Lcom/anythink/banner/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/banner/a/a$1;->b:Lcom/anythink/banner/a/a;

    iput-object p2, p0, Lcom/anythink/banner/a/a$1;->a:Lcom/anythink/banner/a/b;

    invoke-direct {p0}, Lcom/anythink/basead/e/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClosed()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/banner/a/a$1;->a:Lcom/anythink/banner/a/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/banner/a/b;->onBannerAdClose()V

    :cond_0
    return-void
.end method
