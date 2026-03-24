.class public Lz2/qa$OooOo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/y30;


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
        "Lz2/y30<",
        "Lcom/cyjh/http/bean/response/BaseResInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/qa;


# direct methods
.method public constructor <init>(Lz2/qa;)V
    .locals 0

    iput-object p1, p0, Lz2/qa$OooOo;->OooO00o:Lz2/qa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/cyjh/http/bean/response/BaseResInfo;)V
    .locals 2

    iget v0, p1, Lcom/cyjh/http/bean/response/BaseResInfo;->code:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lz2/qa$OooOo;->OooO00o:Lz2/qa;

    const/4 v1, 0x0

    iget-object p1, p1, Lcom/cyjh/http/bean/response/BaseResInfo;->message:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lz2/qa;->OooOoo(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic OooO0O0(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/cyjh/http/bean/response/BaseResInfo;

    invoke-virtual {p0, p1}, Lz2/qa$OooOo;->OooO00o(Lcom/cyjh/http/bean/response/BaseResInfo;)V

    return-void
.end method
