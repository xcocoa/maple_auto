.class public Lz2/s6$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/s6;->OooO0o(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:F

.field public final synthetic OoooOoo:F

.field public final synthetic Ooooo00:Lz2/s6;


# direct methods
.method public constructor <init>(Lz2/s6;FF)V
    .locals 0

    iput-object p1, p0, Lz2/s6$OooO00o;->Ooooo00:Lz2/s6;

    iput p2, p0, Lz2/s6$OooO00o;->OoooOoO:F

    iput p3, p0, Lz2/s6$OooO00o;->OoooOoo:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lz2/s6$OooO00o;->Ooooo00:Lz2/s6;

    iget v1, p0, Lz2/s6$OooO00o;->OoooOoO:F

    iget v2, p0, Lz2/s6$OooO00o;->OoooOoo:F

    invoke-static {v0, v1, v2}, Lz2/s6;->OooO0o0(Lz2/s6;FF)V

    iget-object v0, p0, Lz2/s6$OooO00o;->Ooooo00:Lz2/s6;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
