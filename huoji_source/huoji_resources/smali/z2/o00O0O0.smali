.class public final Lz2/o00O0O0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/o00O0O0$OooO0O0;
    }
.end annotation


# instance fields
.field public OooO00o:Lz2/oo0o0O0;

.field private OooO0O0:Lz2/o00O0O0O;

.field public OooO0OO:Lz2/o00O0OO0;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/oo0o0O0;

    invoke-direct {v0}, Lz2/oo0o0O0;-><init>()V

    iput-object v0, p0, Lz2/o00O0O0;->OooO00o:Lz2/oo0o0O0;

    new-instance v0, Lz2/o00O0O0O;

    invoke-direct {v0}, Lz2/o00O0O0O;-><init>()V

    iput-object v0, p0, Lz2/o00O0O0;->OooO0O0:Lz2/o00O0O0O;

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lz2/o00O0O0;-><init>()V

    return-void
.end method

.method private static OooO0O0()V
    .locals 0

    invoke-static {}, Lcom/cyjh/mqm/MQLanguageStub;->enginInit()V

    return-void
.end method

.method private OooO0OO()Lz2/oo0o0O0;
    .locals 1

    iget-object v0, p0, Lz2/o00O0O0;->OooO00o:Lz2/oo0o0O0;

    if-nez v0, :cond_0

    new-instance v0, Lz2/oo0o0O0;

    invoke-direct {v0}, Lz2/oo0o0O0;-><init>()V

    iput-object v0, p0, Lz2/o00O0O0;->OooO00o:Lz2/oo0o0O0;

    :cond_0
    iget-object v0, p0, Lz2/o00O0O0;->OooO00o:Lz2/oo0o0O0;

    return-object v0
.end method

.method private OooO0Oo()Lz2/o00O0OO0;
    .locals 1

    iget-object v0, p0, Lz2/o00O0O0;->OooO0OO:Lz2/o00O0OO0;

    if-nez v0, :cond_0

    new-instance v0, Lz2/o00O0OO0;

    invoke-direct {v0}, Lz2/o00O0OO0;-><init>()V

    iput-object v0, p0, Lz2/o00O0O0;->OooO0OO:Lz2/o00O0OO0;

    :cond_0
    iget-object v0, p0, Lz2/o00O0O0;->OooO0OO:Lz2/o00O0OO0;

    return-object v0
.end method

.method private static OooO0o()Lz2/o00O0O0;
    .locals 1

    invoke-static {}, Lz2/o00O0O0$OooO0O0;->OooO00o()Lz2/o00O0O0;

    move-result-object v0

    return-object v0
.end method

.method private OooO0o0()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/o00O0O0;->OooO00o:Lz2/oo0o0O0;

    iput-object v0, p0, Lz2/o00O0O0;->OooO0O0:Lz2/o00O0O0O;

    return-void
.end method


# virtual methods
.method public final OooO00o()Lz2/o00O0O0O;
    .locals 1

    iget-object v0, p0, Lz2/o00O0O0;->OooO0O0:Lz2/o00O0O0O;

    if-nez v0, :cond_0

    new-instance v0, Lz2/o00O0O0O;

    invoke-direct {v0}, Lz2/o00O0O0O;-><init>()V

    iput-object v0, p0, Lz2/o00O0O0;->OooO0O0:Lz2/o00O0O0O;

    :cond_0
    iget-object v0, p0, Lz2/o00O0O0;->OooO0O0:Lz2/o00O0O0O;

    return-object v0
.end method
