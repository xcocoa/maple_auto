.class public Lz2/qa$OooOo00;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/b40;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/qa;->Oooo00o()V
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

    iput-object p1, p0, Lz2/qa$OooOo00;->OooO00o:Lz2/qa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lz2/qa$OooOo00;->OooO00o:Lz2/qa;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lz2/qa;->OooOoo(ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic OooO0O0(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lz2/qa$OooOo00;->OooO00o(Ljava/lang/Throwable;)V

    return-void
.end method
