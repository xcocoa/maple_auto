.class public Lz2/kc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/ic;
.implements Lz2/ld;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/kc$OooO00o;
    }
.end annotation


# static fields
.field public static final Ooooo00:I = 0x2

.field public static final Ooooo0o:I = 0x3

.field private static OooooO0:Lz2/kc;


# instance fields
.field private OoooOoO:Lz2/nc;

.field private OoooOoo:Lz2/kc$OooO00o;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooOo00()Lz2/kc;
    .locals 1

    sget-object v0, Lz2/kc;->OooooO0:Lz2/kc;

    if-nez v0, :cond_0

    new-instance v0, Lz2/kc;

    invoke-direct {v0}, Lz2/kc;-><init>()V

    sput-object v0, Lz2/kc;->OooooO0:Lz2/kc;

    :cond_0
    sget-object v0, Lz2/kc;->OooooO0:Lz2/kc;

    return-object v0
.end method


# virtual methods
.method public OooO00o(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V
    .locals 1

    iget-object v0, p0, Lz2/kc;->OoooOoo:Lz2/kc$OooO00o;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lz2/kc$OooO00o;->OooO00o(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V

    :cond_0
    return-void
.end method

.method public OooO0O0(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V
    .locals 1

    iget-object v0, p0, Lz2/kc;->OoooOoo:Lz2/kc$OooO00o;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lz2/kc$OooO00o;->OooO0O0(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V

    :cond_0
    return-void
.end method

.method public OooO0o(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lz2/kc;->OoooOoo:Lz2/kc$OooO00o;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lz2/kc$OooO00o;->OooO0OO(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V

    return-void
.end method

.method public OooOO0(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V
    .locals 1

    iget-object v0, p0, Lz2/kc;->OoooOoo:Lz2/kc$OooO00o;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lz2/kc$OooO00o;->OooO0OO(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V

    :cond_0
    return-void
.end method

.method public OooOOO0()V
    .locals 2

    iget-object v0, p0, Lz2/kc;->OoooOoo:Lz2/kc$OooO00o;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lz2/kc$OooO00o;->OooO0OO(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V

    return-void
.end method

.method public OooOo(ZLandroid/content/Context;Lcom/cyjh/http/bean/request/UpdateRequestInfo;)V
    .locals 1

    new-instance v0, Lz2/nc;

    invoke-direct {v0, p2, p0, p1, p3}, Lz2/nc;-><init>(Landroid/content/Context;Lz2/ld;ZLcom/cyjh/http/bean/request/UpdateRequestInfo;)V

    iput-object v0, p0, Lz2/kc;->OoooOoO:Lz2/nc;

    invoke-virtual {v0, p2}, Lz2/nc;->OooO0o(Landroid/content/Context;)V

    return-void
.end method

.method public OooOo0()V
    .locals 1

    iget-object v0, p0, Lz2/kc;->OoooOoO:Lz2/nc;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz2/nc;->OooO0OO()V

    :cond_0
    return-void
.end method

.method public OooOo0O(Lz2/kc$OooO00o;)Lz2/kc;
    .locals 0

    iput-object p1, p0, Lz2/kc;->OoooOoo:Lz2/kc$OooO00o;

    return-object p0
.end method

.method public OooOo0o(ZLandroid/content/Context;)V
    .locals 1

    new-instance v0, Lz2/nc;

    invoke-direct {v0, p2, p0, p1}, Lz2/nc;-><init>(Landroid/content/Context;Lz2/ld;Z)V

    iput-object v0, p0, Lz2/kc;->OoooOoO:Lz2/nc;

    invoke-virtual {v0, p2}, Lz2/nc;->OooO0o(Landroid/content/Context;)V

    return-void
.end method
