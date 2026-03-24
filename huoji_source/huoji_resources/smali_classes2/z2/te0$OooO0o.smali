.class public final Lz2/te0$OooO0o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/te0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OooO0o"
.end annotation


# instance fields
.field private OoooOoO:Z

.field private OoooOoo:Z

.field public final synthetic Ooooo00:Lz2/te0;


# direct methods
.method public constructor <init>(Lz2/te0;Z)V
    .locals 0

    iput-object p1, p0, Lz2/te0$OooO0o;->Ooooo00:Lz2/te0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lz2/te0$OooO0o;->OoooOoO:Z

    return-void
.end method

.method public static synthetic OooO00o(Lz2/te0$OooO0o;Z)Z
    .locals 0

    iput-boolean p1, p0, Lz2/te0$OooO0o;->OoooOoO:Z

    return p1
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lz2/te0$OooO0o;->Ooooo00:Lz2/te0;

    invoke-static {v0}, Lz2/te0;->OooO0O0(Lz2/te0;)Lrazerdp/basepopup/BasePopupHelper;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lz2/te0$OooO0o;->OoooOoo:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lz2/te0$OooO0o;->OoooOoO:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/te0$OooO0o;->Ooooo00:Lz2/te0;

    invoke-static {v0}, Lz2/te0;->OooO0O0(Lz2/te0;)Lrazerdp/basepopup/BasePopupHelper;

    move-result-object v0

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->OooO0o0()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lz2/te0$OooO0o;->Ooooo00:Lz2/te0;

    invoke-static {v0}, Lz2/te0;->OooO0O0(Lz2/te0;)Lrazerdp/basepopup/BasePopupHelper;

    move-result-object v0

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->OooO0o()V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/te0$OooO0o;->OoooOoo:Z

    :cond_2
    :goto_1
    return-void
.end method
