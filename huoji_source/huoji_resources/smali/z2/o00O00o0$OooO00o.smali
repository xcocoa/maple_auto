.class public Lz2/o00O00o0$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/webkit/WebView$PictureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/o00O00o0;->OooO0OO()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/o00O00o0;


# direct methods
.method public constructor <init>(Lz2/o00O00o0;)V
    .locals 0

    iput-object p1, p0, Lz2/o00O00o0$OooO00o;->OooO00o:Lz2/o00O00o0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V
    .locals 0

    iget-object p1, p0, Lz2/o00O00o0$OooO00o;->OooO00o:Lz2/o00O00o0;

    invoke-static {p1}, Lz2/o00O00o0;->OooO00o(Lz2/o00O00o0;)Landroid/webkit/WebView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    iget-object p1, p0, Lz2/o00O00o0$OooO00o;->OooO00o:Lz2/o00O00o0;

    invoke-static {p1}, Lz2/o00O00o0;->OooO0O0(Lz2/o00O00o0;)V

    return-void
.end method
