.class public Lz2/ja$OooOO0O;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/bd$OooO00o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/ja;->onReceiveScriptUIEvent(Lz2/q3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/ja;


# direct methods
.method public constructor <init>(Lz2/ja;)V
    .locals 0

    iput-object p1, p0, Lz2/ja$OooOO0O;->OooO00o:Lz2/ja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(ILjava/lang/String;)V
    .locals 1

    invoke-static {}, Lz2/ja;->OooOooO()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceiveScriptUIEvent --> onFailure="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public OooO0O0(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lz2/ja;->OooOooO()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceiveScriptUIEvent --> onSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method
