.class public final Lcom/anythink/expressad/video/dynview/g/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/video/dynview/g/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/video/dynview/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/graphics/drawable/shapes/RectShape;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Bitmap;

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:F

.field private i:F


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/anythink/expressad/video/dynview/g/a$a;->f:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/anythink/expressad/video/dynview/g/a$a;->g:I

    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/video/dynview/g/a$a;->a:Landroid/graphics/drawable/shapes/RectShape;

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/video/dynview/g/a$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/video/dynview/g/a$a;)Landroid/graphics/drawable/shapes/RectShape;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/dynview/g/a$a;->a:Landroid/graphics/drawable/shapes/RectShape;

    return-object p0
.end method

.method public static synthetic b(Lcom/anythink/expressad/video/dynview/g/a$a;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/dynview/g/a$a;->b:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static synthetic c(Lcom/anythink/expressad/video/dynview/g/a$a;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/dynview/g/a$a;->c:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static synthetic d(Lcom/anythink/expressad/video/dynview/g/a$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/video/dynview/g/a$a;->d:Z

    return p0
.end method

.method public static synthetic e(Lcom/anythink/expressad/video/dynview/g/a$a;)I
    .locals 0

    iget p0, p0, Lcom/anythink/expressad/video/dynview/g/a$a;->e:I

    return p0
.end method

.method public static synthetic f(Lcom/anythink/expressad/video/dynview/g/a$a;)I
    .locals 0

    iget p0, p0, Lcom/anythink/expressad/video/dynview/g/a$a;->f:I

    return p0
.end method

.method public static synthetic g(Lcom/anythink/expressad/video/dynview/g/a$a;)I
    .locals 0

    iget p0, p0, Lcom/anythink/expressad/video/dynview/g/a$a;->g:I

    return p0
.end method

.method public static synthetic h(Lcom/anythink/expressad/video/dynview/g/a$a;)F
    .locals 0

    iget p0, p0, Lcom/anythink/expressad/video/dynview/g/a$a;->h:F

    return p0
.end method

.method public static synthetic i(Lcom/anythink/expressad/video/dynview/g/a$a;)F
    .locals 0

    iget p0, p0, Lcom/anythink/expressad/video/dynview/g/a$a;->i:F

    return p0
.end method


# virtual methods
.method public final a()Lcom/anythink/expressad/video/dynview/g/a$b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/video/dynview/g/a$a;->d:Z

    return-object p0
.end method

.method public final a(F)Lcom/anythink/expressad/video/dynview/g/a$b;
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/video/dynview/g/a$a;->h:F

    return-object p0
.end method

.method public final a(I)Lcom/anythink/expressad/video/dynview/g/a$b;
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/video/dynview/g/a$a;->e:I

    return-object p0
.end method

.method public final a(Landroid/graphics/Bitmap;)Lcom/anythink/expressad/video/dynview/g/a$b;
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/dynview/g/a$a;->b:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final b(F)Lcom/anythink/expressad/video/dynview/g/a$b;
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/video/dynview/g/a$a;->i:F

    return-object p0
.end method

.method public final b(I)Lcom/anythink/expressad/video/dynview/g/a$b;
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/video/dynview/g/a$a;->f:I

    return-object p0
.end method

.method public final b(Landroid/graphics/Bitmap;)Lcom/anythink/expressad/video/dynview/g/a$b;
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/dynview/g/a$a;->c:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final b()Lcom/anythink/expressad/video/dynview/g/a;
    .locals 2

    new-instance v0, Lcom/anythink/expressad/video/dynview/g/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/anythink/expressad/video/dynview/g/a;-><init>(Lcom/anythink/expressad/video/dynview/g/a$a;B)V

    return-object v0
.end method

.method public final c(I)Lcom/anythink/expressad/video/dynview/g/a$b;
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/video/dynview/g/a$a;->g:I

    return-object p0
.end method
