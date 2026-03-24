.class public Lz2/mk$OooO0O0;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/mk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0O0"
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/mk;


# direct methods
.method private constructor <init>(Lz2/mk;)V
    .locals 0

    iput-object p1, p0, Lz2/mk$OooO0O0;->OooO00o:Lz2/mk;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz2/mk;Lz2/mk$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/mk$OooO0O0;-><init>(Lz2/mk;)V

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lz2/mk$OooO0O0;->OooO00o:Lz2/mk;

    return-object v0
.end method
