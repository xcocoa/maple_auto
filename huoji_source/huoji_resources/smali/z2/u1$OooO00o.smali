.class public Lz2/u1$OooO00o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/u1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO00o"
.end annotation


# static fields
.field private static final OooO0OO:I = 0x12c


# instance fields
.field private final OooO00o:I

.field private OooO0O0:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lz2/u1$OooO00o;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lz2/u1$OooO00o;->OooO00o:I

    return-void
.end method


# virtual methods
.method public OooO00o()Lz2/u1;
    .locals 3

    new-instance v0, Lz2/u1;

    iget v1, p0, Lz2/u1$OooO00o;->OooO00o:I

    iget-boolean v2, p0, Lz2/u1$OooO00o;->OooO0O0:Z

    invoke-direct {v0, v1, v2}, Lz2/u1;-><init>(IZ)V

    return-object v0
.end method

.method public OooO0O0(Z)Lz2/u1$OooO00o;
    .locals 0

    iput-boolean p1, p0, Lz2/u1$OooO00o;->OooO0O0:Z

    return-object p0
.end method
