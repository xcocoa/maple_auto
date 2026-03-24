.class public Lcom/umeng/commonsdk/proguard/j$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/proguard/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/j$b;->a:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/umeng/commonsdk/proguard/j$b;->b:I

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/j$b;->c:Ljava/lang/String;

    return-void
.end method
