.class public final Lcom/anythink/expressad/out/p$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/out/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/anythink/expressad/out/p$d;->a:I

    iput p2, p0, Lcom/anythink/expressad/out/p$d;->b:I

    return-void
.end method

.method private a()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/out/p$d;->a:I

    return v0
.end method

.method private a(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/out/p$d;->a:I

    return-void
.end method

.method private b()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/out/p$d;->b:I

    return v0
.end method

.method private b(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/out/p$d;->b:I

    return-void
.end method
