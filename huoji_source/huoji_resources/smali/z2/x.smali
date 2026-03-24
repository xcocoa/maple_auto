.class public final Lz2/x;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final OooO00o:Lz2/o0O0OO0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/o0O0OO0<",
            "Lcom/bumptech/glide/load/DecodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final OooO0O0:Lz2/o0O0OO0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/o0O0OO0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->DEFAULT:Lcom/bumptech/glide/load/DecodeFormat;

    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DecodeFormat"

    invoke-static {v1, v0}, Lz2/o0O0OO0;->OooO0oO(Ljava/lang/String;Ljava/lang/Object;)Lz2/o0O0OO0;

    move-result-object v0

    sput-object v0, Lz2/x;->OooO00o:Lz2/o0O0OO0;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DisableAnimation"

    invoke-static {v1, v0}, Lz2/o0O0OO0;->OooO0oO(Ljava/lang/String;Ljava/lang/Object;)Lz2/o0O0OO0;

    move-result-object v0

    sput-object v0, Lz2/x;->OooO0O0:Lz2/o0O0OO0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
