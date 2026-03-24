.class public Lz2/zd0$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/zd0;->OooO0oo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lz2/yd0$OooO0OO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Landroid/content/Context;

.field public final synthetic OoooOoo:Ljava/lang/String;

.field public final synthetic Ooooo00:Ljava/lang/String;

.field public final synthetic Ooooo0o:Lz2/yd0$OooO0OO;

.field public final synthetic OooooO0:Lz2/zd0;


# direct methods
.method public constructor <init>(Lz2/zd0;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lz2/yd0$OooO0OO;)V
    .locals 0

    iput-object p1, p0, Lz2/zd0$OooO00o;->OooooO0:Lz2/zd0;

    iput-object p2, p0, Lz2/zd0$OooO00o;->OoooOoO:Landroid/content/Context;

    iput-object p3, p0, Lz2/zd0$OooO00o;->OoooOoo:Ljava/lang/String;

    iput-object p4, p0, Lz2/zd0$OooO00o;->Ooooo00:Ljava/lang/String;

    iput-object p5, p0, Lz2/zd0$OooO00o;->Ooooo0o:Lz2/yd0$OooO0OO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lz2/zd0$OooO00o;->OooooO0:Lz2/zd0;

    iget-object v1, p0, Lz2/zd0$OooO00o;->OoooOoO:Landroid/content/Context;

    iget-object v2, p0, Lz2/zd0$OooO00o;->OoooOoo:Ljava/lang/String;

    iget-object v3, p0, Lz2/zd0$OooO00o;->Ooooo00:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lz2/zd0;->OooO00o(Lz2/zd0;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lz2/zd0$OooO00o;->Ooooo0o:Lz2/yd0$OooO0OO;

    invoke-interface {v0}, Lz2/yd0$OooO0OO;->OooO00o()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lpl/droidsonroids/relinker/MissingLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    iget-object v1, p0, Lz2/zd0$OooO00o;->Ooooo0o:Lz2/yd0$OooO0OO;

    invoke-interface {v1, v0}, Lz2/yd0$OooO0OO;->OooO0O0(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
