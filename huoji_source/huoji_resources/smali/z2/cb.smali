.class public abstract Lz2/cb;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/cb$OooO;,
        Lz2/cb$OooOO0;,
        Lz2/cb$OooO0O0;,
        Lz2/cb$OooO0OO;,
        Lz2/cb$OooOOO0;,
        Lz2/cb$OooOO0O;,
        Lz2/cb$OooO0o;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final OooO:Ljava/lang/String; = "android.widget.EditText"

.field public static OooO0OO:Landroid/graphics/Rect; = null

.field public static final OooO0Oo:Ljava/lang/String; = "android.view.View"

.field public static final OooO0o:Ljava/lang/String; = "android.widget.ImageView"

.field public static final OooO0o0:Ljava/lang/String; = "android.widget.TextView"

.field public static final OooO0oO:Ljava/lang/String; = "android.widget.Button"

.field public static final OooO0oo:Ljava/lang/String; = "android.widget.ImageButton"

.field public static final OooOO0:Ljava/lang/String; = "android.widget.ListView"

.field public static final OooOO0O:Ljava/lang/String; = "android.widget.LinearLayout"

.field public static final OooOO0o:Ljava/lang/String; = "android.view.ViewGroup"

.field public static final OooOOO0:Ljava/lang/String; = "com.android.systemui"


# instance fields
.field public final OooO00o:Z

.field public final OooO0O0:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lz2/cb;->OooO0OO:Landroid/graphics/Rect;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Z)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/cb;->OooO0O0:Ljava/lang/Object;

    iput-boolean p2, p0, Lz2/cb;->OooO00o:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ZB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lz2/cb;-><init>(Ljava/lang/Object;Z)V

    return-void
.end method

.method private static OooO(Ljava/lang/String;Z)Lz2/cb;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lz2/cb$OooOOO0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lz2/cb$OooOOO0;-><init>(Ljava/lang/String;ZB)V

    return-object v0
.end method

.method private static OooO0OO(Landroid/graphics/Rect;)Lz2/cb;
    .locals 1
    .param p0    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lz2/cb$OooOO0;

    invoke-direct {v0, p0}, Lz2/cb$OooOO0;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private static OooO0Oo(Ljava/lang/String;)Lz2/cb;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lz2/cb$OooO0o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lz2/cb$OooO0o;-><init>(Ljava/lang/String;B)V

    return-object v0
.end method

.method private static OooO0o(Ljava/lang/String;Z)Lz2/cb;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lz2/cb$OooOO0O;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lz2/cb$OooOO0O;-><init>(Ljava/lang/String;ZB)V

    return-object v0
.end method

.method private static OooO0o0(Ljava/lang/String;Ljava/lang/String;)Lz2/cb;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":id/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lz2/cb$OooO0o;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lz2/cb$OooO0o;-><init>(Ljava/lang/String;B)V

    return-object p1
.end method

.method private static OooO0oo(Ljava/lang/String;)Lz2/cb;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lz2/cb$OooO0O0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lz2/cb$OooO0O0;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private static OooOO0(Ljava/lang/String;Z)Lz2/cb;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lz2/cb$OooO0OO;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lz2/cb$OooO0OO;-><init>(Ljava/lang/String;ZB)V

    return-object v0
.end method

.method private static OooOO0O(Ljava/lang/String;Z)Lz2/cb;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lz2/cb$OooO0O0;

    invoke-direct {v0, p0, p1}, Lz2/cb$OooO0O0;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public abstract OooO0oO(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
.end method
