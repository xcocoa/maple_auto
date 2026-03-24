.class public final Lcom/anythink/expressad/reward/a/c$m;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/reward/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "m"
.end annotation


# static fields
.field private static final a:Lcom/anythink/expressad/reward/a/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/anythink/expressad/reward/a/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/anythink/expressad/reward/a/c;-><init>(B)V

    sput-object v0, Lcom/anythink/expressad/reward/a/c$m;->a:Lcom/anythink/expressad/reward/a/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/anythink/expressad/reward/a/c;
    .locals 1

    sget-object v0, Lcom/anythink/expressad/reward/a/c$m;->a:Lcom/anythink/expressad/reward/a/c;

    return-object v0
.end method
