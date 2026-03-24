.class public Lz2/pe0$OooO0OO;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/pe0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO0OO"
.end annotation


# static fields
.field private static OooO00o:Lz2/pe0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz2/pe0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz2/pe0;-><init>(Lz2/pe0$OooO00o;)V

    sput-object v0, Lz2/pe0$OooO0OO;->OooO00o:Lz2/pe0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o()Lz2/pe0;
    .locals 1

    sget-object v0, Lz2/pe0$OooO0OO;->OooO00o:Lz2/pe0;

    return-object v0
.end method
