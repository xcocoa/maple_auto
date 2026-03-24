.class public Lpl/droidsonroids/gif/GifTextureView$OooO0OO$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/droidsonroids/gif/GifTextureView$OooO0OO;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lpl/droidsonroids/gif/GifTextureView;

.field public final synthetic OoooOoo:Lpl/droidsonroids/gif/GifTextureView$OooO0OO;


# direct methods
.method public constructor <init>(Lpl/droidsonroids/gif/GifTextureView$OooO0OO;Lpl/droidsonroids/gif/GifTextureView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lpl/droidsonroids/gif/GifTextureView$OooO0OO$OooO00o;->OoooOoo:Lpl/droidsonroids/gif/GifTextureView$OooO0OO;

    iput-object p2, p0, Lpl/droidsonroids/gif/GifTextureView$OooO0OO$OooO00o;->OoooOoO:Lpl/droidsonroids/gif/GifTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$OooO0OO$OooO00o;->OoooOoO:Lpl/droidsonroids/gif/GifTextureView;

    iget-object v1, p0, Lpl/droidsonroids/gif/GifTextureView$OooO0OO$OooO00o;->OoooOoo:Lpl/droidsonroids/gif/GifTextureView$OooO0OO;

    invoke-static {v1}, Lpl/droidsonroids/gif/GifTextureView$OooO0OO;->OooO00o(Lpl/droidsonroids/gif/GifTextureView$OooO0OO;)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v1

    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifTextureView;->OooO0Oo(Lpl/droidsonroids/gif/GifTextureView;Lpl/droidsonroids/gif/GifInfoHandle;)V

    return-void
.end method
