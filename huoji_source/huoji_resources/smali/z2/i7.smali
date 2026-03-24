.class public Lz2/i7;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final OooOO0o:I = 0xbb8

.field private static final OooOOO:Lz2/i7;

.field private static final OooOOO0:Ljava/lang/String; = "z2.i7"


# instance fields
.field public OooO:Z

.field private OooO00o:Z

.field private OooO0O0:Ljava/lang/String;

.field private OooO0OO:I

.field private final OooO0Oo:Ljava/lang/Object;

.field private final OooO0o:Landroid/os/Handler;

.field private OooO0o0:Z

.field private final OooO0oO:Lz2/ji;

.field private OooO0oo:Z

.field private OooOO0:I

.field public OooOO0O:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz2/i7;

    invoke-direct {v0}, Lz2/i7;-><init>()V

    sput-object v0, Lz2/i7;->OooOOO:Lz2/i7;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/i7;->OooO00o:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lz2/i7;->OooO0Oo:Ljava/lang/Object;

    iput-boolean v0, p0, Lz2/i7;->OooO0o0:Z

    new-instance v0, Lz2/i7$OooO00o;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lz2/i7$OooO00o;-><init>(Lz2/i7;Landroid/os/Looper;)V

    iput-object v0, p0, Lz2/i7;->OooO0o:Landroid/os/Handler;

    new-instance v0, Lz2/i7$OooO0O0;

    invoke-direct {v0, p0}, Lz2/i7$OooO0O0;-><init>(Lz2/i7;)V

    iput-object v0, p0, Lz2/i7;->OooO0oO:Lz2/ji;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/i7;->OooO0oo:Z

    iput-boolean v0, p0, Lz2/i7;->OooO:Z

    iput-boolean v0, p0, Lz2/i7;->OooOO0O:Z

    return-void
.end method

.method public static OooO()Lz2/i7;
    .locals 1

    sget-object v0, Lz2/i7;->OooOOO:Lz2/i7;

    return-object v0
.end method

