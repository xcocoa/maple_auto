.class public Lz2/i4;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static OooO00o:J = 0x0L

.field private static OooO0O0:I = 0x1f4

.field private static OooO0OO:Lz2/i4;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO00o()Lz2/i4;
    .locals 1

    sget-object v0, Lz2/i4;->OooO0OO:Lz2/i4;

    if-nez v0, :cond_0

    new-instance v0, Lz2/i4;

    invoke-direct {v0}, Lz2/i4;-><init>()V

    sput-object v0, Lz2/i4;->OooO0OO:Lz2/i4;

    :cond_0
    sget-object v0, Lz2/i4;->OooO0OO:Lz2/i4;

    return-object v0
.end method


# virtual methods
.method public OooO0O0()Z
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lz2/i4;->OooO00o:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    sget v4, Lz2/i4;->OooO0O0:I

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    sput-wide v0, Lz2/i4;->OooO00o:J

    const/4 v0, 0x0

    return v0
.end method
