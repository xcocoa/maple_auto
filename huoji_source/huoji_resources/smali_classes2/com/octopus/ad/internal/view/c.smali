.class public Lcom/octopus/ad/internal/view/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/octopus/ad/internal/view/d;


# instance fields
.field private a:J

.field private b:Lcom/octopus/ad/internal/view/b;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/view/b;Ljava/lang/Long;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/octopus/ad/internal/view/c;->a:J

    iput-object p1, p0, Lcom/octopus/ad/internal/view/c;->b:Lcom/octopus/ad/internal/view/b;

    iput-boolean p3, p0, Lcom/octopus/ad/internal/view/c;->c:Z

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/octopus/ad/internal/view/c;->a:J

    return-wide v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/c;->c:Z

    return v0
.end method

.method public c()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/c;->b:Lcom/octopus/ad/internal/view/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/octopus/ad/internal/view/b;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
