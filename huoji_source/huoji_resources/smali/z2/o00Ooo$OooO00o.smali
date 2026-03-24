.class public Lz2/o00Ooo$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/o00Ooo$OooO0O0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/o00Ooo;->OooO0Oo(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Ljava/lang/Object;

.field public final synthetic OooO0O0:Lz2/o00Ooo;


# direct methods
.method public constructor <init>(Lz2/o00Ooo;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lz2/o00Ooo$OooO00o;->OooO0O0:Lz2/o00Ooo;

    iput-object p2, p0, Lz2/o00Ooo$OooO00o;->OooO00o:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/android/volley/Request;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/volley/Request;->OooOoO()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lz2/o00Ooo$OooO00o;->OooO00o:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
