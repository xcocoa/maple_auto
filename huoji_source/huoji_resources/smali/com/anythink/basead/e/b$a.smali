.class public final Lcom/anythink/basead/e/b$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/basead/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/anythink/basead/e/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/anythink/basead/e/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/anythink/basead/e/b;-><init>(B)V

    sput-object v0, Lcom/anythink/basead/e/b$a;->a:Lcom/anythink/basead/e/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/anythink/basead/e/b;
    .locals 1

    sget-object v0, Lcom/anythink/basead/e/b$a;->a:Lcom/anythink/basead/e/b;

    return-object v0
.end method
