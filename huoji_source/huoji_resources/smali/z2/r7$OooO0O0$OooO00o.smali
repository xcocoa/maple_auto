.class public Lz2/r7$OooO0O0$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/ad$OooO00o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/r7$OooO0O0;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/r7$OooO0O0;


# direct methods
.method public constructor <init>(Lz2/r7$OooO0O0;)V
    .locals 0

    iput-object p1, p0, Lz2/r7$OooO0O0$OooO00o;->OooO00o:Lz2/r7$OooO0O0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(ILjava/lang/String;)V
    .locals 1

    invoke-static {}, Lz2/r7;->OooO0Oo()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doSpecialFuction --> uploadInstanceData onFailure message="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public OooO0O0(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lz2/r7;->OooO0Oo()Ljava/lang/String;

    return-void
.end method
