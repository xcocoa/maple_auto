.class public synthetic Lcom/cyjh/common/view/ActionProcessButton$OooO00o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/common/view/ActionProcessButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic OooO00o:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/cyjh/common/view/ActionProcessButton$Mode;->values()[Lcom/cyjh/common/view/ActionProcessButton$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/cyjh/common/view/ActionProcessButton$OooO00o;->OooO00o:[I

    :try_start_0
    sget-object v1, Lcom/cyjh/common/view/ActionProcessButton$Mode;->ENDLESS:Lcom/cyjh/common/view/ActionProcessButton$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/cyjh/common/view/ActionProcessButton$OooO00o;->OooO00o:[I

    sget-object v1, Lcom/cyjh/common/view/ActionProcessButton$Mode;->PROGRESS:Lcom/cyjh/common/view/ActionProcessButton$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
