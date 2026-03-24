.class public final Lcom/anythink/basead/ui/BaseATView$2;
.super Lcom/anythink/basead/ui/b/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/BaseATView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/BaseATView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/BaseATView;Landroid/view/ViewGroup;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;ILcom/anythink/basead/ui/b/b$a;)V
    .locals 6

    iput-object p1, p0, Lcom/anythink/basead/ui/BaseATView$2;->a:Lcom/anythink/basead/ui/BaseATView;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/anythink/basead/ui/b/a;-><init>(Landroid/view/ViewGroup;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;ILcom/anythink/basead/ui/b/b$a;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATView$2;->a:Lcom/anythink/basead/ui/BaseATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseATView;->m()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method
