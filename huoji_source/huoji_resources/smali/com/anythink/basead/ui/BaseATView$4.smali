.class public final Lcom/anythink/basead/ui/BaseATView$4;
.super Lcom/anythink/core/common/o/a/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/BaseATView;->a(ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;

.field public final synthetic b:I

.field public final synthetic c:Lcom/anythink/basead/ui/BaseATView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/BaseATView;Ljava/lang/Runnable;I)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/BaseATView$4;->c:Lcom/anythink/basead/ui/BaseATView;

    iput-object p2, p0, Lcom/anythink/basead/ui/BaseATView$4;->a:Ljava/lang/Runnable;

    iput p3, p0, Lcom/anythink/basead/ui/BaseATView$4;->b:I

    invoke-direct {p0}, Lcom/anythink/core/common/o/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final getImpressionMinTimeViewed()I
    .locals 1

    iget v0, p0, Lcom/anythink/basead/ui/BaseATView$4;->b:I

    if-lez v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x32

    return v0
.end method

.method public final recordImpression(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/anythink/basead/ui/BaseATView$4;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
