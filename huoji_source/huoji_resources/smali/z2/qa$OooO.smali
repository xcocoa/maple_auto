.class public Lz2/qa$OooO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/b40;


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
        "Lz2/b40<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/qa;


# direct methods
.method public constructor <init>(Lz2/qa;)V
    .locals 0

    iput-object p1, p0, Lz2/qa$OooO;->OooO00o:Lz2/qa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "copyFileToAssets START 3:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object p1, p0, Lz2/qa$OooO;->OooO00o:Lz2/qa;

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

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lz2/qa$OooO;->OooO00o(Ljava/lang/Throwable;)V

    return-void
.end method
