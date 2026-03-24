.class public Lz2/qa$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/h7$OooOO0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/qa;->Oooo0OO()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/qa;


# direct methods
.method public constructor <init>(Lz2/qa;)V
    .locals 0

    iput-object p1, p0, Lz2/qa$OooO0O0;->OooO00o:Lz2/qa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lz2/e5;->OooO00o()Lz2/i40;

    move-result-object p1

    new-instance v0, Lz2/qa$OooO0O0$OooO00o;

    invoke-direct {v0, p0}, Lz2/qa$OooO0O0$OooO00o;-><init>(Lz2/qa$OooO0O0;)V

    invoke-virtual {p1, v0}, Lz2/p40;->OooO0o(Ljava/lang/Runnable;)Lorg/jdeferred/Promise;

    iget-object p1, p0, Lz2/qa$OooO0O0;->OooO00o:Lz2/qa;

    invoke-static {p1}, Lz2/qa;->OooOo00(Lz2/qa;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lz2/qa$Oooo0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lz2/qa$Oooo0;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public OooO0O0()V
    .locals 3

    iget-object v0, p0, Lz2/qa$OooO0O0;->OooO00o:Lz2/qa;

    invoke-static {v0}, Lz2/qa;->OooOo00(Lz2/qa;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lz2/qa$Oooo0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lz2/qa$Oooo0;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
