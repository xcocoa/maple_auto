.class public Lz2/zd$OooO0O0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/zd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO0O0"
.end annotation


# static fields
.field private static final OooO00o:Lz2/zd;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz2/zd;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz2/zd;-><init>(Lz2/zd$OooO00o;)V

    sput-object v0, Lz2/zd$OooO0O0;->OooO00o:Lz2/zd;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o()Lz2/zd;
    .locals 1

    sget-object v0, Lz2/zd$OooO0O0;->OooO00o:Lz2/zd;

    return-object v0
.end method
