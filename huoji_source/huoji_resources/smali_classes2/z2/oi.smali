.class public Lz2/oi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/mi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/oi$OooO0O0;
    }
.end annotation


# instance fields
.field private OooO00o:Lz2/mi;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "z2.yg"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/mi;

    iput-object v0, p0, Lz2/oi;->OooO00o:Lz2/mi;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(Lz2/oi$OooO00o;)V
    .locals 0

    invoke-direct {p0}, Lz2/oi;-><init>()V

    return-void
.end method

.method public static OooO0o()Lz2/oi;
    .locals 1

    invoke-static {}, Lz2/oi$OooO0O0;->OooO00o()Lz2/oi;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public OooO00o(Lz2/r3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/r3<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lz2/oi;->OooO00o:Lz2/mi;

    invoke-interface {v0, p1}, Lz2/mi;->OooO00o(Lz2/r3;)V

    return-void
.end method

.method public OooO0O0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;I)V
    .locals 1

    iget-object v0, p0, Lz2/oi;->OooO00o:Lz2/mi;

    invoke-interface {v0, p1, p2, p3, p4}, Lz2/mi;->OooO0O0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;I)V

    return-void
.end method

.method public OooO0OO()Lz2/ni;
    .locals 1

    iget-object v0, p0, Lz2/oi;->OooO00o:Lz2/mi;

    invoke-interface {v0}, Lz2/mi;->OooO0OO()Lz2/ni;

    move-result-object v0

    return-object v0
.end method

.method public OooO0Oo(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lz2/oi;->OooO00o:Lz2/mi;

    invoke-interface {v0, p1}, Lz2/mi;->OooO0Oo(Landroid/content/Context;)V

    return-void
.end method

.method public OooO0o0(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lz2/oi;->OooO00o:Lz2/mi;

    invoke-interface {v0, p1, p2}, Lz2/mi;->OooO0o0(Ljava/lang/String;I)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lz2/oi;->OooO00o:Lz2/mi;

    invoke-interface {v0}, Lz2/mi;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
