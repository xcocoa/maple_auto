.class public final Lz2/tr;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final OooO00o:Lz2/vr;

.field private final OooO0O0:Z


# direct methods
.method public constructor <init>(Lz2/vr;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lz2/tr;->OooO0O0:Z

    iput-object p1, p0, Lz2/tr;->OooO00o:Lz2/vr;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lz2/tr;-><init>(Lz2/vr;Z)V

    return-void
.end method


# virtual methods
.method public final OooO00o()Lz2/vr;
    .locals 1

    iget-object v0, p0, Lz2/tr;->OooO00o:Lz2/vr;

    return-object v0
.end method

.method public final OooO0O0()Z
    .locals 1

    iget-boolean v0, p0, Lz2/tr;->OooO0O0:Z

    return v0
.end method
