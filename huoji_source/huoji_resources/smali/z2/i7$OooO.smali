.class public Lz2/i7$OooO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/r3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/i7;->OooOo()V
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
.field public final synthetic OooO00o:Lz2/i7;


# direct methods
.method public constructor <init>(Lz2/i7;)V
    .locals 0

    iput-object p1, p0, Lz2/i7$OooO;->OooO00o:Lz2/i7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic OooO00o(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lz2/i7$OooO;->OooO0O0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public OooO0O0(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lz2/i7$OooO;->OooO00o:Lz2/i7;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lz2/i7;->OooO0OO(Lz2/i7;Z)Z

    iget-object v0, p0, Lz2/i7$OooO;->OooO00o:Lz2/i7;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lz2/i7;->OooO:Z

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lz2/i7$OooO;->OooO00o:Lz2/i7;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lz2/i7;->OooO0OO(Lz2/i7;Z)Z

    return-void
.end method
