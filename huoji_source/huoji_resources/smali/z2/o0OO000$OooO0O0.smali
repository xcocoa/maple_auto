.class public final Lz2/o0OO000$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/o0O;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/o0OO000;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO0O0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/o0O<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final OooO00o:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/o0OO000$OooO0O0;->OooO00o:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public OooO00o()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lz2/o0OO000$OooO0O0;->OooO00o:Ljava/lang/Object;

    return-object v0
.end method

.method public OooO0O0()V
    .locals 0

    return-void
.end method
