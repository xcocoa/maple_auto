.class public final Lcom/anythink/expressad/videocommon/b/m$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/videocommon/b/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/anythink/expressad/videocommon/b/m;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/anythink/expressad/videocommon/b/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/anythink/expressad/videocommon/b/m;-><init>(B)V

    sput-object v0, Lcom/anythink/expressad/videocommon/b/m$a;->a:Lcom/anythink/expressad/videocommon/b/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
