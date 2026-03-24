.class public Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS$SingletonHolder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final a:Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;

    invoke-direct {v0}, Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;-><init>()V

    sput-object v0, Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS$SingletonHolder;->a:Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;
    .locals 1

    sget-object v0, Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS$SingletonHolder;->a:Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;

    return-object v0
.end method
