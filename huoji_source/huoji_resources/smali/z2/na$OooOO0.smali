.class public Lz2/na$OooOO0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/r3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/na;->OooOoO()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/r3<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/na;


# direct methods
.method public constructor <init>(Lz2/na;)V
    .locals 0

    iput-object p1, p0, Lz2/na$OooOO0;->OooO00o:Lz2/na;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic OooO00o(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lz2/na$OooOO0;->OooO0O0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public OooO0O0(Ljava/lang/Boolean;)V
    .locals 1

    iget-object p1, p0, Lz2/na$OooOO0;->OooO00o:Lz2/na;

    invoke-static {p1}, Lz2/na;->OooOoO0(Lz2/na;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lz2/na$OooOO0;->OooO00o:Lz2/na;

    invoke-static {p1}, Lz2/na;->OooOoO0(Lz2/na;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
