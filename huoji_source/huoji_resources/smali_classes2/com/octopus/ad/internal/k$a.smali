.class public Lcom/octopus/ad/internal/k$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/octopus/ad/internal/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/internal/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public final synthetic b:Lcom/octopus/ad/internal/k;


# direct methods
.method private constructor <init>(Lcom/octopus/ad/internal/k;)V
    .locals 2

    iput-object p1, p0, Lcom/octopus/ad/internal/k$a;->b:Lcom/octopus/ad/internal/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/octopus/ad/internal/k$a;->a:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/octopus/ad/internal/k;Lcom/octopus/ad/internal/k$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/k$a;-><init>(Lcom/octopus/ad/internal/k;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/octopus/ad/internal/k$a;->a:J

    const-wide/16 v2, 0xfa

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lcom/octopus/ad/internal/k$a;->a:J

    iget-wide v0, p0, Lcom/octopus/ad/internal/k$a;->a:J

    const-wide/16 v2, 0x1f4

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    iget-object p1, p0, Lcom/octopus/ad/internal/k$a;->b:Lcom/octopus/ad/internal/k;

    invoke-static {p1}, Lcom/octopus/ad/internal/k;->a(Lcom/octopus/ad/internal/k;)V

    :cond_1
    return-void
.end method
