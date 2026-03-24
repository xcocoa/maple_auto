.class public Lz2/c7$OooO0o$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/rc$OooO00o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/c7$OooO0o;->OooO0O0(Lcom/cyjh/http/bean/response/ProjectNumberInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Ljava/lang/String;

.field public final synthetic OooO0O0:Ljava/lang/String;

.field public final synthetic OooO0OO:Lz2/c7$OooO0o;


# direct methods
.method public constructor <init>(Lz2/c7$OooO0o;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/c7$OooO0o$OooO00o;->OooO0OO:Lz2/c7$OooO0o;

    iput-object p2, p0, Lz2/c7$OooO0o$OooO00o;->OooO00o:Ljava/lang/String;

    iput-object p3, p0, Lz2/c7$OooO0o$OooO00o;->OooO0O0:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(ILjava/lang/String;)V
    .locals 0

    invoke-static {}, Lz2/rc;->OooO0oO()Lz2/rc;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lz2/rc;->OooOO0(Lz2/rc$OooO00o;)Lz2/rc;

    return-void
.end method

.method public OooO0O0(Lcom/cyjh/http/bean/response/ProjectNumberInfo;)V
    .locals 3

    invoke-static {}, Lz2/c7;->OooO0Oo()Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    iget-object v1, p0, Lz2/c7$OooO0o$OooO00o;->OooO00o:Ljava/lang/String;

    iput-object v1, v0, Lcom/cyjh/elfin/base/AppContext;->OoooOoO:Ljava/lang/String;

    invoke-static {}, Lz2/rc;->OooO0oO()Lz2/rc;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lz2/rc;->OooOO0(Lz2/rc$OooO00o;)Lz2/rc;

    iget-object v0, p0, Lz2/c7$OooO0o$OooO00o;->OooO0O0:Ljava/lang/String;

    invoke-static {v0}, Lz2/q4;->OooO00o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v1

    const-string v2, "script_setting"

    invoke-virtual {v1, v2, v0}, Lz2/x4;->OooO0oo(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object v0

    new-instance v1, Lz2/fh;

    iget-object p1, p1, Lcom/cyjh/http/bean/response/ProjectNumberInfo;->IMToken:Ljava/lang/String;

    const/16 v2, 0x2711

    invoke-direct {v1, v2, p1}, Lz2/fh;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lz2/l10;->OooOOOO(Ljava/lang/Object;)V

    return-void
.end method