.method public static synthetic OooO00o(Lz2/i7;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lz2/i7;->OooO0o:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic OooO0O0(Lz2/i7;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lz2/i7;->OooO0Oo:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic OooO0OO(Lz2/i7;Z)Z
    .locals 0

    iput-boolean p1, p0, Lz2/i7;->OooO0oo:Z

    return p1
.end method

.method public static synthetic OooO0Oo()Ljava/lang/String;
    .locals 1

    sget-object v0, Lz2/i7;->OooOOO0:Ljava/lang/String;

    return-object v0
.end method

.method private OooO0o()V
    .locals 4

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/Logcat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    sget-object v1, Lz2/e7;->OooO00o:Lz2/e7;

    invoke-static {v1}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v1, v0

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    sub-int/2addr v3, v2

    if-ge v1, v3, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic OooOOOO()V
    .locals 2

    :goto_0
    iget-boolean v0, p0, Lz2/i7;->OooO0o0:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic OooOOo0(Ljava/lang/Void;)V
    .locals 0

    invoke-static {}, Lz2/ii;->OooOOo()V

    return-void
.end method

.method private OooOoo0(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lz2/ba;->Ooooo0o:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lz2/ba;->OooooO0:Z

    if-nez v0, :cond_0

    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/entity/MsgItem;

    const/16 v2, 0x3ed

    invoke-direct {v1, v2}, Lcom/cyjh/elfin/entity/MsgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Lz2/l10;->OooOOOO(Ljava/lang/Object;)V

    :cond_0
    sget-boolean v0, Lz2/ba;->Ooooo0o:Z

    if-nez v0, :cond_1

    new-instance v0, Lz2/ba;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lz2/ba;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    new-instance p1, Lz2/i7$OooOO0O;

    invoke-direct {p1, p0, v0}, Lz2/i7$OooOO0O;-><init>(Lz2/i7;Lz2/ba;)V

    invoke-virtual {v0, p1}, Lz2/ba;->OooO0O0(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lz2/ba;->show()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/entity/MsgItem$UpdateMessageToDialog;

    invoke-direct {v1, p1}, Lcom/cyjh/elfin/entity/MsgItem$UpdateMessageToDialog;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lz2/l10;->OooOOOO(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private Oooo0OO()V
    .locals 2

    invoke-virtual {p0}, Lz2/i7;->OooOOO()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lz2/j7;->OooO0O0()Lz2/j7;

    move-result-object v0

    const/16 v1, 0x44d

    invoke-virtual {v0, v1}, Lz2/j7;->OooO0o(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lz2/i7;->Oooo0o0()V

    const/4 v0, 0x0

    sput-boolean v0, Lz2/b7;->OooO0o:Z

    :goto_0
    return-void
.end method

.method private Oooo0oO()V
    .locals 1

    invoke-static {}, Lz2/z6;->OooO0Oo()Lz2/z6;

    move-result-object v0

    invoke-virtual {v0}, Lz2/z6;->OooO0OO()Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lz2/z6;->OooO0Oo()Lz2/z6;

    move-result-object v0

    invoke-virtual {v0}, Lz2/z6;->OooO0OO()Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->Oooo0()V

    invoke-static {}, Lz2/z6;->OooO0Oo()Lz2/z6;

    move-result-object v0

    invoke-virtual {v0}, Lz2/z6;->OooO0OO()Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->Ooooo00()V

    :cond_0
    return-void
.end method


# virtual methods
.method public OooO0o0(ILjava/lang/String;)V
    .locals 6

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code 222:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , json:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x1f

    const/4 v1, 0x1

    const-string v2, ", json:"

    const-string v3, "callback code:"

    const-string v4, "heartbeatCheckFree.txt"

    if-ne p1, v0, :cond_0

    :try_start_1
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, v0, p1, v1}, Lz2/ae;->Oooo0o0(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const v1, 0x7f1000ec

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lz2/i7;->OooOoo0(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_0
    const/16 v0, 0x20

    const-string v5, "Message"

    if-ne p1, v0, :cond_1

    :try_start_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/16 v0, 0x21

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const p2, 0x7f1001dd

    invoke-virtual {p1, p2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/16 v0, 0x24

    if-ne p1, v0, :cond_3

    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object p1

    new-instance p2, Lcom/cyjh/elfin/entity/MsgItem;

    const/16 v0, 0x7d0

    invoke-direct {p2, v0}, Lcom/cyjh/elfin/entity/MsgItem;-><init>(I)V

    invoke-virtual {p1, p2}, Lz2/l10;->OooOOOO(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const/16 v0, 0x22

    if-ne p1, v0, :cond_4

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    const/16 v0, 0x25

    if-ne p1, v0, :cond_5

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, v0, p1, v1}, Lz2/ae;->Oooo0o0(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object p1

    const/4 p2, 0x4

    iput p2, p1, Lz2/b7;->OooO0OO:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lz2/c5;->OooO0OO(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public OooO0oO()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/i7;->OooO00o:Z

    invoke-virtual {p0}, Lz2/i7;->Oooo0o0()V

    return-void
.end method

.method public OooO0oo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/i7;->OooO0O0:Ljava/lang/String;

    return-object v0
.end method

.method public OooOO0()I
    .locals 1

    iget v0, p0, Lz2/i7;->OooO0OO:I

    return v0
.end method

.method public OooOO0O(Landroid/app/Application;)V
    .locals 0

    invoke-static {p1}, Lz2/ii;->OooO0Oo(Landroid/app/Application;)V

    return-void
.end method

.method public OooOO0o()V
    .locals 5

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    const v2, 0x7f10020f

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    const v3, 0x7f100219

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "elf_data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lz2/i7;->OooO0oO:Lz2/ji;

    invoke-static {v0, v1, v2, v3, v4}, Lz2/ii;->OooO0o0(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz2/ji;)V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-static {v0}, Lcom/rck/yt/ten/cn/Orcck;->addOcrTest(Ljava/lang/Object;)V

    invoke-static {}, Lcom/rck/yt/ten/cn/Orcck;->init()V

    return-void
.end method

.method public OooOOO()Z
    .locals 1

    invoke-static {}, Lz2/ii;->OooO0oo()Z

    move-result v0

    return v0
.end method

.method public OooOOO0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lz2/ii;->OooO0o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic OooOOOo()V
    .locals 0

    invoke-direct {p0}, Lz2/i7;->OooOOOO()V

    return-void
.end method

.method public OooOOo(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEngineStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lz2/i7;->OooO0o0:Z

    return-void
.end method

.method public OooOOoo(I)V
    .locals 3

    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "com.cyjh.elfin.ui.activity.SettingActivity.swtVolumeKeyCtrl"

    invoke-virtual {v0, v2, v1}, Lz2/x4;->OooO00o(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x72

    if-ne p1, v0, :cond_4

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    invoke-static {p1}, Lz2/t4;->OooOO0(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const v0, 0x7f1001d4

    :goto_0
    invoke-static {p1, v0}, Lz2/c5;->OooO0Oo(Landroid/content/Context;I)V

    return-void

    :cond_0
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    iget-boolean p1, p1, Lcom/cyjh/elfin/base/AppContext;->OoooOoo:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const v0, 0x7f1002fc

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    iget-boolean p1, p1, Lcom/cyjh/elfin/base/AppContext;->Ooooo00:Z

    if-nez p1, :cond_2

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const v0, 0x7f1002ff

    goto :goto_0

    :cond_2
    sget-boolean p1, Lz2/b7;->OooO0o:Z

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const v0, 0x7f1002fe

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    sput-boolean p1, Lz2/b7;->OooO0o:Z

    invoke-static {}, Lz2/i7;->OooO()Lz2/i7;

    move-result-object p1

    invoke-direct {p1}, Lz2/i7;->Oooo0OO()V

    iget-object p1, p0, Lz2/i7;->OooO0o:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lz2/i7;->OooO0o:Landroid/os/Handler;

    new-instance v0, Lz2/i7$OooOO0;

    invoke-direct {v0, p0}, Lz2/i7$OooOO0;-><init>(Lz2/i7;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method

.method public OooOo()V
    .locals 4

    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "sp_key_script_status"

    invoke-virtual {v0, v2, v1}, Lz2/x4;->OooO0o(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/i7;->OooO00o:Z

    invoke-static {}, Lz2/j7;->OooO0O0()Lz2/j7;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lz2/j7;->OooO0o0(I)V

    invoke-static {}, Lz2/q7;->OooO0o0()Lz2/q7;

    move-result-object v1

    invoke-virtual {v1}, Lz2/q7;->OooOO0()V

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v1

    const/4 v2, 0x2

    iput v2, v1, Lz2/b7;->OooO0OO:I

    iput-boolean v0, p0, Lz2/i7;->OooO:Z

    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "sp_key_switch_setting_flash_back_auto_restart"

    invoke-virtual {v0, v2, v1}, Lz2/x4;->OooO00o(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cyjh/elfin/tools/utils/BootDexManager;->OooO0OO()Lcom/cyjh/elfin/tools/utils/BootDexManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/elfin/tools/utils/BootDexManager;->OooO0o()V

    :cond_0
    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v0

    const-string v2, "sp_key_switch_setting_logcat_collect"

    invoke-virtual {v0, v2, v1}, Lz2/x4;->OooO00o(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cyjh/elfin/tools/utils/BootDexManager;->OooO0OO()Lcom/cyjh/elfin/tools/utils/BootDexManager;

    move-result-object v0

    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v1

    const-string v2, "sp_key_adb_command"

    const-string v3, "logcat -v time"

    invoke-virtual {v1, v2, v3}, Lz2/x4;->OooO0Oo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/tools/utils/BootDexManager;->OooO0oO(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lz2/i7$OooO;

    invoke-direct {v0, p0}, Lz2/i7$OooO;-><init>(Lz2/i7;)V

    invoke-static {v0}, Lz2/h7;->OooO0o(Lz2/r3;)V

    invoke-static {}, Lz2/d7;->OooO00o()Lz2/d7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/d7;->OooO0o0()V

    invoke-direct {p0}, Lz2/i7;->Oooo0oO()V

    return-void
.end method

.method public OooOo0()V
    .locals 2

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Lz2/b7;->OooO0OO:I

    invoke-direct {p0}, Lz2/i7;->Oooo0oO()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/i7;->OooOO0O:Z

    return-void
.end method

.method public OooOo00()V
    .locals 3

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v0

    iget v0, v0, Lz2/b7;->OooO0OO:I

    const/4 v1, 0x4

    if-ne v1, v0, :cond_0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    const v2, 0x7f10024b

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lz2/s4;->OooO00o(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Lz2/b7;->OooO0OO:I

    iget-boolean v0, p0, Lz2/i7;->OooOO0O:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lz2/i7;->Oooo0oO()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/i7;->OooOO0O:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public OooOo0O()V
    .locals 2

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Lz2/b7;->OooO0OO:I

    return-void
.end method

.method public OooOo0o(I)V
    .locals 1

    invoke-static {}, Lz2/z6;->OooO0Oo()Lz2/z6;

    move-result-object v0

    invoke-virtual {v0}, Lz2/z6;->OooO0OO()Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->setControlbarVisiable(I)V

    return-void
.end method

.method public OooOoO(FII)V
    .locals 1

    invoke-direct {p0}, Lz2/i7;->Oooo0oO()V

    invoke-static {}, Lz2/z6;->OooO0Oo()Lz2/z6;

    move-result-object v0

    invoke-virtual {v0}, Lz2/z6;->OooO0OO()Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->o000oOoO(FII)V

    return-void
.end method

.method public OooOoO0(ILjava/lang/String;)V
    .locals 10

    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "sp_key_switch_setting_error_dialog"

    invoke-virtual {v0, v2, v1}, Lz2/x4;->OooO00o(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x73

    const-string v2, " \nMsg:"

    const-string v3, " \n "

    const-string v4, "Code:"

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    if-ne p1, v0, :cond_0

    new-instance v0, Lz2/v6;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v6

    invoke-direct {v0, v6}, Lz2/v6;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    new-instance v6, Ljava/text/SimpleDateFormat;

    invoke-direct {v6, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v5, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lz2/v6;->OooO0oo(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_2

    new-instance v0, Ljava/io/File;

    const-string v6, "/sdcard/engine_common.txt"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lz2/k4;->OooOO0o(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v0, p2

    :cond_1
    new-instance v6, Lz2/v6;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v7

    invoke-direct {v6, v7}, Lz2/v6;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    new-instance v7, Ljava/text/SimpleDateFormat;

    invoke-direct {v7, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v5, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lz2/v6;->OooO0oo(Ljava/lang/String;)V

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopScript: returnCode1 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msg:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object p2

    const-string v0, "sp_key_script_status"

    invoke-virtual {p2, v0, v1}, Lz2/x4;->OooO0o(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {}, Lz2/j7;->OooO0O0()Lz2/j7;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lz2/j7;->OooO0o0(I)V

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object p2

    iput v0, p2, Lz2/b7;->OooO0OO:I

    iput-boolean v0, p0, Lz2/i7;->OooO:Z

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStopScript - callback code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "heartbeatCheckFree.txt"

    invoke-static {v3, p2, v2, v0}, Lz2/ae;->Oooo0o0(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object p2

    const-string v0, "sp_key_switch_setting_flash_back_auto_restart"

    invoke-virtual {p2, v0, v1}, Lz2/x4;->OooO00o(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/cyjh/elfin/tools/utils/BootDexManager;->OooO0OO()Lcom/cyjh/elfin/tools/utils/BootDexManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cyjh/elfin/tools/utils/BootDexManager;->OooO0oo()V

    :cond_3
    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object p2

    const-string v0, "sp_key_switch_setting_logcat_collect"

    invoke-virtual {p2, v0, v1}, Lz2/x4;->OooO00o(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/cyjh/elfin/tools/utils/BootDexManager;->OooO0OO()Lcom/cyjh/elfin/tools/utils/BootDexManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cyjh/elfin/tools/utils/BootDexManager;->OooO()V

    invoke-direct {p0}, Lz2/i7;->OooO0o()V

    :cond_4
    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object p2

    iget-object p2, p2, Lz2/gc;->OooO0O0:Lcom/cyjh/http/bean/request/DeviceInfo;

    iget-object p2, p2, Lcom/cyjh/http/bean/request/DeviceInfo;->DeviceId:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object p2

    iget-object p2, p2, Lz2/gc;->OooO0O0:Lcom/cyjh/http/bean/request/DeviceInfo;

    iget-object p2, p2, Lcom/cyjh/http/bean/request/DeviceInfo;->DeviceCode:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_5
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p2

    invoke-static {p2}, Lz2/ae;->OooO00o(Landroid/content/Context;)Lcom/cyjh/http/bean/request/DeviceInfo;

    move-result-object p2

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v0

    iget-object v0, v0, Lz2/gc;->OooO0O0:Lcom/cyjh/http/bean/request/DeviceInfo;

    iget-object v1, p2, Lcom/cyjh/http/bean/request/DeviceInfo;->DeviceId:Ljava/lang/String;

    iput-object v1, v0, Lcom/cyjh/http/bean/request/DeviceInfo;->DeviceId:Ljava/lang/String;

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v0

    iget-object v0, v0, Lz2/gc;->OooO0O0:Lcom/cyjh/http/bean/request/DeviceInfo;

    iget-object p2, p2, Lcom/cyjh/http/bean/request/DeviceInfo;->DeviceCode:Ljava/lang/String;

    iput-object p2, v0, Lcom/cyjh/http/bean/request/DeviceInfo;->DeviceCode:Ljava/lang/String;

    :cond_6
    iget-boolean p2, p0, Lz2/i7;->OooO0oo:Z

    const/4 v0, 0x0

    if-nez p2, :cond_7

    invoke-static {}, Lz2/m7;->OooO0o0()Lz2/m7;

    move-result-object p2

    iget-object p2, p2, Lz2/m7;->OooOO0:Lcom/cyjh/http/bean/response/ScriptStartRunInfo;

    if-eqz p2, :cond_7

    invoke-static {v0}, Lz2/h7;->OooO0oO(Lz2/mc$OooO00o;)V

    :cond_7
    invoke-static {}, Lz2/d7;->OooO00o()Lz2/d7;

    move-result-object p2

    invoke-virtual {p2}, Lz2/d7;->OooO0o0()V

    invoke-direct {p0}, Lz2/i7;->Oooo0oO()V

    invoke-static {}, Lz2/z6;->OooO0Oo()Lz2/z6;

    move-result-object p2

    invoke-virtual {p2}, Lz2/z6;->OooO0OO()Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->Oooo0O0()V

    const/16 p2, 0x3eb

    if-ne p1, p2, :cond_8

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const p2, 0x7f1002b2

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onStopScript RestartScriptHelper.isNeedRestart():"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/rpc/RestartScriptHelper;->isNeedRestart()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-boolean p1, p0, Lz2/i7;->OooO00o:Z

    if-eqz p1, :cond_9

    invoke-static {}, Lz2/c7;->OooO0oo()Lz2/c7;

    move-result-object p1

    invoke-virtual {p1}, Lz2/c7;->OooOO0()V

    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object p1

    new-instance p2, Lcom/cyjh/elfin/entity/MsgItem;

    const/16 v0, 0x3f0

    invoke-direct {p2, v0}, Lcom/cyjh/elfin/entity/MsgItem;-><init>(I)V

    invoke-virtual {p1, p2}, Lz2/l10;->OooOOOO(Ljava/lang/Object;)V

    return-void

    :cond_9
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/rpc/RestartScriptHelper;->isNeedRestart()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {v0}, Lz2/h7;->OooO0o0(Lz2/h7$OooOO0;)V

    :cond_a
    return-void
.end method

.method public OooOoOO()V
    .locals 0

    invoke-static {}, Lz2/ii;->OooO()V

    return-void
.end method

.method public OooOoo()V
    .locals 0

    invoke-static {}, Lz2/ii;->OooOO0()V

    return-void
.end method

.method public OooOooO(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/i7;->OooO0O0:Ljava/lang/String;

    return-void
.end method

.method public OooOooo(I)V
    .locals 0

    iput p1, p0, Lz2/i7;->OooOO0:I

    invoke-static {p1}, Lz2/ii;->OooOOOO(I)V

    invoke-virtual {p0}, Lz2/i7;->OooOO0o()V

    return-void
.end method

.method public Oooo()V
    .locals 4

    invoke-static {}, Lz2/i4;->OooO00o()Lz2/i4;

    move-result-object v0

    invoke-virtual {v0}, Lz2/i4;->OooO0O0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-static {v0}, Lz2/t4;->OooOO0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const v1, 0x7f1001d4

    invoke-static {v0, v1}, Lz2/c5;->OooO0O0(Landroid/content/Context;I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const-string v1, "script.info"

    invoke-static {v0, v1}, Lz2/z8;->OooO0Oo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    invoke-static {v1}, Lz2/a4;->OooOO0O(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;

    invoke-direct {v2}, Lcom/cyjh/http/bean/request/UpdateRequestInfo;-><init>()V

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v3

    invoke-virtual {v3}, Lz2/b7;->OooO0oO()Lcom/cyjh/elfin/entity/Script;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptId:Ljava/lang/String;

    iput-object v1, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->DeviceName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptVersion:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVersionRequest --> 1 ScriptId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",DeviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->DeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",ScriptVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lz2/kc;->OooOo00()Lz2/kc;

    move-result-object v0

    new-instance v1, Lz2/i7$OooOOO0;

    invoke-direct {v1, p0}, Lz2/i7$OooOOO0;-><init>(Lz2/i7;)V

    invoke-virtual {v0, v1}, Lz2/kc;->OooOo0O(Lz2/kc$OooO00o;)Lz2/kc;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Lz2/kc;->OooOo(ZLandroid/content/Context;Lcom/cyjh/http/bean/request/UpdateRequestInfo;)V

    return-void
.end method

.method public Oooo0()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lz2/ii;->OooO00o:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ocrex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lz2/ii;->OooOOO0(Ljava/lang/String;)V

    invoke-static {}, Lz2/q7;->OooO0o0()Lz2/q7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/q7;->OooO0o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lz2/ii;->OooOOO(Ljava/lang/String;)V

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/b7;->OooOO0()V

    invoke-static {}, Lz2/e5;->OooO00o()Lz2/i40;

    move-result-object v0

    new-instance v1, Lz2/g7;

    invoke-direct {v1, p0}, Lz2/g7;-><init>(Lz2/i7;)V

    invoke-virtual {v0, v1}, Lz2/p40;->OooO0o(Ljava/lang/Runnable;)Lorg/jdeferred/Promise;

    move-result-object v0

    sget-object v1, Lz2/f7;->OooO00o:Lz2/f7;

    invoke-interface {v0, v1}, Lorg/jdeferred/Promise;->OooOOO(Lz2/y30;)Lorg/jdeferred/Promise;

    return-void
.end method

.method public Oooo000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static/range {p1 .. p10}, Lz2/ii;->OooOOOo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Oooo00O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Lz2/ii;->OooOOo0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Oooo00o(I)V
    .locals 0

    iput p1, p0, Lz2/i7;->OooO0OO:I

    return-void
.end method

.method public Oooo0O0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EnginSdk -- 1starLoop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lz2/e5;->OooO00o()Lz2/i40;

    move-result-object v0

    new-instance v9, Lz2/i7$OooO0OO;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lz2/i7$OooO0OO;-><init>(Lz2/i7;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v0, v9}, Lz2/p40;->OooO0o(Ljava/lang/Runnable;)Lorg/jdeferred/Promise;

    return-void
.end method

.method public Oooo0o()V
    .locals 2

    invoke-static {}, Lz2/e5;->OooO00o()Lz2/i40;

    move-result-object v0

    new-instance v1, Lz2/i7$OooO0o;

    invoke-direct {v1, p0}, Lz2/i7$OooO0o;-><init>(Lz2/i7;)V

    invoke-virtual {v0, v1}, Lz2/p40;->OooO0o(Ljava/lang/Runnable;)Lorg/jdeferred/Promise;

    return-void
.end method

.method public Oooo0o0()V
    .locals 2

    const-string v0, "EnginSdk"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/rpc/RestartScriptHelper;->setNeedRestartValue(Ljava/lang/Boolean;)V

    invoke-static {}, Lz2/ii;->OooOo0()V

    return-void
.end method

.method public Oooo0oo()V
    .locals 7

    invoke-virtual {p0}, Lz2/i7;->OooOOO()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const-string v1, "common_shared_file"

    const-string v2, "type_resolution"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lz2/y2;->OooO0O0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const-string v1, "app_share_comm_file"

    const-string v2, "AJXJL_DISY"

    invoke-static {v0, v1, v2, v3}, Lz2/y2;->OooO0O0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    const-string v4, "AJXJL_DISX"

    invoke-static {v2, v1, v4, v3}, Lz2/y2;->OooO0O0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v4

    const-string v5, "screen_x_key"

    invoke-static {v4, v1, v5, v3}, Lz2/y2;->OooO0O0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v5

    const-string v6, "screen_y_key"

    invoke-static {v5, v1, v6, v3}, Lz2/y2;->OooO0O0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    invoke-static {v3, v1, v4, v0, v2}, Lz2/ii;->OooOO0O(ZIIII)V

    goto :goto_0

    :cond_0
    invoke-static {v3, v3, v3, v3, v3}, Lz2/ii;->OooOO0O(ZIIII)V

    :cond_1
    :goto_0
    return-void
.end method
