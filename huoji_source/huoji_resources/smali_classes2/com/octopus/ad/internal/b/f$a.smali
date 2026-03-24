.class public final Lcom/octopus/ad/internal/b/f$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/internal/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/io/File;

.field private b:Lcom/octopus/ad/internal/b/a/c;

.field private c:Lcom/octopus/ad/internal/b/a/a;

.field private d:Lcom/octopus/ad/internal/b/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/octopus/ad/internal/b/b/d;->a(Landroid/content/Context;)Lcom/octopus/ad/internal/b/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/b/f$a;->d:Lcom/octopus/ad/internal/b/b/c;

    invoke-static {p1}, Lcom/octopus/ad/internal/b/q;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/octopus/ad/internal/b/f$a;->a:Ljava/io/File;

    new-instance p1, Lcom/octopus/ad/internal/b/a/g;

    const-wide/32 v0, 0x20000000

    invoke-direct {p1, v0, v1}, Lcom/octopus/ad/internal/b/a/g;-><init>(J)V

    iput-object p1, p0, Lcom/octopus/ad/internal/b/f$a;->c:Lcom/octopus/ad/internal/b/a/a;

    new-instance p1, Lcom/octopus/ad/internal/b/a/f;

    invoke-direct {p1}, Lcom/octopus/ad/internal/b/a/f;-><init>()V

    iput-object p1, p0, Lcom/octopus/ad/internal/b/f$a;->b:Lcom/octopus/ad/internal/b/a/c;

    return-void
.end method

.method private b()Lcom/octopus/ad/internal/b/c;
    .locals 5

    new-instance v0, Lcom/octopus/ad/internal/b/c;

    iget-object v1, p0, Lcom/octopus/ad/internal/b/f$a;->a:Ljava/io/File;

    iget-object v2, p0, Lcom/octopus/ad/internal/b/f$a;->b:Lcom/octopus/ad/internal/b/a/c;

    iget-object v3, p0, Lcom/octopus/ad/internal/b/f$a;->c:Lcom/octopus/ad/internal/b/a/a;

    iget-object v4, p0, Lcom/octopus/ad/internal/b/f$a;->d:Lcom/octopus/ad/internal/b/b/c;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/octopus/ad/internal/b/c;-><init>(Ljava/io/File;Lcom/octopus/ad/internal/b/a/c;Lcom/octopus/ad/internal/b/a/a;Lcom/octopus/ad/internal/b/b/c;)V

    return-object v0
.end method


# virtual methods
.method public a(J)Lcom/octopus/ad/internal/b/f$a;
    .locals 1

    new-instance v0, Lcom/octopus/ad/internal/b/a/g;

    invoke-direct {v0, p1, p2}, Lcom/octopus/ad/internal/b/a/g;-><init>(J)V

    iput-object v0, p0, Lcom/octopus/ad/internal/b/f$a;->c:Lcom/octopus/ad/internal/b/a/a;

    return-object p0
.end method

.method public a()Lcom/octopus/ad/internal/b/f;
    .locals 3

    invoke-direct {p0}, Lcom/octopus/ad/internal/b/f$a;->b()Lcom/octopus/ad/internal/b/c;

    move-result-object v0

    new-instance v1, Lcom/octopus/ad/internal/b/f;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/octopus/ad/internal/b/f;-><init>(Lcom/octopus/ad/internal/b/c;Lcom/octopus/ad/internal/b/f$1;)V

    return-object v1
.end method
