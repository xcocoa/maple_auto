.class public synthetic Lcom/octopus/ad/internal/video/a$1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/internal/video/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    invoke-static {}, Lcom/octopus/ad/internal/video/a$a;->values()[Lcom/octopus/ad/internal/video/a$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/octopus/ad/internal/video/a$1;->b:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/octopus/ad/internal/video/a$a;->a:Lcom/octopus/ad/internal/video/a$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/octopus/ad/internal/video/a$1;->b:[I

    sget-object v3, Lcom/octopus/ad/internal/video/a$a;->b:Lcom/octopus/ad/internal/video/a$a;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/octopus/ad/internal/video/a$1;->b:[I

    sget-object v4, Lcom/octopus/ad/internal/video/a$a;->c:Lcom/octopus/ad/internal/video/a$a;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/octopus/ad/internal/video/a$1;->b:[I

    sget-object v5, Lcom/octopus/ad/internal/video/a$a;->d:Lcom/octopus/ad/internal/video/a$a;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/octopus/ad/internal/video/a$1;->b:[I

    sget-object v6, Lcom/octopus/ad/internal/video/a$a;->e:Lcom/octopus/ad/internal/video/a$a;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lcom/octopus/ad/internal/video/a$1;->b:[I

    sget-object v7, Lcom/octopus/ad/internal/video/a$a;->f:Lcom/octopus/ad/internal/video/a$a;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v6, 0x7

    :try_start_6
    sget-object v7, Lcom/octopus/ad/internal/video/a$1;->b:[I

    sget-object v8, Lcom/octopus/ad/internal/video/a$a;->g:Lcom/octopus/ad/internal/video/a$a;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/16 v7, 0x8

    :try_start_7
    sget-object v8, Lcom/octopus/ad/internal/video/a$1;->b:[I

    sget-object v9, Lcom/octopus/ad/internal/video/a$a;->h:Lcom/octopus/ad/internal/video/a$a;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/16 v8, 0x9

    :try_start_8
    sget-object v9, Lcom/octopus/ad/internal/video/a$1;->b:[I

    sget-object v10, Lcom/octopus/ad/internal/video/a$a;->i:Lcom/octopus/ad/internal/video/a$a;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    invoke-static {}, Lcom/octopus/ad/internal/video/a$b;->values()[Lcom/octopus/ad/internal/video/a$b;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/octopus/ad/internal/video/a$1;->a:[I

    :try_start_9
    sget-object v10, Lcom/octopus/ad/internal/video/a$b;->a:Lcom/octopus/ad/internal/video/a$b;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v1, Lcom/octopus/ad/internal/video/a$1;->a:[I

    sget-object v9, Lcom/octopus/ad/internal/video/a$b;->b:Lcom/octopus/ad/internal/video/a$b;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v0, v1, v9
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/octopus/ad/internal/video/a$1;->a:[I

    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->d:Lcom/octopus/ad/internal/video/a$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/octopus/ad/internal/video/a$1;->a:[I

    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->c:Lcom/octopus/ad/internal/video/a$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lcom/octopus/ad/internal/video/a$1;->a:[I

    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->e:Lcom/octopus/ad/internal/video/a$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lcom/octopus/ad/internal/video/a$1;->a:[I

    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->f:Lcom/octopus/ad/internal/video/a$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lcom/octopus/ad/internal/video/a$1;->a:[I

    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->g:Lcom/octopus/ad/internal/video/a$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v0, Lcom/octopus/ad/internal/video/a$1;->a:[I

    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->h:Lcom/octopus/ad/internal/video/a$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Lcom/octopus/ad/internal/video/a$1;->a:[I

    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->i:Lcom/octopus/ad/internal/video/a$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v0, Lcom/octopus/ad/internal/video/a$1;->a:[I

    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->j:Lcom/octopus/ad/internal/video/a$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v0, Lcom/octopus/ad/internal/video/a$1;->a:[I

    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->k:Lcom/octopus/ad/internal/video/a$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v0, Lcom/octopus/ad/internal/video/a$1;->a:[I

    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->l:Lcom/octopus/ad/internal/video/a$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v0, Lcom/octopus/ad/internal/video/a$1;->a:[I

    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->m:Lcom/octopus/ad/internal/video/a$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v0, Lcom/octopus/ad/internal/video/a$1;->a:[I

    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->n:Lcom/octopus/ad/internal/video/a$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v0, Lcom/octopus/ad/internal/video/a$1;->a:[I

    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->o:Lcom/octopus/ad/internal/video/a$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v0, Lcom/octopus/ad/internal/video/a$1;->a:[I

    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->p:Lcom/octopus/ad/internal/video/a$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v0, Lcom/octopus/ad/internal/video/a$1;->a:[I

    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->q:Lcom/octopus/ad/internal/video/a$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v0, Lcom/octopus/ad/internal/video/a$1;->a:[I

    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->r:Lcom/octopus/ad/internal/video/a$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v0, Lcom/octopus/ad/internal/video/a$1;->a:[I

    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->s:Lcom/octopus/ad/internal/video/a$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v0, Lcom/octopus/ad/internal/video/a$1;->a:[I

    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->t:Lcom/octopus/ad/internal/video/a$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v0, Lcom/octopus/ad/internal/video/a$1;->a:[I

    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->u:Lcom/octopus/ad/internal/video/a$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v0, Lcom/octopus/ad/internal/video/a$1;->a:[I

    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->v:Lcom/octopus/ad/internal/video/a$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v0, Lcom/octopus/ad/internal/video/a$1;->a:[I

    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->w:Lcom/octopus/ad/internal/video/a$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v0, Lcom/octopus/ad/internal/video/a$1;->a:[I

    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->x:Lcom/octopus/ad/internal/video/a$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v0, Lcom/octopus/ad/internal/video/a$1;->a:[I

    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->y:Lcom/octopus/ad/internal/video/a$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v0, Lcom/octopus/ad/internal/video/a$1;->a:[I

    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->z:Lcom/octopus/ad/internal/video/a$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    return-void
.end method
