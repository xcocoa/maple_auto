.class public Lz2/ca$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/cyjh/elfin/receiver/NetStateReceiver$OooO00o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/ca;->OooOOo0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/ca;


# direct methods
.method public constructor <init>(Lz2/ca;)V
    .locals 0

    iput-object p1, p0, Lz2/ca$OooO00o;->OooO00o:Lz2/ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 2

    invoke-static {}, Lz2/ca;->OooO0o0()Ljava/lang/String;

    iget-object v0, p0, Lz2/ca$OooO00o;->OooO00o:Lz2/ca;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lz2/ca;->OooO(Lz2/ca;Z)Z

    iget-object v0, p0, Lz2/ca$OooO00o;->OooO00o:Lz2/ca;

    invoke-static {v0, v1}, Lz2/ca;->OooOO0O(Lz2/ca;Z)Z

    return-void
.end method

.method public OooO0O0(I)V
    .locals 0

    invoke-static {}, Lz2/ca;->OooO0o0()Ljava/lang/String;

    iget-object p1, p0, Lz2/ca$OooO00o;->OooO00o:Lz2/ca;

    invoke-static {p1}, Lz2/ca;->OooO0o(Lz2/ca;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lz2/ca$OooO00o;->OooO00o:Lz2/ca;

    invoke-static {p1}, Lz2/ca;->OooO0oo(Lz2/ca;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lz2/ca$OooO00o;->OooO00o:Lz2/ca;

    invoke-static {p1}, Lz2/ca;->OooOO0(Lz2/ca;)V

    :cond_0
    return-void
.end method
