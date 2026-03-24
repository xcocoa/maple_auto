.class public Lcom/octopus/ad/b/b$r;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "r"
.end annotation


# instance fields
.field private a:I

.field private b:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    iput-wide v0, p0, Lcom/octopus/ad/b/b$r;->b:D

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/octopus/ad/b/b$r;->a:I

    return v0
.end method

.method public a(D)V
    .locals 0

    iput-wide p1, p0, Lcom/octopus/ad/b/b$r;->b:D

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/octopus/ad/b/b$r;->a:I

    return-void
.end method

.method public b()D
    .locals 2

    iget-wide v0, p0, Lcom/octopus/ad/b/b$r;->b:D

    return-wide v0
.end method
