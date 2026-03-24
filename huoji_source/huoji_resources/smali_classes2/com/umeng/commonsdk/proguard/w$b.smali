.class public Lcom/umeng/commonsdk/proguard/w$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/umeng/commonsdk/proguard/bi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/proguard/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/umeng/commonsdk/proguard/w$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/w$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/umeng/commonsdk/proguard/w$a;
    .locals 2

    new-instance v0, Lcom/umeng/commonsdk/proguard/w$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/w$a;-><init>(Lcom/umeng/commonsdk/proguard/w$1;)V

    return-object v0
.end method

.method public synthetic b()Lcom/umeng/commonsdk/proguard/bh;
    .locals 1

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/w$b;->a()Lcom/umeng/commonsdk/proguard/w$a;

    move-result-object v0

    return-object v0
.end method
