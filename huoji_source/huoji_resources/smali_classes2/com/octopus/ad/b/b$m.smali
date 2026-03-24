.class public Lcom/octopus/ad/b/b$m;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation


# instance fields
.field private a:Lcom/octopus/ad/b/b$l;

.field private b:Lcom/octopus/ad/b/b$o;

.field private c:Lcom/octopus/ad/b/b$r;

.field private d:Lcom/octopus/ad/b/b$p;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/octopus/ad/b/b$l;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/b/b$m;->a:Lcom/octopus/ad/b/b$l;

    return-object v0
.end method

.method public a(Lcom/octopus/ad/b/b$l;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/b$m;->a:Lcom/octopus/ad/b/b$l;

    return-void
.end method

.method public a(Lcom/octopus/ad/b/b$o;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/b$m;->b:Lcom/octopus/ad/b/b$o;

    return-void
.end method

.method public a(Lcom/octopus/ad/b/b$p;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/b$m;->d:Lcom/octopus/ad/b/b$p;

    return-void
.end method

.method public a(Lcom/octopus/ad/b/b$r;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/b$m;->c:Lcom/octopus/ad/b/b$r;

    return-void
.end method

.method public b()Lcom/octopus/ad/b/b$o;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/b/b$m;->b:Lcom/octopus/ad/b/b$o;

    return-object v0
.end method

.method public c()Lcom/octopus/ad/b/b$r;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/b/b$m;->c:Lcom/octopus/ad/b/b$r;

    return-object v0
.end method

.method public d()Lcom/octopus/ad/b/b$p;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/b/b$m;->d:Lcom/octopus/ad/b/b$p;

    return-object v0
.end method
