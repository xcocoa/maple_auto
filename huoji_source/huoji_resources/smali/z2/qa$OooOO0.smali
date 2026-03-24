.class public Lz2/qa$OooOO0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/y30;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/qa;->Oooo000()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/y30<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/qa;


# direct methods
.method public constructor <init>(Lz2/qa;)V
    .locals 0

    iput-object p1, p0, Lz2/qa$OooOO0;->OooO00o:Lz2/qa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Void;)V
    .locals 2

    iget-object p1, p0, Lz2/qa$OooOO0;->OooO00o:Lz2/qa;

    invoke-static {p1}, Lz2/qa;->OooOo00(Lz2/qa;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lz2/qa$Oooo0;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lz2/qa$Oooo0;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic OooO0O0(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lz2/qa$OooOO0;->OooO00o(Ljava/lang/Void;)V

    return-void
.end method
