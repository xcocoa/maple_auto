.class public final Lcom/anythink/expressad/foundation/f/b$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/foundation/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/anythink/expressad/foundation/f/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/anythink/expressad/foundation/f/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/anythink/expressad/foundation/f/b;-><init>(B)V

    sput-object v0, Lcom/anythink/expressad/foundation/f/b$a;->a:Lcom/anythink/expressad/foundation/f/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/anythink/expressad/foundation/f/b;
    .locals 1

    sget-object v0, Lcom/anythink/expressad/foundation/f/b$a;->a:Lcom/anythink/expressad/foundation/f/b;

    return-object v0
.end method
