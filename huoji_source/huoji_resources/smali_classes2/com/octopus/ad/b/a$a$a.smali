.class public final Lcom/octopus/ad/b/a$a$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/b/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/octopus/ad/b/a$a$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/a$a$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/octopus/ad/b/a$a;
    .locals 3

    new-instance v0, Lcom/octopus/ad/b/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/octopus/ad/b/a$a;-><init>(Lcom/octopus/ad/b/a$1;)V

    iget-wide v1, p0, Lcom/octopus/ad/b/a$a$a;->d:J

    invoke-static {v0, v1, v2}, Lcom/octopus/ad/b/a$a;->a(Lcom/octopus/ad/b/a$a;J)J

    iget-object v1, p0, Lcom/octopus/ad/b/a$a$a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/a$a;->a(Lcom/octopus/ad/b/a$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/octopus/ad/b/a$a$a;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/a$a;->b(Lcom/octopus/ad/b/a$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/octopus/ad/b/a$a$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/a$a;->c(Lcom/octopus/ad/b/a$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/octopus/ad/b/a$a$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/a$a;->d(Lcom/octopus/ad/b/a$a;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/octopus/ad/b/a$a$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/a$a$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/octopus/ad/b/a$a$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/a$a$a;->c:Ljava/lang/String;

    return-object p0
.end method
