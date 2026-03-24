.class public Lcom/octopus/ad/internal/video/a$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/internal/video/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/octopus/ad/internal/video/a$c;->a:I

    iput p2, p0, Lcom/octopus/ad/internal/video/a$c;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/video/a$c;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/video/a$c;->b:I

    return v0
.end method
