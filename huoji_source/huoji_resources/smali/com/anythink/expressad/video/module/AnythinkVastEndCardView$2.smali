.class public final Lcom/anythink/expressad/video/module/AnythinkVastEndCardView$2;
.super Lcom/anythink/expressad/widget/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/video/module/AnythinkVastEndCardView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/video/module/AnythinkVastEndCardView;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/video/module/AnythinkVastEndCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVastEndCardView$2;->a:Lcom/anythink/expressad/video/module/AnythinkVastEndCardView;

    invoke-direct {p0}, Lcom/anythink/expressad/widget/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVastEndCardView$2;->a:Lcom/anythink/expressad/video/module/AnythinkVastEndCardView;

    iget-object v0, p1, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    invoke-virtual {p1}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->d()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    return-void
.end method
