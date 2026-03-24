.class public final Lcom/octopus/ad/b/d$c$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/b/d$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/octopus/ad/b/e$d;

.field private b:Lcom/octopus/ad/b/e$c;

.field private c:Lcom/octopus/ad/b/d$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/octopus/ad/b/e$c;)Lcom/octopus/ad/b/d$c$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/d$c$a;->b:Lcom/octopus/ad/b/e$c;

    return-object p0
.end method

.method public a(Lcom/octopus/ad/b/e$d;)Lcom/octopus/ad/b/d$c$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/d$c$a;->a:Lcom/octopus/ad/b/e$d;

    return-object p0
.end method

.method public a()Lcom/octopus/ad/b/d$c;
    .locals 2

    new-instance v0, Lcom/octopus/ad/b/d$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/octopus/ad/b/d$c;-><init>(Lcom/octopus/ad/b/d$1;)V

    iget-object v1, p0, Lcom/octopus/ad/b/d$c$a;->c:Lcom/octopus/ad/b/d$b;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/d$c;->a(Lcom/octopus/ad/b/d$c;Lcom/octopus/ad/b/d$b;)Lcom/octopus/ad/b/d$b;

    iget-object v1, p0, Lcom/octopus/ad/b/d$c$a;->a:Lcom/octopus/ad/b/e$d;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/d$c;->a(Lcom/octopus/ad/b/d$c;Lcom/octopus/ad/b/e$d;)Lcom/octopus/ad/b/e$d;

    iget-object v1, p0, Lcom/octopus/ad/b/d$c$a;->b:Lcom/octopus/ad/b/e$c;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/d$c;->a(Lcom/octopus/ad/b/d$c;Lcom/octopus/ad/b/e$c;)Lcom/octopus/ad/b/e$c;

    return-object v0
.end method
