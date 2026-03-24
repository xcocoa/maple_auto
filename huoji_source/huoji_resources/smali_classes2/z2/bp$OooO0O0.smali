.class public final Lz2/bp$OooO0O0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO0O0"
.end annotation


# instance fields
.field private final OooO00o:I

.field private final OooO0O0:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lz2/bp$OooO0O0;->OooO00o:I

    iput p2, p0, Lz2/bp$OooO0O0;->OooO0O0:I

    return-void
.end method

.method public synthetic constructor <init>(IILz2/bp$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lz2/bp$OooO0O0;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final OooO00o()I
    .locals 1

    iget v0, p0, Lz2/bp$OooO0O0;->OooO00o:I

    return v0
.end method

.method public final OooO0O0()I
    .locals 1

    iget v0, p0, Lz2/bp$OooO0O0;->OooO0O0:I

    return v0
.end method
