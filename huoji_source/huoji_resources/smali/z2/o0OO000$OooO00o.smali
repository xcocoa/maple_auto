.class public Lz2/o0OO000$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/o0O$OooO00o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/o0OO000;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/o0O$OooO00o<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o()Ljava/lang/Class;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public OooO0O0(Ljava/lang/Object;)Lz2/o0O;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lz2/o0O<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lz2/o0OO000$OooO0O0;

    invoke-direct {v0, p1}, Lz2/o0OO000$OooO0O0;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
