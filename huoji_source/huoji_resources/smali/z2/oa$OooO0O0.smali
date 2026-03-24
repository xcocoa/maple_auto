.class public Lz2/oa$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/h7$OooOO0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/oa;->OooOoO0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/oa;


# direct methods
.method public constructor <init>(Lz2/oa;)V
    .locals 0

    iput-object p1, p0, Lz2/oa$OooO0O0;->OooO00o:Lz2/oa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lz2/oa;->OooOo0()Ljava/lang/String;

    invoke-static {}, Lz2/e5;->OooO00o()Lz2/i40;

    move-result-object p1

    new-instance v0, Lz2/oa$OooO0O0$OooO00o;

    invoke-direct {v0, p0}, Lz2/oa$OooO0O0$OooO00o;-><init>(Lz2/oa$OooO0O0;)V

    invoke-virtual {p1, v0}, Lz2/p40;->OooO0o(Ljava/lang/Runnable;)Lorg/jdeferred/Promise;

    return-void
.end method

.method public OooO0O0()V
    .locals 0

    invoke-static {}, Lz2/oa;->OooOo0()Ljava/lang/String;

    return-void
.end method
