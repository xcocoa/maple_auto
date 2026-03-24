.class public Lz2/ck$OooO00o;
.super Landroidx/core/content/res/ResourcesCompat$FontCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/ck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/ck;


# direct methods
.method public constructor <init>(Lz2/ck;)V
    .locals 0

    iput-object p1, p0, Lz2/ck$OooO00o;->OooO00o:Lz2/ck;

    invoke-direct {p0}, Landroidx/core/content/res/ResourcesCompat$FontCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFontRetrievalFailed(I)V
    .locals 0

    return-void
.end method

.method public onFontRetrieved(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lz2/ck$OooO00o;->OooO00o:Lz2/ck;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lz2/ck;->OooO00o(Lz2/ck;Z)Z

    iget-object p1, p0, Lz2/ck$OooO00o;->OooO00o:Lz2/ck;

    invoke-virtual {p1}, Lz2/ck;->o00oO0o()V

    iget-object p1, p0, Lz2/ck$OooO00o;->OooO00o:Lz2/ck;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
