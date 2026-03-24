.class public final Lz2/ld0$OooO0OO;
.super Lz2/ld0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/ld0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO0OO"
.end annotation


# instance fields
.field private final OooO00o:Landroid/content/res/AssetManager;

.field private final OooO0O0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/res/AssetManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lz2/ld0;-><init>(Lz2/ld0$OooO00o;)V

    iput-object p1, p0, Lz2/ld0$OooO0OO;->OooO00o:Landroid/content/res/AssetManager;

    iput-object p2, p0, Lz2/ld0$OooO0OO;->OooO0O0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public OooO0OO()Lpl/droidsonroids/gif/GifInfoHandle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    iget-object v1, p0, Lz2/ld0$OooO0OO;->OooO00o:Landroid/content/res/AssetManager;

    iget-object v2, p0, Lz2/ld0$OooO0OO;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    return-object v0
.end method
