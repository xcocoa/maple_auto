.class public Lcom/anythink/expressad/foundation/g/f/h;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/String; = "h"


# instance fields
.field private b:Lcom/anythink/expressad/foundation/g/f/e/a;

.field private c:Lcom/anythink/expressad/foundation/g/f/g;

.field private d:Lcom/anythink/expressad/foundation/g/f/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Lcom/anythink/expressad/foundation/g/f/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/anythink/expressad/foundation/g/f/e/b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/anythink/expressad/foundation/g/f/e/b;-><init>(Ljavax/net/ssl/SSLSocketFactory;Lcom/anythink/expressad/foundation/g/f/c/a;)V

    iput-object v0, p0, Lcom/anythink/expressad/foundation/g/f/h;->b:Lcom/anythink/expressad/foundation/g/f/e/a;

    new-instance p1, Lcom/anythink/expressad/foundation/g/f/f/a;

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/h;->b:Lcom/anythink/expressad/foundation/g/f/e/a;

    invoke-direct {p1, v0, p2}, Lcom/anythink/expressad/foundation/g/f/f/a;-><init>(Lcom/anythink/expressad/foundation/g/f/e/a;Lcom/anythink/expressad/foundation/g/f/c;)V

    iput-object p1, p0, Lcom/anythink/expressad/foundation/g/f/h;->c:Lcom/anythink/expressad/foundation/g/f/g;

    iput-object p2, p0, Lcom/anythink/expressad/foundation/g/f/h;->d:Lcom/anythink/expressad/foundation/g/f/c;

    return-void
.end method

.method private b(Lcom/anythink/expressad/foundation/g/f/i;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/h;->d:Lcom/anythink/expressad/foundation/g/f/c;

    invoke-interface {v0, p1}, Lcom/anythink/expressad/foundation/g/f/c;->c(Lcom/anythink/expressad/foundation/g/f/i;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/g/f/i;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/g/f/i;->c()V

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/h;->d:Lcom/anythink/expressad/foundation/g/f/c;

    invoke-interface {v0, p1}, Lcom/anythink/expressad/foundation/g/f/c;->b(Lcom/anythink/expressad/foundation/g/f/i;)V

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/h;->d:Lcom/anythink/expressad/foundation/g/f/c;

    invoke-interface {v0, p1}, Lcom/anythink/expressad/foundation/g/f/c;->a(Lcom/anythink/expressad/foundation/g/f/i;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/h;->d:Lcom/anythink/expressad/foundation/g/f/c;

    invoke-interface {v0, p1}, Lcom/anythink/expressad/foundation/g/f/c;->d(Lcom/anythink/expressad/foundation/g/f/i;)V

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/h;->c:Lcom/anythink/expressad/foundation/g/f/g;

    invoke-interface {v0, p1}, Lcom/anythink/expressad/foundation/g/f/g;->a(Lcom/anythink/expressad/foundation/g/f/i;)Lcom/anythink/expressad/foundation/g/f/f/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/foundation/g/f/i;->a(Lcom/anythink/expressad/foundation/g/f/f/c;)Lcom/anythink/expressad/foundation/g/f/k;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/foundation/g/f/h;->d:Lcom/anythink/expressad/foundation/g/f/c;

    invoke-interface {v1, p1, v0}, Lcom/anythink/expressad/foundation/g/f/c;->a(Lcom/anythink/expressad/foundation/g/f/i;Lcom/anythink/expressad/foundation/g/f/k;)V
    :try_end_0
    .catch Lcom/anythink/expressad/foundation/g/f/a/a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/h;->d:Lcom/anythink/expressad/foundation/g/f/c;

    new-instance v1, Lcom/anythink/expressad/foundation/g/f/a/a;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/anythink/expressad/foundation/g/f/a/a;-><init>(ILcom/anythink/expressad/foundation/g/f/f/c;)V

    invoke-interface {v0, p1, v1}, Lcom/anythink/expressad/foundation/g/f/c;->a(Lcom/anythink/expressad/foundation/g/f/i;Lcom/anythink/expressad/foundation/g/f/a/a;)V

    return-void

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/anythink/expressad/foundation/g/f/h;->d:Lcom/anythink/expressad/foundation/g/f/c;

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/f/i;->a(Lcom/anythink/expressad/foundation/g/f/a/a;)Lcom/anythink/expressad/foundation/g/f/a/a;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lcom/anythink/expressad/foundation/g/f/c;->a(Lcom/anythink/expressad/foundation/g/f/i;Lcom/anythink/expressad/foundation/g/f/a/a;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/expressad/foundation/g/f/i;)V
    .locals 4

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/h;->d:Lcom/anythink/expressad/foundation/g/f/c;

    invoke-interface {v0, p1}, Lcom/anythink/expressad/foundation/g/f/c;->c(Lcom/anythink/expressad/foundation/g/f/i;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/g/f/i;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/g/f/i;->c()V

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/h;->d:Lcom/anythink/expressad/foundation/g/f/c;

    invoke-interface {v0, p1}, Lcom/anythink/expressad/foundation/g/f/c;->b(Lcom/anythink/expressad/foundation/g/f/i;)V

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/h;->d:Lcom/anythink/expressad/foundation/g/f/c;

    invoke-interface {v0, p1}, Lcom/anythink/expressad/foundation/g/f/c;->a(Lcom/anythink/expressad/foundation/g/f/i;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/h;->d:Lcom/anythink/expressad/foundation/g/f/c;

    invoke-interface {v0, p1}, Lcom/anythink/expressad/foundation/g/f/c;->d(Lcom/anythink/expressad/foundation/g/f/i;)V

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/h;->c:Lcom/anythink/expressad/foundation/g/f/g;

    invoke-interface {v0, p1}, Lcom/anythink/expressad/foundation/g/f/g;->a(Lcom/anythink/expressad/foundation/g/f/i;)Lcom/anythink/expressad/foundation/g/f/f/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/foundation/g/f/i;->a(Lcom/anythink/expressad/foundation/g/f/f/c;)Lcom/anythink/expressad/foundation/g/f/k;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/foundation/g/f/h;->d:Lcom/anythink/expressad/foundation/g/f/c;

    invoke-interface {v1, p1, v0}, Lcom/anythink/expressad/foundation/g/f/c;->a(Lcom/anythink/expressad/foundation/g/f/i;Lcom/anythink/expressad/foundation/g/f/k;)V
    :try_end_0
    .catch Lcom/anythink/expressad/foundation/g/f/a/a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/h;->d:Lcom/anythink/expressad/foundation/g/f/c;

    new-instance v1, Lcom/anythink/expressad/foundation/g/f/a/a;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/anythink/expressad/foundation/g/f/a/a;-><init>(ILcom/anythink/expressad/foundation/g/f/f/c;)V

    invoke-interface {v0, p1, v1}, Lcom/anythink/expressad/foundation/g/f/c;->a(Lcom/anythink/expressad/foundation/g/f/i;Lcom/anythink/expressad/foundation/g/f/a/a;)V

    return-void

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/anythink/expressad/foundation/g/f/h;->d:Lcom/anythink/expressad/foundation/g/f/c;

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/f/i;->a(Lcom/anythink/expressad/foundation/g/f/a/a;)Lcom/anythink/expressad/foundation/g/f/a/a;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lcom/anythink/expressad/foundation/g/f/c;->a(Lcom/anythink/expressad/foundation/g/f/i;Lcom/anythink/expressad/foundation/g/f/a/a;)V

    return-void
.end method
