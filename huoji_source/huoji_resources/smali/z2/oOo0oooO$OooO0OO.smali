.class public final Lz2/oOo0oooO$OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/oO0oO000;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/oOo0oooO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO0OO"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lz2/oO0oO000<",
        "TModel;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final OooO00o:Lz2/oOo0oooO$OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/oOo0oooO$OooO00o<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/oOo0oooO$OooO0OO$OooO00o;

    invoke-direct {v0, p0}, Lz2/oOo0oooO$OooO0OO$OooO00o;-><init>(Lz2/oOo0oooO$OooO0OO;)V

    iput-object v0, p0, Lz2/oOo0oooO$OooO0OO;->OooO00o:Lz2/oOo0oooO$OooO00o;

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 0

    return-void
.end method

.method public OooO0OO(Lz2/oOO00000;)Lz2/oO0o0000;
    .locals 1
    .param p1    # Lz2/oOO00000;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/oOO00000;",
            ")",
            "Lz2/oO0o0000<",
            "TModel;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p1, Lz2/oOo0oooO;

    iget-object v0, p0, Lz2/oOo0oooO$OooO0OO;->OooO00o:Lz2/oOo0oooO$OooO00o;

    invoke-direct {p1, v0}, Lz2/oOo0oooO;-><init>(Lz2/oOo0oooO$OooO00o;)V

    return-object p1
.end method
