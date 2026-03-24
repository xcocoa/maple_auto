.class public final Lcom/umeng/commonsdk/proguard/aw;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:B

.field public final b:B

.field public final c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/umeng/commonsdk/proguard/aw;-><init>(BBI)V

    return-void
.end method

.method public constructor <init>(BBI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/umeng/commonsdk/proguard/aw;->a:B

    iput-byte p2, p0, Lcom/umeng/commonsdk/proguard/aw;->b:B

    iput p3, p0, Lcom/umeng/commonsdk/proguard/aw;->c:I

    return-void
.end method
