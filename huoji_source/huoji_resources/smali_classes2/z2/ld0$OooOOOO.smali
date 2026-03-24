.class public final Lz2/ld0$OooOOOO;
.super Lz2/ld0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/ld0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooOOOO"
.end annotation


# instance fields
.field private final OooO00o:Landroid/content/ContentResolver;

.field private final OooO0O0:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/content/ContentResolver;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lz2/ld0;-><init>(Lz2/ld0$OooO00o;)V

    iput-object p1, p0, Lz2/ld0$OooOOOO;->OooO00o:Landroid/content/ContentResolver;

    iput-object p2, p0, Lz2/ld0$OooOOOO;->OooO0O0:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public OooO0OO()Lpl/droidsonroids/gif/GifInfoHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/ld0$OooOOOO;->OooO00o:Landroid/content/ContentResolver;

    iget-object v1, p0, Lz2/ld0$OooOOOO;->OooO0O0:Landroid/net/Uri;

    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->OooOoO0(Landroid/content/ContentResolver;Landroid/net/Uri;)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v0

    return-object v0
.end method
