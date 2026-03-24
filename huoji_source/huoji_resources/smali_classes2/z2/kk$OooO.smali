.class public Lz2/kk$OooO;
.super Lz2/kk$OooOOO;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/kk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO"
.end annotation


# instance fields
.field public final synthetic OooO0o0:Lz2/kk;


# direct methods
.method public constructor <init>(Lz2/kk;)V
    .locals 1

    iput-object p1, p0, Lz2/kk$OooO;->OooO0o0:Lz2/kk;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lz2/kk$OooOOO;-><init>(Lz2/kk;Lz2/kk$OooO00o;)V

    return-void
.end method


# virtual methods
.method public OooO00o()F
    .locals 2

    iget-object v0, p0, Lz2/kk$OooO;->OooO0o0:Lz2/kk;

    iget v1, v0, Lz2/kk;->OooOOO:F

    iget v0, v0, Lz2/kk;->OooOOOO:F

    add-float/2addr v1, v0

    return v1
.end method
