.class public Lz2/tk$OooOO0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/tk$OooO;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/tk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooOO0"
.end annotation


# instance fields
.field private final OooO00o:I

.field private final OooO0O0:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lz2/tk$OooOO0;->OooO00o:I

    iput p2, p0, Lz2/tk$OooOO0;->OooO0O0:I

    return-void
.end method


# virtual methods
.method public OooO00o()I
    .locals 1

    iget v0, p0, Lz2/tk$OooOO0;->OooO0O0:I

    return v0
.end method

.method public OooO0O0()I
    .locals 1

    iget v0, p0, Lz2/tk$OooOO0;->OooO00o:I

    return v0
.end method
